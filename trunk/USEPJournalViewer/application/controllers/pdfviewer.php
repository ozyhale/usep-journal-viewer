<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of pdfviewer
 *
 * @author iclab
 */
class pdfviewer extends CI_Controller{  
    public function __construct() {
        parent::__construct();
        
        $this->load->model('Journal_model', '', TRUE);
        $this->load->library('session');
        $this->template_engine->assign('title', 'Journals - PDFviewer');
        
        
        //var_dump($this->session->userdata('deptID'));
        //$this->full_length  = $this->Journal_model->get_journals('Full Length');
        //$this->conpendium   = $this->Journal_model->get_journals('Conpendum');
    }
    
    public function index() {}
    
    public function view_list($t_type, $_deptID){
        $t_type = str_replace('-', ' ', $t_type);
        $query_type = $this->Journal_model->get_journals($_deptID, $t_type);
        $this->template_engine->assign('Type', $t_type);
        $this->template_engine->assign('list_journal', $query_type);
        $this->template_engine->assign('pre_viewtables', 'have_value');  
        $this->template_engine->assign('_deptID', $_deptID); 
        $this->template_engine->assign('_deptNAME', $this->getDeptName($_deptID)); 
    }
    
    public function view_pdf($t_journalID, $_deptID){
        $query_journal = $this->Journal_model->get_journals_info($t_journalID);
        $this->template_engine->assign('journal_title', $query_journal[0]['Title']); 
        $this->template_engine->assign('url_pdf', $query_journal[0]['journal_file']); 
        $this->template_engine->assign('_deptID', $_deptID); 
        $this->template_engine->assign('_deptNAME', $this->getDeptName($_deptID)); 
    }
    
    public function _output() { 
        $this->template_engine->display('pdfviewer.tpl');
    }
    
    private function getDeptName($t_deptID){
        $array_temp = array(
            '1' => 'Institute of Computing',
            '2' => 'College of Arts and Sciences',
            '3' => 'College of Governance Business and Economics',
            '4' => 'School of Applied Economics',
            '5' => 'College of Engineering',
            '6' => 'College of Technology',
            '7' => 'College of Education'
        );
        
        return $array_temp[$t_deptID];
    }
}

?>
