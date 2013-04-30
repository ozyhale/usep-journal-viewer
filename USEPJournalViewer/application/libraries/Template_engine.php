<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Smarty
 *
 * @author Ozy Admin
 */

require_once 'smarty/Smarty.class.php';

class Template_engine extends Smarty{
    
    public function __construct($params) {
        parent::__construct();
        
        $path = $params['path'];
        
        $templates['templates'] = $path . 'application/views/templates/';
        $templates['header'] = $path . 'application/views/header/';
        $templates['content'] = $path . 'application/views/content/';
        $templates['sidebar'] = $path . 'application/views/sidebar/';
        $templates['footer'] = $path . 'application/views/footer/';
        
        $this->setTemplateDir($templates);
        $this->setCompileDir($path . 'application/libraries/smarty/templates_c/');
        $this->setConfigDir($path . 'application/libraries/smarty/configs/');
        $this->setCacheDir($path . 'application/libraries/smarty/cache/');
        
        $this->caching = 0;
        
        $this->assign('alert', '');
    }
    
    public function set_alert($msg, $type = 'Warning'){
        
        if($type == 'Error'){
            $alert_type = 'alert-error';
        }else if($type == 'Success'){
            $alert_type = 'alert-success';
        }else if($type == 'Info'){
            $alert_type = 'alert-info';
        }
        
        $msg = strip_tags($msg);
        
        $dismiss = "<a href='#' class='close' data-dismiss='alert'>x</a>";
        $alert = "<div class='alert " . $alert_type. "'>$dismiss<strong>$type!</strong> $msg</div>";
        
        $this->assign('alert', $alert);
        
    }
}

?>
