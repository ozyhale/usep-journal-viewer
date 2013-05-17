<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Journal_model
 *
 * @author ronversa09
 */
class Journal_model extends CI_Model{
    //put your code here
    public function __construct() {
        parent::__construct();
    }
    
    public function query_journals(){
        $query = $this->db->query("select * from journals");
        
        return $query->result_array();
    }
    
    public function delete($t_journalID){
        $this->db->delete('journals', array('id' => $t_journalID)); 
    }
}

?>
