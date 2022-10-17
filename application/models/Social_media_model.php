<?php

class Social_media_model extends CI_Model
{
    public $tableName = "social_media";

    public function __construct()
    {
        parent::__construct();
    }

    public function get($where = array())
    {
        return $this->db->where($where)->get($this->tableName)->row();
    }

    public function get_all($where = array(), $order = "priority ASC", $group = null)
    {
        return $this->db->where($where)->order_by($order)->get($this->tableName)->result_array();
    }
}
