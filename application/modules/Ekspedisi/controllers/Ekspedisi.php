<?php (defined('BASEPATH')) or exit('No direct script access allowed');
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Ekspedisi extends MY_Admin
{

    public function __construct()
    {
        parent::__construct();
        // $this->load->model('M_user');
        $this->load->library('session');
    }

    public function index()
    {
        $this->load->model('EkspedisiModel');
        $data['ekspedisi'] = $this->EkspedisiModel->get_data();
        $this->template->set_layout('Template/view_admin');
        $this->template->set_content('Ekspedisi/index_ekspedisi', $data);
        $this->template->render();
    }

    public function create()
    {
        $this->template->set_layout('template/view_admin');
        $this->template->set_content('ekspedisi/aksi/tambah');
        $this->template->render();
    }
    public function save()
    {
        $data = [
            'fv_email' => $this->input->post('email'),
            'fv_nama_ekspedisi' => $this->input->post('namaEks'),
            'fv_pic_ekspedisi' => $this->input->post('picEks'),
            'fv_alamat_ekspedisi' => $this->input->post('alamatEks'),
            'fv_kecamatan' => $this->input->post('kecamatan'),
            'fv_kota' => $this->input->post('kota'),
            'fv_provinsi' => $this->input->post('provinsi'),
            'fn_kode_pos' => $this->input->post('kodePos'),
            'fv_npwp' => $this->input->post('npwp'),
            'fv_telp_kantor' => $this->input->post('telpKantor'),
            'fv_no_hp' => $this->input->post('noHp'),
            'fn_jumlah_point' => $this->input->post('jmlhPoint'),
            'fv_username' => $this->input->post('username'),
            'fv_password' => $this->input->post('password'),
            'fn_idlevel' => $this->input->post('idLevel'),
        ];
        $this->EkspedisiModel->inputData($data);
        redirect('ekspedisi/index');
    }
    public function delete($fn_idekspedisi)
    {
        $where = array('fn_idekspedisi' => $fn_idekspedisi);
        $this->EkspedisiModel->hapusData($where);
        redirect('ekspedisi/index');
    }
    public function ubah($id)
    {
        $where = array('fn_idekspedisi' => $id);
        $data['ekspedisi'] = $this->EkspedisiModel->ubahData($where, 'tm_ekspedisi')->result_array();
        $this->template->set_layout('template/view_admin');
        $this->template->set_content('ekspedisi/aksi/ubah', $data);
        $this->template->render();
    }



    public function update($id)
    {
        $where['fn_idekspedisi'] = $id;
        $data = [
            'fv_email' => $this->input->post('email'),
            'fv_nama_ekspedisi' => $this->input->post('namaEks'),
            'fv_pic_ekspedisi' => $this->input->post('picEks'),
            'fv_alamat_ekspedisi' => $this->input->post('alamatEks'),
            'fv_kecamatan' => $this->input->post('kecamatan'),
            'fv_kota' => $this->input->post('kota'),
            'fv_provinsi' => $this->input->post('provinsi'),
            'fn_kode_pos' => $this->input->post('kodePos'),
            'fv_npwp' => $this->input->post('npwp'),
            'fv_telp_kantor' => $this->input->post('telpKantor'),
            'fv_no_hp' => $this->input->post('noHp'),
            'fn_jumlah_point' => $this->input->post('jmlhPoint'),
            'fv_username' => $this->input->post('username'),
            'fv_password' => $this->input->post('password'),
            'fn_idlevel' => $this->input->post('idLevel'),
        ];
        $this->EkspedisiModel->updateData($where,$data,'tm_ekspedisi');
        redirect('ekspedisi/index');
    }

    //  public function logout()
    // {
    //     $this->session->sess_destroy();
    //     redirect('Auth','refresh');
    // }

}
