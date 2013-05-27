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
        
        
        var_dump($this->session->userdata('deptID'));
        //$this->full_length  = $this->Journal_model->get_journals('Full Length');
        //$this->conpendium   = $this->Journal_model->get_journals('Conpendum');
    }
    
    public function index() {}
    
    public function view_list($t_type){
        $t_type = str_replace('-', ' ', $t_type);
        $query_type = $this->Journal_model->get_journals(1, $t_type);
        $this->template_engine->assign('Type', $t_type);
        $this->template_engine->assign('list_journal', $query_type);
        $this->template_engine->assign('pre_viewtables', 'have_value');    
    }
    
    public function view_pdf($t_journalID){
        $query_journal = $this->Journal_model->query_journals_info($t_journalID, 1);   

        $this->template_engine->assign('journal_title', $query_journal[0]['Title']); 
        $this->template_engine->assign('url_pdf', $query_journal[0]['journal_file']); 
        
    }
    
    public function _output() {
        $this->template_engine->display('pdfviewer.tpl');
    }
}

?>
