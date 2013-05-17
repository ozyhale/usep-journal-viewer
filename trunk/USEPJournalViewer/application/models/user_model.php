<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User_model
 *
 * @author Ozy Admin
 */
class User_model extends CI_Model {    
    public function __construct() {
        parent::__construct();
    }

    public function get_user_info($username, $password) {

        $query = $this->db->get_where('users', array('username' => $username, 'password' => $password));

        if ($query->num_rows() == 1) {
            return $query->row_array();
        }else{
            return null;
        }
    }
    
    public function query_users(){
        $query = $this->db->query("SELECT id, lastname, firstname, middle_initial, `email` from users where `account_type` = 'admin'");
        
        return $query->result_array();
    }
    
    public function get_userpass($t_userID){
        $query = $this->db->get_where('users', array('id' => $t_userID));
        return $query->row_array();
    }
    
    public function update($t_userID){
        $data = $this->input->post('new_password') != "" ?
                array(  'password' => $this->input->post('new_password'),
                        'firstname' => $this->input->post('firstname'),
                        'middle_initial' => $this->input->post('middle_initial'),
                        'lastname' => $this->input->post('lastname'),
                        'email' => $this->input->post('email')
                ) :
                array('firstname' => $this->input->post('firstname'),
                        'middle_initial' => $this->input->post('middle_initial'),
                        'lastname' => $this->input->post('lastname'),
                        'email' => $this->input->post('email')
                );
        
        $this->db->where('id', $t_userID);
        $this->db->update('users', $data); 
        $this->session->set_userdata($data);
    }
    
    public function delete($t_userID){
        $this->db->delete('users', array('id' => $t_userID)); 
    }
    
    public function add_user(){

        $this->username = $this->input->post('username');
        $this->password = $this->input->post('password');
        $this->firstname = $this->input->post('firstname');
        $this->lastname = $this->input->post('lastname');
        $this->middle_initial = $this->input->post('middle_initial');
        $this->email = $this->input->post('email');

        $this->db->insert('users', $this);
    }

}

?>
