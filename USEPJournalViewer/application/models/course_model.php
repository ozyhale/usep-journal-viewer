<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of course_model
 *
 * @author ronversa09
 */
class course_model extends CI_Model{
    public function __construct() {
        parent::__construct();
    }
    
    public function get_courseByDept($t_deptID){
        $query = $this->db->get_where('courses', array('dept_id' => $t_deptID));
        
        return $query->result_array();
    }
    
    public function get_courseName($t_courseID){
        $query = $this->db->get_where('courses', array('course_id' => $t_courseID));
        
        return $query->result_array();
    }
}

?>
