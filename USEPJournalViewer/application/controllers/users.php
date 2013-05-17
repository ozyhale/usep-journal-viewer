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
        $this->load->model('user_model', '', TRUE);
        
        $this->site_name = $this->config->item('site_name');
        

        $this->load->library('session');
        $this->load->library('form_validation');

        $this->template_engine->assign('base_url', base_url());
        $this->template_engine->assign('site_url', site_url());
        $this->template_engine->assign('title', 'Users - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function index() {}
    
    public function delete($t_userID){
        $this->user_model->delete($t_userID);
    }
    
    public function settings(){ 
        $this->form_validation->set_rules('old_password', 'Old Password', 'min_length[7]');
        $this->form_validation->set_rules('new_password', 'New Password', 'min_length[7]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('firstname', 'First Name', 'required');
        $this->form_validation->set_rules('middle_initial', 'Middle Name', 'required');
        $this->form_validation->set_rules('lastname', 'Last Name', 'required');
        
        if ($this->form_validation->run()) {

            
            $user_pass = $this->user_model->get_userpass($this->session->userdata('id'));
            if($user_pass['password'] == $this->input->post('old_password')){
                $this->user_model->update($this->session->userdata('id'));
                $this->template_engine->set_alert('Successfully Updating accounts!', 'Success');
            }else{
                $this->template_engine->set_alert('old password was not found in your account!', 'Error');
            }
           ;
        } else {
            if (validation_errors() != "") {
                $this->template_engine->set_alert(validation_errors(), 'Error');
            }
        }
        
    }
    
    public function add() {   
        $this->form_validation->set_rules('username', 'Username', 'required|alpha_dash|min_length[7]|is_unique[users.username]');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[7]');
        $this->form_validation->set_rules('confpass', 'Confirm Password', 'required|min_length[7]|matches[password]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[users.email]');
        $this->form_validation->set_rules('firstname', 'First Name', 'required');
        $this->form_validation->set_rules('middle_initial', 'Middle Name', 'required');
        $this->form_validation->set_rules('lastname', 'Last Name', 'required');

        if ($this->form_validation->run()) {
            
            $this->user_model->add_user();
            
            $this->template_engine->set_alert('Added Successfully!', 'Success');
        } else {
            if (validation_errors() != "") {
                $this->template_engine->set_alert(validation_errors(), 'Error');
            }
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
            $query          = $this->user_model->query_users();

            $this->template_engine->assign('firstname', $firstname);
            $this->template_engine->assign('middlename', $middlename);
            $this->template_engine->assign('lastname', $lastname);
            $this->template_engine->assign('email', $email);
            $this->template_engine->assign('account_type', $account_type);
            $this->template_engine->assign('header', 'back_header.tpl');
            $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
            $this->template_engine->assign('content', 'back_users.tpl');
            $this->template_engine->assign('active_menu_item', 'Users');
            $this->template_engine->assign('name', $query);
//            $this->template_engine->assign('email', $this->user_model->query_users());
            //$this->user_model->
            //$query = $this->user_model->query_users();
//            var_dump($query[0]['email']);
//             var_dump($query[1]['email']);
            //print_r($query);
            
            $this->template_engine->display('back.tpl');
        }
    }

}

?>
