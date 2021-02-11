<?php foreach ($ekspedisi as $e) { ?>
    <form action="<?php echo base_url() . 'ekspedisi/update/' . $e['fn_idekspedisi']; ?>" method="post">
        <div class="container">
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="email" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="email" value="<?php echo $e['fv_email'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="namaEks" class="col-sm-2 col-form-label">Nama Ekspedisi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="namaEks" name="namaEks" value="<?php echo $e['fv_nama_ekspedisi'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="picEks" class="col-sm-2 col-form-label">PIC Ekspedisi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="picEks" name="picEks" value="<?php echo $e['fv_pic_ekspedisi'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="alamatEks" class="col-sm-2 col-form-label">Alamat Ekspedisi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="alamatEks" name="alamatEks" value="<?php echo $e['fv_alamat_ekspedisi'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="Kecamatan" class="col-sm-2 col-form-label">Kecamatan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="Kecamatan" name="kecamatan" value="<?php echo $e['fv_kecamatan'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="Kota" class="col-sm-2 col-form-label">Kota</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="Kota" name="kota" value="<?php echo $e['fv_kota'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="Provinsi" class="col-sm-2 col-form-label">Provinsi</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="Provinsi" name="provinsi" value="<?php echo $e['fv_provinsi'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="kodePos" class="col-sm-2 col-form-label">Kode Pos</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="kodePos" name="kodePos" value="<?php echo $e['fn_kode_pos'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="NPWP" class="col-sm-2 col-form-label">NPWP</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="NPWP" name="npwp" value="<?php echo $e['fv_npwp'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="telpKantor" class="col-sm-2 col-form-label">Telephon Kantor</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="telpKantor" name="telpKantor" value="<?php echo $e['fv_telp_kantor'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="noHp" class="col-sm-2 col-form-label">No. Hp</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="noHp" name="noHp" value="<?php echo $e['fv_no_hp'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="jumlahPoint" class="col-sm-2 col-form-label">Jumlah Point</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="jumlahPoint" name="jmlhPoint" value="<?php echo $e['fn_jumlah_point']?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="Username" class="col-sm-2 col-form-label">Username</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="Username" name="username" value="<?php echo $e['fv_username'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="Password" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="Password" name="password" value="<?php echo $e['fv_password'] ?>">
                    </div>
                </div>
            </div>
            <div class="col my-4">
                <div class="mb-3 row">
                    <label for="idLevel" class="col-sm-2 col-form-label">idLevel</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="idLevel" name="idLevel" value="<?php echo $e['fn_idlevel'] ?>">
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary mx-2">Ubah</button>
            <a href="<?php echo base_url().'ekspedisi' ?>" type="reset" class="btn btn-danger px-4" data-dismiss="modal">Kembali</a>
        </div>
    </form>
<?php } ?>