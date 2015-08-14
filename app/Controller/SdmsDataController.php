<?php
App::uses('AppController', 'Controller');


/**
 * SdmsData Controller
 *
 * @property SdmsData $SdmsData
 * @property PaginatorComponent $Paginator
 */
class SdmsDataController extends AppController {

/**
 * Models
 *
 * @var array
 */
	public $uses = array('SdmsData','State','Excel','EducationLevel','District','Sector','Skill');
/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator','RequestHandler');

	
	public function index() {
		$this->SdmsData->recursive = 0;
		if(!empty($_GET['named']))
			$this->request->params = $_GET;		
		$SdmsData = $this->Paginator->paginate();
		$this->set(array(
		    'SdmsData' => $SdmsData,
		    'params' => $this->params,
		    '_serialize' => array('SdmsData','params')
		));
	}
		
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$SdmsData = $this->SdmsData->read(null,$id);
		$this->set(array(
		    'SdmsData' => $SdmsData,
		    '_serialize' => array('SdmsData')
		));
	}

	public function add() {
		if ($this->request->is('post')) {
			$result = $this->checkSdmsValidations($this->request->data['SdmsData']);
			if($result[0]==1){
				$data['SdmsData'] = $result[2];
				$this->SdmsData->create();
				if ($this->SdmsData->save($data)) {
					$message['status']="SDMS Data Added Successfully";
				} else {
					$message['status']="Some Error Occured.";
				}
			} else {
				$message['status']=$result[1];
			}
		}
		else {
			$message['status']='No Data found';
		}
		$this->set(array(
		    'message' => $message,
		    '_serialize' => array('message')
		));		
		
	}

	function checkSdmsValidations($data){
		$flag = 1;
		$msg='';
		$yesNo = array('Y','N');
		$gender = array('M','F');
		$mandatory = array('candidate_id'=>'Candidate Id', 'account_name'=>'Account Name/Name of Training Partner', 'candidate_name' => 'Candidate Name', 'gender' => 'Gender', 'dob' => 'Date of Birth', 'contact_no' => 'Contact Number', 'education_level' => 'Education Level', 'candidate_state_id' => 'Candidate State', 'candidate_district_id' => 'Candidate District', 'sector_id' => 'Sector', 'skill_flag1' => 'Skill Flag 1', 'centre_state_id' => 'Centre State', 'centre_district_id' => 'Centre District');
		$numeric = array('exp_year' => 'Experience Years', 'exp_month' => 'Experience Month', 'contact_no' => 'Contact Number', 'nsqf_level' => 'NSQF Level', 'dummy_field1' => 'Dummy Field 1','dummy_field2' => 'Dummy Field 2');
		foreach($data as $key=>$val){
			if(array_key_exists($key,$mandatory) && empty($val)){
				$msg = 'Mandatory Data Missing: '.$mandatory[$key];
				$flag = 0;
				return array($flag,$msg,$data);
			}  else if(array_key_exists($key,$numeric) && !preg_match("/^[0-9]*$/",$val)){
				$msg = 'Only Numeric data allowed for '.$numeric[$key];
				$flag = 0;
				return array($flag,$msg,$data);
			}
		}
		if(!empty($data['certified']) && !in_array($data['certified'],$yesNo)){
			$msg = 'Invalid Value for Certified Column only Yes, No or Blank allowed.';
			$flag = 0;
		} else if(!in_array($data['gender'],$gender)){
			$msg = 'Invalid Value for Gender Column only M or F allowed.';
			$flag = 0;
		} else if(empty(strtotime($data['dob']))){
			$msg = 'Incorrect Date Format for Date of Birth';
			$flag = 0;
		} else if(strlen($data['contact_no'])>10 || strlen($data['contact_no'])<10){
			$msg = 'Contact Number Length Should be 10 digits.';
			$flag = 0;
		} else {
			$candidateIdCheck = $this->SdmsData->find('first',array(
							'conditions'=>array('candidate_id'=>$data['candidate_id'])
						));
			if(!empty($candidateIdCheck)){
				$msg = 'Duplicate Candidate ID';
				$flag = 0;
			} else {
				$data['dob'] = date('Y-m-d',strtotime($data['dob']));
				if($data['exp_month']>11){
					$temp_year = floor($data['exp_month']/12);
					$data['exp_year'] += $temp_year;
					$data['exp_month'] = $data['exp_month'] - ($temp_year*12);
				}
				for($i=1;$i<4;$i++){
					$skill_chk = $this->Skill->find('first',array('conditions'=>array('sector_id'=>$sectorId,'skill_name'=>$data['skill_flag'.$i])));
					if(!empty($data['skill_flag'.$i]) && !empty($skill_chk)){
						$data['skill_flag'.$i] = $skill_chk['Skill']['id']; 
					} else if(!empty($data['skill_flag'.$i])) {
						$this->Skill->create();
						$this->Skill->save(
							array( 'Skill' => array(
								'sector_id' => $sectorId,
								'skill_name' => $data['skill_flag'.$i]
							))
						);
						$skill_id=$this->Skill->getLastInsertID();
						$data['skill_flag'.$i] = $skill_id;
					}
				}
				if($data['skill_flag1']==$data['skill_flag2'])
					$data['skill_flag2'] = '';
				if($data['skill_flag1']==$data['skill_flag3'])
					$data['skill_flag3'] = '';
				if($data['skill_flag2']==$data['skill_flag3'])
					$data['skill_flag3'] = '';
			}
		}
		return array($flag,$msg,$data);
	}

}
