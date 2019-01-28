<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_model extends CI_Model {

    function md_menu($id_parent) {
    		$query = $this->db->order_by('sort', 'ASC');
            $query = $this->db->where('id_parent', $id_parent);
            $query = $this->db->get('ex_menu');
            return $query->result_array();
    }
    function md_menuu() {
            
            $query = $this->db->where('id_parent', 3);
            $query = $this->db->get('ex_menu');
            return $query->result_array();
    }
    function md_page($id) {
            $query = $this->db->where('id', $id);
            $query = $this->db->get('ex_page');
            return $query->result_array();
    }
}    



