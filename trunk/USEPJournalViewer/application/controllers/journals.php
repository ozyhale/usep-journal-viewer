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
class Journals extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Journal_model', '', TRUE);
        $this->site_name = $this->config->item('site_name');

        $this->load->library('session');
        
        $this->template_engine->assign('title', 'Journals - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function index() {}
    
    public function delete($t_journalID){
        $this->Journal_model->delete($t_journalID);
    }
    

    public function _output() {
        if ($this->session->userdata('username') == '') {
            $this->template_engine->display('login.tpl');
        } else {
            $firstname = $this->session->userdata('firstname');
            $middlename = $this->session->userdata('middle_initial');
            $lastname = $this->session->userdata('lastname');
            $email          = $this->session->userdata('email');
            $account_type   = $this->session->userdata('account_type');
            $query          = $this->Journal_model->query_journals();
            
            $this->template_engine->assign('firstname', $firstname);
            $this->template_engine->assign('middlename', $middlename);
            $this->template_engine->assign('lastname', $lastname);
            $this->template_engine->assign('email', $email);
            $this->template_engine->assign('account_type', $account_type);
            $this->template_engine->assign('header', 'back_header.tpl');
            $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
            $this->template_engine->assign('content', 'back_journals.tpl');
            $this->template_engine->assign('active_menu_item', 'Journals');
            $this->template_engine->assign('journals', $query);
            
            
            

            $this->template_engine->display('back.tpl');
        }
    }

}

?>
