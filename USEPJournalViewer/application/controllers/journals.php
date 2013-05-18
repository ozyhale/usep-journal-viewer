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
        //var_dump(base_url());
        $this->load->library('session');
        
        $this->template_engine->assign('title', 'Journals - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
    }

    public function index() {}
    
    private function upload($t_params, $t_title){  var_dump($t_params); 
        $this->load->library('upload_class', $t_params);
        $types = array("image/jpeg", "image/png", "image/gif", "image/pjpeg");
        
//        if (!$this->upload_class->uploaded) {
//            $this->_upload_error("Failed to upload the file!");
//            return;
//        }
        
//        $this->upload_class->file_overwrite         = true;
//        $this->upload_class->file_new_name_body     = $t_title; 
//        
//        if($t_params['type'] == "application/pdf"){
//            $this->upload_class->process('application/tmp/pdf_file/');
//        }else if(in_array($t_params["type"], $types)){
//            $this->upload_class->process('application/tmp/cover_page/');
//        }else{
//            return false;
//        }
//        
//        $this->upload_class->clean();

        
            
    }
    
    
    public function delete($t_journalID){
        $this->Journal_model->delete($t_journalID);
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
            
            $pdffile_path = 'application/tmp/pdf_file/' .$this->input->post('title') . "_" .$this->input->post('vol_number') .".pdf"; 
            $this->load->library('upload_class', $_FILES['pdf_file'], 'upload_pdf_file');
            $this->upload_pdf_file->file_overwrite          = true;
            $this->upload_pdf_file->allowed                 = array('application/pdf');
            $this->upload_pdf_file->file_new_name_body      = $this->input->post('title') . "_" .$this->input->post('vol_number'); 
            $this->upload_pdf_file->process('application/tmp/pdf_file/');

            if(!$this->upload_pdf_file->processed){
                $this->template_engine->set_alert($this->upload_pdf_file->error ." pdf!..", 'Error');                
                return;
            }
            $this->upload_pdf_file->clean();
        
        
            $coverpage_path = 'application/tmp/cover_page/' .$this->input->post('title') . "_" .$this->input->post('vol_number'); 
            $this->load->library('upload_class', $_FILES['cover_img'], 'upload_img');
            $this->upload_img->file_overwrite               = true;
            //$this->upload_img->image_convert                = 'png';
            $this->upload_img->allowed                      = array("image/jpeg", "image/png", "image/gif", "image/pjpeg");
            $this->upload_img->file_new_name_body           = $this->input->post('title') . "_" .$this->input->post('vol_number'); 
            $this->upload_img->process('application/tmp/cover_page/');
            
            
            if(!$this->upload_img->processed){
                $this->template_engine->set_alert($this->upload_img->error ." image!..", 'Error');
                return;
            }
            $this->upload_img->clean();
            
            $this->Journal_model->insert($coverpage_path, $pdffile_path);
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
            $query          = $this->Journal_model->query_journals();
            
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
            
            
            

            $this->template_engine->display('back.tpl');
        }
    }

}

?>
