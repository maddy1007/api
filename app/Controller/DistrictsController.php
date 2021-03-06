<?php
App::uses('AppController', 'Controller');

/**
 * Districts Controller
 *
 * @property District $District
 * @property PaginatorComponent $Paginator
 */
class DistrictsController extends AppController {

/**
 * Models
 *
 * @var array
 */
	public $uses = array('District','State');
/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator','RequestHandler');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->District->recursive = 0;
		if(!empty($_GET['named']))
			$this->request->params = $_GET;		
		$districts = $this->Paginator->paginate();
		$this->set(array(
		    'District' => $districts,
		    'params' => $this->params,
		    '_serialize' => array('District','params')
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
		$district = $this->District->read(null,$id);
		$this->set(array(
		    'District' => $district,
		    '_serialize' => array('District')
		));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$chk = $this->District->find('first',array('conditions'=>array('district_name'=>$this->request->data['District']['district_name'],'state_id'=>$this->request->data['District']['state_id'])));
			if(empty($chk)){
				$this->District->create();
				if ($this->District->save($this->request->data)) {
					$message['status']="District Added Successfully";
				} else {
					$message['status']="Some Error Occured.";
				}
			}	
			else {
				$message['status']='Duplicate Entry for District';
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



/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->District->id = $id;
		if (!$this->District->exists()) {
			throw new NotFoundException(__('Invalid District'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->District->delete()) {
			$message['status'] = "District Deleted Successfully";
		} else {
			$message['status'] = "Some Error Occured.";
		}
		$this->set(array(
		    'message' => $message,
		    '_serialize' => array('message')
		));
	}
	
	public function getDistrictList($stateId){
		$District = $this->District->find('list',array('fields'=>array('id','district_name'),'conditions'=>array('state_id'=>$stateId)));
		$this->set(array(
		    'District' => $District,
		    '_serialize' => array('District')
		));
	}

}
