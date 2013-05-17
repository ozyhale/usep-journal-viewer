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
