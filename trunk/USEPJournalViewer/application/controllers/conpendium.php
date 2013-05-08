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
class Conpendium extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->site_name = $this->config->item('site_name');

        $this->template_engine->assign('title', 'Conpendium Journals - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function departments($dept_initials) {
        
    }
    
    public function index(){
        
    }

    public function _output() {
        
        $this->template_engine->assign('header', 'front_header.tpl');
        $this->template_engine->assign('content', 'front_conpendium.tpl');
        $this->template_engine->assign('active_menu_item', 'Full');
        
        $this->template_engine->display('front.tpl');
    }

}

?>
