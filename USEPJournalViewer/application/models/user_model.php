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

    public function get_id($username, $password) {

        $query = $this->db->get_where('users', array('username' => $username, 'password' => $password));

        if ($query->num_rows() == 1) {
            $row = $query->row();

            return $row->id;
        }else{
            return null;
        }
    }

}

?>
