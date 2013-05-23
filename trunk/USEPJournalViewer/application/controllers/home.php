<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Journals
 *
 * @author ic
 */
class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->site_name = $this->config->item('site_name');

        $this->template_engine->assign('title', 'Home - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function index() {}

    public function _output() {
        $this->template_engine->assign('header', 'front_header.tpl');
        $this->template_engine->assign('content', 'front_home.tpl');
        $this->template_engine->assign('active_menu_item', 'Home');
        $this->template_engine->display('front.tpl');
    }
    
    

}

?>
