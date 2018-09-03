<table id="" class="table table-striped">
  <thead>
    <tr>
      <th>No</th>
      <th>ID Kasus</th>
      <th>Nama Kasus</th>
      <th>Deskripsi</th>
      <th>Tanggal Kasus</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php $no=1; foreach ($table as $row){ ?>
      <tr>
        <td><?php echo $no; ?></td>
        <td><?php echo $row->id_kasus; ?></td>
        <td><?php echo $row->nama_kasus; ?></td>
        <td><?php echo $row->deskripsi; ?></td>
        <td><?php echo $row->tanggal_kasus; ?></td>
        <td>
          <a class="btn btn-sm btn-success" href="<?php echo base_url('beranda/kasus/'.$row->id_kasus) ?>">Lihat Data</a>
          <a class="btn btn-sm btn-danger" href="">Hapus Dara</a>
        </td>
      </tr>
    <?php $no++; } ?>

  </tbody>
  <tfoot>
  <tr>
    <th>No</th>
    <th>ID Kasus</th>
    <th>Nama Kasus</th>
    <th>Deskripsi</th>
    <th>Tanggal Kasus</th>
    <th>Action</th>
  </tr>
  </tfoot>
</table>
