<?php
App::uses('AppController', 'Controller');

/**
 * States Controller
 *
 * @property State $State
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class StatesController extends AppController {
/**
 * Models
 *
 * @var array
 */
	public $uses = array('State');
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
		$this->State->recursive = 0;
		if(!empty($_GET['named']))
			$this->request->params = $_GET;		
		$states = $this->Paginator->paginate();
		$this->set(array(
		    'State' => $states,
		    'params' => $this->params,
		    '_serialize' => array('State','params')
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
		$state = $this->State->read(null,$id);
		$this->set(array(
		    'State' => $state,
		    '_serialize' => array('State')
		));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$chk = $this->State->find('first',array('conditions'=>array('state_name'=>$this->request->data['State']['state_name'])));
			if(empty($chk)){
				$this->State->create();
				if ($this->State->save($this->request->data)) {
					if(empty($this->request->data['State']['id']))
						$message['status']="State Added Successfully";
					else
						$message['status']="State Updated Successfully";
				} else {
					$message['status']="Some Error Occured.";
				}			
			}
			else {
				$message['status']='Duplicate Entry for State Name';
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
		$this->State->id = $id;
		if (!$this->State->exists()) {
			throw new NotFoundException(__('Invalid State'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->State->delete()) {
			$message['status'] = "State Deleted Successfully";
		} else {
			$message['status'] = "Some Error Occured.";
		}
		$this->set(array(
		    'message' => $message,
		    '_serialize' => array('message')
		));
	}

	public function getStateList(){
		$states = $this->State->find('list',array('fields'=>array('id','state_name')));
		$this->set(array(
		    'States' => $states,
		    '_serialize' => array('States')
		));
	}

}
