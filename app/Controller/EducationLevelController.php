<?php
App::uses('AppController', 'Controller');

/**
 * EducationLevel Controller
 *
 * @property EducationLevel $EducationLevel
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class EducationLevelController extends AppController {
/**
 * Models
 *
 * @var array
 */
	public $uses = array('EducationLevel');
/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator','RequestHandler');



	public function getEducationLevelList(){
		$EducationLevel = $this->EducationLevel->find('list',array('fields'=>array('id','education_level_name')));
		$this->set(array(
		    'EducationLevel' => $EducationLevel,
		    '_serialize' => array('EducationLevel')
		));
	}

}
