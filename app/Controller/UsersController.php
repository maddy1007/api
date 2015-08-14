<?php
App::uses('AppController', 'Controller');
App::uses('Security', 'Utility');
class UsersController extends AppController {
	public $helpers = array('Html', 'Form');
    	public $components = array('RequestHandler');
 	public $uses = array('User');

	public function beforeFilter() {
		parent::beforeFilter();
       }

	public function index() {
		$users = $this->User->find('all');
		$this->set(array(
		    'User' => $users,
		    '_serialize' => array('User')
		));
       }
	
	//Login function for api
	// 0 => Invalid Username or Password
	// 1 => No Data Found
	// 2 => User Inactive
	// 200 => Login Successful, returns username and token	
	
       function login(){	
		$message = array();
		//$message = $this->request->data;
		if ($this->request->is('post')) {
			$user = $this->User->find('first',array(
					'conditions'=>array(
						'OR' => array('email' => $this->request->data['User']['username'],
							      'mobile' => $this->request->data['User']['username']),
						'password' => Security::hash(trim($this->request->data['User']['password']), null, true)
				)));
		    	if(!empty($user)){
				if($user['User']['status']==1){
					$length = 78;
					$token = bin2hex(openssl_random_pseudo_bytes($length));
					$this->User->updateAll(array('token'=>'"'.$token.'"'),array('username'=>$user['User']['username']));
					$user['User']['token'] = $token; 					
					$message['token'] = $token;
					$message['status'] = 200;
					$message['User'] = $user['User'];	
									
				}
				else
					$message['status'] = 'User Inactive';
			}
			else 
				$message['status'] = 'Invalid Username or Password'; 
		}
		else
			$message['status'] = 'No Data Found';
		$this->set(array(
		    'message' => $message,
		    '_serialize' => array('message')
		));
	}
	
}
