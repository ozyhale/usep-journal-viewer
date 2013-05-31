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
    
    public function query_journals($t_deptID){
        $query = $this->db->query("select * from journals where dept_id = '$t_deptID' order by `Title`");
        
        return $query->result_array();
    }
    
    public function query_journals_info($key, $t_deptID){
        $query = $this->db->query("select * from journals where id = '$key' and dept_id = '$t_deptID'");
        
        return $query->result_array();
    }
    
    public function get_journals($t_deptID, $t_type){
        $query = $this->db->get_where('journals', array('dept_id' => $t_deptID, 'type' => $t_type));
        
        return $query->result_array();
    } 
    
    public function delete($t_journalID){
        $this->db->delete('journals', array('id' => $t_journalID)); 
    }
    
    public function issnExist($t_issn){
        $query = $this->db->query("select * from journals where ISSN = '$t_issn'");
        
        return $query->num_rows() > 0;
    }
    
    public function titleExist($t_title){
        $query = $this->db->query("select * from journals where Title = '$t_title'");
        
        
        //print_r($query->num_rows() > 0);
        return $query->num_rows() > 0;
    }
    
    public function insert($t_coverpage_path, $t_pdffile_path, $t_deptID){
        $data = array(
                'dept_id' => $t_deptID,
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
    
    public function update($key, $t_cover_img, $t_pdf_file){
        $data = array(
                'Title' => $this->input->post('title') ,
                'type' => $this->input->post('type') ,
                'volume' => $this->input->post('vol_number'),
                'ISSN' => $this->input->post('issn'),
            );

        $this->db->where('id', $key);
        $this->db->update('journals', $data); 
        
        if($t_cover_img != ""){
            $query = $this->db->query("UPDATE  `usepjournalviewer`.`journals` SET  `cover_page` =  '$t_cover_img' WHERE  `journals`.`id` = '$key'");
        }
        
        if($t_pdf_file != ""){
            $query = $this->db->query("UPDATE  `usepjournalviewer`.`journals` SET  `journal_file` =  '$t_pdf_file' WHERE  `journals`.`id` = '$key'");
        }
        
    }
}

?>
