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
        
        //$this->full_length  = $this->Journal_model->get_journals('Full Length');
        //$this->conpendium   = $this->Journal_model->get_journals('Conpendum');
    }
    
    public function index() {}
    
    public function view_list($t_type){
        $t_type = str_replace('-', ' ', $t_type);
        $query_type = $this->Journal_model->get_journals($t_type);
        //var_dump($query_type);
        $this->template_engine->assign('Type', $t_type);
        $this->template_engine->assign('list_journal', $query_type);
        $this->template_engine->assign('pre_viewtables', 'have_value');    
    }
    
    public function _output() {
        $this->template_engine->display('pdfviewer.tpl');
    }
}

?>
