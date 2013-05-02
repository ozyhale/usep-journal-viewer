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

        $this->config->load('my_config');

        $this->site_name = $this->config->item('site_name');

        $this->load->library('template_engine');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->helper('form');

        $this->template_engine->assign('base_url', base_url());
        $this->template_engine->assign('site_url', site_url());
        $this->template_engine->assign('title', 'Administrator - ' . $this->site_name);
    }

    public function index() {}

    public function _output() {
        if ($this->session->userdata('username') == '') {
            $this->template_engine->display('login.tpl');
        } else {
            $username = $this->session->userdata('username');

            $this->template_engine->assign('username', $username);
            $this->template_engine->assign('header', 'back_header.tpl');
            $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
            $this->template_engine->assign('content', 'back_home.tpl');
            $this->template_engine->assign('footer', 'footer.tpl');

            $this->template_engine->display('back.tpl');
        }
    }

}

?>
