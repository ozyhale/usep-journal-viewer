<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Administrator extends CI_Controller {

    var $indexphp = '';
    
    function __construct() {
        parent::__construct();

        $this->config->load('my_config');

        $this->indexphp = $this->config->item('indexphp');
        
        $params['path'] = $this->config->item('path');

        $this->load->library('template_engine', $params);
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->helper('form');

        $this->template_engine->assign('base_url', base_url());
        $this->template_engine->assign('title', 'Administrator');

        $this->form_validation->set_rules('username', 'Username', 'required|alpha_dash');
        $this->form_validation->set_rules('password', 'Password', 'required');
    }

    public function index() {

        if ($this->session->userdata('username') == '') {
            $this->_login_page();
        } else {
            $this->_back_page();
        }
    }

    private function _back_page() {

        $username = $this->session->userdata('username');

        $this->template_engine->assign('username', $username);
        $this->template_engine->assign('header', 'back_header.tpl');
        $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
        $this->template_engine->assign('content', 'back_content.tpl');
        $this->template_engine->assign('footer', 'footer.tpl');

        $this->template_engine->display('back.tpl');
    }

    private function _login_page() {

        if ($this->form_validation->run()) {

            $this->load->model('user_model', '', true);

            $username = $this->input->post('username');
            $password = $this->input->post('password');

            $id = $this->user_model->get_id($username, $password);
            
            if($id != null){
                $sessions['id'] = $id;
                $sessions['username'] = $username;
                
                $this->session->set_userdata($sessions);
                
                header("Location: " . base_url($this->indexphp .'/administrator'));
            }else{
                $this->template_engine->set_alert('Wrong Password/Username!', 'Error');
                $this->template_engine->display('login.tpl');
            }
            
        } else {
            if (validation_errors() != "") {
                $this->template_engine->set_alert(validation_errors(), 'Error');
            }

            $this->template_engine->display('login.tpl');
        }
    }

    public function logout() {

        if ($this->session->userdata('id') != '') {
            $this->session->unset_userdata('id');
            $this->session->unset_userdata('username');
            $this->template_engine->set_alert('Succesfully Logout!', 'Success');
        }
        $this->_login_page();
    }

}

?>
