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
    
    public function insert($t_coverpage_path, $t_pdffile_path){
        $data = array(
                'Title' => $this->input->post('title') ,
                'type' => $this->input->post('type') ,
                'volume' => $this->input->post('vol_number'),
                'ISSN' => $this->input->post('issn'),
                'cover_page' => $t_coverpage_path,
                'journal_file' => $t_pdffile_path
                );
       
        $this->db->set('date_released', 'CURDATE()', FALSE); 
        $this->db->insert('journals', $data); 
    }
}

?>
