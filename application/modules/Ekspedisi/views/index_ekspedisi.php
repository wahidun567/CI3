<h2 class="pt-3">MASTER EKSPEDISI</h2>
<hr>
<a href="ekspedisi/create" class="btn btn-primary">Tambahkan</a>
<table class="table table-hover mt-2" style="width: 100%;">
    <thead class="thead-dark">
        <tr>
            <th>No</th>
            <th>Email</th>
            <th>Nama</th>
            <th>Pic</th>
            <th>Alamat</th>
            <th>Kecamatan</th>
            <th>Kota</th>
            <th>Provinsi</th>
            <th>Kode</th>
            <th>NPWP</th>
            <th>Telp Kantor</th>
            <th>No. Hp</th>
            <th>Jumlah Point</th>
            <th>Username</th>
            <th>Password</th>
            <th>Id Level</th>
            <th colspan="2">Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php $i = 1; ?>
        <?php foreach ($ekspedisi as $e) : ?>
            <tr>
                <th scope="row"><?= $i++; ?></th>
                <td><?= $e['fv_email']; ?></td>
                <td><?= $e['fv_nama_ekspedisi']; ?></td>
                <td><?= $e['fv_pic_ekspedisi']; ?></td>
                <td><?= $e['fv_alamat_ekspedisi']; ?></td>
                <td><?= $e['fv_kecamatan']; ?></td>
                <td><?= $e['fv_kota']; ?></td>
                <td><?= $e['fv_provinsi']; ?></td>
                <td><?= $e['fn_kode_pos']; ?></td>
                <td><?= $e['fv_npwp']; ?></td>
                <td><?= $e['fv_telp_kantor']; ?></td>
                <td><?= $e['fv_no_hp']; ?></td>
                <td><?= $e['fn_jumlah_point']; ?></td>
                <td><?= $e['fv_username']; ?></td>
                <td><?= $e['fv_password']; ?></td>
                <td><?= $e['fn_idlevel']; ?></td>
                <td>
                    <a href="<?php echo base_url().'ubah/'.$e['fn_idekspedisi']; ?>">
                        <div class="btn btn-warning"><i class="fa fa-edit"></i></div>
                    </a>
                    <form action="<?= base_url().'delete/'.$e['fn_idekspedisi']; ?>" class="d-inline" onclick="return confirm('Apakah Anda Yakin?')">
                        <button type="submit" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                    </form>
                </td>
            <?php endforeach; ?>
            </tr>
    </tbody>
</table>