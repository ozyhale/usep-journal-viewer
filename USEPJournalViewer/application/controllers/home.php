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
class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Journal_model', '', TRUE);
        //$this->load->library('session');
        $this->site_name = $this->config->item('site_name');

        $this->template_engine->assign('title', 'Home - ' . $this->site_name);
        $this->template_engine->assign('footer', 'footer.tpl');
        $this->template_engine->assign('file_content', 'home.tpl');
        $this->template_engine->assign('set_navActive', '0');


//        if(!$this->session->userdata('journal_type') && !$this->session->userdata('deptID')){
//            $this->session->set_userdata('journal_type', 'Compendium');
//            $this->session->set_userdata('deptID', '1');  
//        } 

        $this->template_engine->assign('_deptID', '1');
        $this->template_engine->assign('_type', 'Compendium');
    }

    public function index() {
        
    }

    public function home() {
        $this->template_engine->assign('set_navActive', '0');
        $this->template_engine->assign('this_home', '1');
    }

    /*
      public function choose_dept($t_deptID){
      $this->session->set_userdata('deptID', $t_deptID);
      $type           = str_replace('-', ' ', $this->session->userdata('journal_type'));
      $query_journals = $this->Journal_model->get_journals($t_deptID, $type);

      $this->template_engine->assign('body_content', 'thumbnails_journals.tpl');
      $this->template_engine->assign('set_navActive', '2');
      $this->template_engine->assign('list_journal', $query_journals);
      $this->template_engine->assign('dept_name', $this->getDeptName($t_deptID));
      $this->template_engine->assign('journal_type', $type);
      $this->template_engine->assign('_deptID', $this->session->userdata('deptID'));
      }

      public function choose_journals($t_type){
      $this->session->set_userdata('journal_type', $t_type);
      $type           = str_replace('-', ' ', $t_type);
      $query_journals = $this->Journal_model->get_journals($this->session->userdata('deptID'), $type);

      $this->template_engine->assign('body_content', 'thumbnails_journals.tpl');
      $this->template_engine->assign('set_navActive', '3');
      $this->template_engine->assign('list_journal', $query_journals);
      $this->template_engine->assign('dept_name', $this->getDeptName($this->session->userdata('deptID')));
      $this->template_engine->assign('journal_type', $type);
      $this->template_engine->assign('_deptID', $this->session->userdata('deptID'));
      }
     */

    public function choose_journal_dept($t_deptID, $t_type, $_active, $page = 1) {
        //$this->session->set_userdata('deptID', $t_deptID);
        //$this->session->set_userdata('journal_type', $t_type);
        $type = str_replace('-', ' ', $t_type);
//        $query_journals = $this->Journal_model->get_journals($t_deptID, $type);
        //get journals
        $query_journals = $this->Journal_model->get_journals_query($t_deptID, $type, $page);

        $this->template_engine->assign('body_content', 'thumbnails_journals.tpl');
        //$this->template_engine->assign('set_navActive', '3');
        $this->template_engine->assign('list_journal', $query_journals->result_array());
        $this->template_engine->assign('dept_name', $this->getDeptName($t_deptID));
        $this->template_engine->assign('journal_type', $type);
        $this->template_engine->assign('_deptID', $t_deptID);
        $this->template_engine->assign('_type', $t_type);

        if ($_active == 1) {
            $this->template_engine->assign('set_navActive', '1');
        }
        if ($_active == 2) {
            $this->template_engine->assign('set_navActive', '2');
        }

        //pagination
        $this->load->library('pagination');

        $config['base_url'] = site_url('home/choose_journal_dept/' . $t_deptID . '/' . $t_type . '/' . $_active . '/');
        $config['use_page_numbers'] = TRUE;
        $config['total_rows'] = $this->Journal_model->get_num_journals($t_deptID, $type);
        $config['per_page'] = 6;
        $config['uri_segment'] = 6;

        //pagination UI
        //<div><ul>[links]</ul></div>
        $config['full_tag_open'] = '<div class="pagination f_page"><ul>';
        $config['full_tag_close'] = '</div></ul>';

        //<li>[<a>link</a>]</li>
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

        //<li class="active">[<a>link</a>]</li>
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';

        //<li>[<a>Next</a>]</li>
        $config['next_link'] = 'Next';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';

        //<li>[<a>Prev</a>]</li>
        $config['prev_link'] = 'Prev';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';

        //<li>[<a>First Page</a>]</li>
        $config['first_link'] = '&gt;&gt;';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';

        //<li>[<a>Last Page</a>]</li>
        $config['last_link'] = '&lt;&lt;';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';

        $this->pagination->initialize($config);

        $this->template_engine->assign('pagination', $this->pagination->create_links());
    }

    public function _output() {
        $this->template_engine->assign('header', 'front_header.tpl');
        $this->template_engine->assign('content', 'front_home.tpl');
        $this->template_engine->assign('active_menu_item', 'Home');
        $this->template_engine->display('front.tpl');

        //var_dump($this->session->userdata('deptID'));
    }

    private function getDeptName($t_deptID) {
        $array_temp = array(
            '1' => 'Institute of Computing',
            '2' => 'College of Arts and Sciences',
            '3' => 'College of Governance and Business',
            '4' => 'School of Applied Economics',
            '5' => 'College of Engineering',
            '6' => 'College of Technology',
            '7' => 'College of Education'
        );

        return $array_temp[$t_deptID];
    }

}

?>
