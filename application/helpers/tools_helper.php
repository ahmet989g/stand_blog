<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('shorter_text'))
{
    function shorter_text($text, $chars_limit=100){
        $text=strip_tags($text);
        if (strlen($text) > $chars_limit) {
            $new_text = substr($text, 0, $chars_limit);
            $new_text = trim($new_text);
            return $new_text . "...";
        }else{
            return $text;
        }
    }
}

if ( ! function_exists('get_navigation'))
{
    function get_navigation(){
        $CI = &get_instance();
        $CI->load->model('navigation_model');
        $navigations = $CI->navigation_model->get_all(array('is_active' => 1));

        if($navigations) return $navigations;
        else return null;
    }
}

if ( ! function_exists('get_social_media'))
{
    function get_social_media(){
        $CI = &get_instance();
        $CI->load->model('social_media_model');
        $social_medias = $CI->social_media_model->get_all(array('is_active' => 1));

        if($social_medias) return $social_medias;
        else return null;
    }
}