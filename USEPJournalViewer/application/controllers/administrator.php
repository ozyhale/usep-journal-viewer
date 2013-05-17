<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Administrator extends CI_Controller {

    var $indexphp = '';
    var $site_name = '';

    function __construct() {
        parent::__construct();

        $this->config->set_item('index_page', 'index.php/');
        
        $this->site_name = $this->config->item('site_name');

        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->helper('form');

        $this->template_engine->assign('base_url', base_url());
        $this->template_engine->assign('site_url', site_url());
        $this->template_engine->assign('title', 'Administrator - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function index() {
        
    }

    public function login() {

        $this->form_validation->set_rules('username', 'Username', 'required|alpha_dash');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run()) {

            $this->load->model('user_model', '', true);

            $username = $this->input->post('username');
            $password = $this->input->post('password');

            $user_info = $this->user_model->get_user_info($username, $password);
            
            if ($user_info != null) {

                unset($user_info['password']);

                $this->session->set_userdata($user_info);
                //var_dump($user_info);
                header("Location: " . site_url('administrator'));
                exit;
            } else {
                $this->template_engine->set_alert('Wrong Password or Username!', 'Error');
            }
        } else {
            if (validation_errors() != "") {
                $this->template_engine->set_alert(validation_errors(), 'Error');
            }
        }
    }

    public function logout() {

        if ($this->session->userdata('id') != '') {
            $this->session->sess_destroy();
            $this->template_engine->set_alert('Succesfully Logout!', 'Success');
        }
    }

    public function _output() {
        if ($this->session->userdata('username') == '') {
            $this->template_engine->display('login.tpl');
        } else {
            $firstname      = $this->session->userdata('firstname');
            $middlename     = $this->session->userdata('middle_initial');
            $lastname       = $this->session->userdata('lastname');
            $email          = $this->session->userdata('email');
            $account_type   = $this->session->userdata('account_type');
            
            $this->template_engine->assign('firstname', $firstname);
            $this->template_engine->assign('middlename', $middlename);
            $this->template_engine->assign('lastname', $lastname);
            $this->template_engine->assign('email', $email);
            $this->template_engine->assign('account_type', $account_type);
            
            $this->template_engine->assign('header', 'back_header.tpl');
            $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
            $this->template_engine->assign('content', 'back_home.tpl');
            $this->template_engine->assign('active_menu_item', 'Home');

            $this->template_engine->display('back.tpl');
        }
    }

}

?>
