<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Journals
 *
 * @author ic
 */
class Journals extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Journal_model', '', TRUE);
        $this->load->library('session');
        $this->load->library('form_validation');
        
        $this->site_name = $this->config->item('site_name');
        
        $this->template_engine->assign('title', 'Journals - ' . $this->site_name);
        $this->template_engine->assign('back_footer', 'b_footer.tpl');
    }

    public function index() {}
    
    
    public function edit($t_journalID){
        $query_journal  = $this->Journal_model->query_journals_info($t_journalID, $this->session->userdata('dept_id'));  
        //var_dump(file_exists($query_journal[0]['journal_file']));
        //print_r($query_journal[0]['journal_file']);
        
        
        if(isset($_POST['update'])){
            $this->form_validation->set_rules('title', 'Title', 'required|min_length[4]');
            $this->form_validation->set_rules('type', 'Type', 'required|min_length[4]');
            $this->form_validation->set_rules('vol_number', 'Volume Number', 'required');
            $this->form_validation->set_rules('issn', 'ISSN', 'required|min_length[4]');
            //var_dump($_FILES['pdf_file']);
            
            if ($this->form_validation->run()) {
                $pdffile_path       = "";
                $coverpage_path     = "";
                do{
                    $name = rand(1000000, 9999999) . rand(1000000, 9999999);
                }while(file_exists($name));
                
                
                if($_FILES['pdf_file']['name'] != ""){
                    $pdffile_path = 'application/tmp/pdf_file/' .$name .".pdf"; 
                    $this->load->library('upload_class', $_FILES['pdf_file'], 'upload_pdf_file');
                    $this->upload_pdf_file->file_overwrite          = true;
                    $this->upload_pdf_file->allowed                 = array('application/pdf');
                    $this->upload_pdf_file->file_new_name_body      = $name; 
                    $this->upload_pdf_file->process('application/tmp/pdf_file/');

                    if(!$this->upload_pdf_file->processed){
                        $this->template_engine->set_alert($this->upload_pdf_file->error ." pdf!..", 'Error');                
                        return;
                    }
                    
                    if(file_exists($query_journal[0]['journal_file'])){
                        unlink($query_journal[0]['journal_file']);
                    }

                    $this->upload_pdf_file->clean();
                }
                
                if($_FILES['cover_img']['name'] != ""){ 
                    $coverpage_path = 'application/tmp/cover_page/' .$name ."png"; 
                    $this->load->library('upload_class', $_FILES['cover_img'], 'upload_img');
                    $this->upload_img->file_overwrite               = true;
                    $this->upload_img->image_convert                = 'png';
                    $this->upload_img->allowed                      = array("image/jpeg", "image/png", "image/gif", "image/pjpeg");
                    $this->upload_img->file_new_name_body           = $name; 
                    $this->upload_img->process('application/tmp/cover_page/');


                    if(!$this->upload_img->processed){
                        $this->template_engine->set_alert($this->upload_img->error ." image!..", 'Error');
                        return;
                    }
                    
                    if(file_exists($query_journal[0]['cover_page'])){
                        unlink($query_journal[0]['cover_page']);
                    }
                    
                    $this->upload_img->clean();
                }
                
                $this->Journal_model->update($t_journalID, $coverpage_path, $pdffile_path);
                $this->template_engine->set_alert('Successfully Updating a journal!', 'Success');
                
            }else{
                if (validation_errors() != "") {
                    $this->template_engine->set_alert(validation_errors(), 'Error');
                }
            }
            
        }else{
            $this->template_engine->assign('pre_editJournal', 'value');
            $this->template_engine->assign('pre_jtitle', $query_journal[0]['Title']);
            $this->template_engine->assign('pre_jtype', $query_journal[0]['type']);
            $this->template_engine->assign('pre_jvolume', $query_journal[0]['volume']);
            $this->template_engine->assign('pre_jissn', $query_journal[0]['ISSN']);
        }
    }
    
    public function delete($t_journalID){
        $query_journal  = $this->Journal_model->query_journals_info($t_journalID, $this->session->userdata('dept_id'));  
        $this->Journal_model->delete($t_journalID);
        
        if(file_exists($query_journal[0]['cover_page'])){
            unlink($query_journal[0]['cover_page']);
        }
        
        if(file_exists($query_journal[0]['journal_file'])){
            unlink($query_journal[0]['journal_file']);
        }
        
        $this->template_engine->set_alert('Successfully Deleted and journal!', 'Success');
    }
    
    public function add(){
        $this->form_validation->set_rules('title', 'Title', 'required|min_length[4]');
        $this->form_validation->set_rules('type', 'Type', 'required|min_length[4]');
        $this->form_validation->set_rules('vol_number', 'Volume Number', 'required');
        $this->form_validation->set_rules('issn', 'ISSN', 'required|min_length[4]');
        //$this->form_validation->set_rules('cover_img', 'Cover Page', 'required|xss_clean');
        //$this->form_validation->set_rules('pdf_file', 'Journal File', 'required|xss_clean');
        
        //var_dump($_FILES['file']);
        
        if ($this->form_validation->run()) {
            
            do{
                $name = rand(1000000, 9999999) . rand(1000000, 9999999);
            }while(file_exists($name));
            
            $pdffile_path = 'application/tmp/pdf_file/' .$name .".pdf"; 
            $this->load->library('upload_class', $_FILES['pdf_file'], 'upload_pdf_file');
            $this->upload_pdf_file->file_overwrite          = true;
            $this->upload_pdf_file->allowed                 = array('application/pdf');
            $this->upload_pdf_file->file_new_name_body      = $name; 
            $this->upload_pdf_file->process('application/tmp/pdf_file/');

            if(!$this->upload_pdf_file->processed){
                $this->template_engine->set_alert($this->upload_pdf_file->error ." pdf!..", 'Error');                
                return;
            }
            $this->upload_pdf_file->clean();
        
        
            $coverpage_path = 'application/tmp/cover_page/' .$name .".png"; 
            $this->load->library('upload_class', $_FILES['cover_img'], 'upload_img');
            $this->upload_img->file_overwrite               = true;
            $this->upload_img->image_convert                = 'png';
            $this->upload_img->allowed                      = array("image/jpeg", "image/png", "image/gif", "image/pjpeg");
            $this->upload_img->file_new_name_body           = $name; 
            $this->upload_img->process('application/tmp/cover_page/');
            
            
            if(!$this->upload_img->processed){
                $this->template_engine->set_alert($this->upload_img->error ." image!..", 'Error');
                return;
            }
            $this->upload_img->clean();
            
            $this->Journal_model->insert($coverpage_path, $pdffile_path, $this->session->userdata('dept_id'));
            $this->template_engine->set_alert('Successfully Adding a journal!', 'Success');
            
        }else{
            if (validation_errors() != "") {
                $this->template_engine->set_alert(validation_errors(), 'Error');
            }
        }
    }
    

    public function _output() {
        if ($this->session->userdata('username') == '') {
            $this->template_engine->display('login.tpl');
        } else {
            $firstname = $this->session->userdata('firstname');
            $middlename = $this->session->userdata('middle_initial');
            $lastname = $this->session->userdata('lastname');
            $email          = $this->session->userdata('email');
            $account_type   = $this->session->userdata('account_type');
            $query          = $this->Journal_model->query_journals($this->session->userdata('dept_id'));
            
            $this->template_engine->assign('firstname', $firstname);
            $this->template_engine->assign('middlename', $middlename);
            $this->template_engine->assign('lastname', $lastname);
            $this->template_engine->assign('email', $email);
            $this->template_engine->assign('account_type', $account_type);
            $this->template_engine->assign('header', 'back_header.tpl');
            $this->template_engine->assign('sidebar', 'back_sidebar.tpl');
            $this->template_engine->assign('content', 'back_journals.tpl');
            $this->template_engine->assign('active_menu_item', 'Journals');
            $this->template_engine->assign('journals', $query);
            $this->template_engine->assign('dept_name', $this->getDeptname($this->session->userdata('dept_id')));
            
            
            

            $this->template_engine->display('back.tpl');
        }
    }

    
    public function getDeptname($t_deptID){
        $listodDept = array(
            '1' => 'Institute of Computing',
            '2' => 'College of Arts and Sciences',
            '3' => 'College of Governance Business and Economics',
            '4' => 'School of Applied Economics',
            '5' => 'College of Engineering',
            '6' => 'College of Technology',
            '7' => 'College of Education'
        );
        
        return $listodDept[$t_deptID];
    }
    
    
    /*------- Convert url into google.docs viewer.. ----------*/
    
    public function converURL($t_thisURL_array){
        $new_array = array();
        
        foreach ($t_thisURL_array as $value) {
            $temp_url = str_replace("/", "%2F", HOST. "/". $value);
            $temp_url = str_replace(":", "%3A", $temp_url);
            
            array_push($new_array, "http://docs.google.com/viewer?url=". $temp_url .".pdf&embedded=true");
        }
        
        
      
        
        
        return $new_array;
    }
}

?>
