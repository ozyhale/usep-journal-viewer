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
class Users extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->site_name = $this->config->item('site_name');

        $this->load->library('session');

        $this->template_engine->assign('base_url', base_url());
        $this->template_engine->assign('site_url', site_url());
        $this->template_engine->assign('title', 'Users - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function index() {}

    public function _output() {
        if ($this->session->userdata('username') == '') {
            $this->template_engine->display('login.tpl');
        } else {
            $firstname = $this->session->userdata('firstname');
            $middlename = $this->session->userdata('middlename');
            $lastname = $this->session->userdata('lastname');

            $this->template_engine->assign('firstname', $firstname);
            $this->template_engine->assign('middlename', $middlename);
            $this->template_engine->assign('lastname', $lastname);
            $this->template_engine->assign('header', 'back_header.tpl');
            $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
            $this->template_engine->assign('content', 'back_users.tpl');
            $this->template_engine->assign('active_menu_item', 'Users');

            $this->template_engine->display('back.tpl');
        }
    }

}

?>
