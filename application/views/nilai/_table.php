<table id="" class="table table-striped">
  <thead>
    <tr>
      <th>No</th>
      <th>ID Nilai</th>
      <th>Jumlah Nilai</th>
      <th>Deskripsi</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php $no=1; foreach ($table as $row){ ?>
    <tr>
      <td><?php echo $no; ?></td>
      <td><?php echo $row->id_nilai; ?></td>
      <td><?php echo $row->jumlah_nilai; ?></td>
      <td><?php echo $row->deskripsi; ?></td>
      <td>
        <a class="btn btn-sm btn-info" href="<?php echo base_url('nilai/edit/'.$row->id_nilai); ?>">Edit</a>
        <a class="btn btn-sm btn-danger" href="<?php echo base_url('nilai/delete/'.$row->id_nilai); ?>">Hapus</a>
      </td>
    </tr>
  <?php $no++; } ?>
  </tbody>
  <tfoot>
  <tr>
    <th>No</th>
    <th>ID Nilai</th>
    <th>Jumlah Nilai</th>
    <th>Deskripsi</th>
    <th>Aksi</th>
  </tr>
  </tfoot>
</table>
