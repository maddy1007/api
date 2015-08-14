<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('AppController', 'Controller');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class ExcelsController extends AppController {

/**
 *
 * @var array
 */
	public $uses = array('Excel');
/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator','RequestHandler');

/**
 * Returns upload result
 *
 * @return void
 * @throws NotFoundException When the view file could not be found
 *	or MissingViewException in debug mode.
 */
	public function upload_result($id=null) {
		$result = $this->Excel->read(null,$id);
		$this->set(array(
		    'result' => $result,
		    '_serialize' => array('result')
		));
	}

	public function index() {
		$this->Excel->recursive = 0;
		if(!empty($_GET['named']))
			$this->request->params = $_GET;		
		$Excel = $this->Paginator->paginate();
		$this->set(array(
		    'Excel' => $Excel,
		    'params' => $this->params,
		    '_serialize' => array('Excel','params')
		));
	}
}
