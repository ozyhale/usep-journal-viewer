<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Upload_class
 *
 * @author mhaine
 */
require_once 'class_upload/class.upload.php';

class Upload_class extends upload {

    //put your code here
    public function __construct($params) {
        parent::upload($params);
    }
}

?>
