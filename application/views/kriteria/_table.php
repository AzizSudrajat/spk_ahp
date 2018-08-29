<table id="example1" class="table table-striped">
  <thead>
    <tr>
      <th>No</th>
      <th>ID Kriteria</th>
      <th>Nama Kriteria</th>
      <th>Deskripsi</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php $no=1; foreach ($table as $row){ ?>
    <tr>
      <td><?php echo $no; ?></td>
      <td><?php echo $row->id_kriteria; ?></td>
      <td><?php echo $row->nama_kriteria; ?></td>
      <td><?php echo $row->deskripsi; ?></td>
      <td>
        <a class="btn btn-sm btn-info" href="<?php echo base_url('kriteria/edit/'.$row->id_kriteria); ?>">Edit</a>
        <a class="btn btn-sm btn-danger" href="<?php echo base_url('kriteria/delete/'.$row->id_kriteria); ?>">Hapus</a>
      </td>
    </tr>
  <?php $no++; } ?>
  </tbody>
  <tfoot>
  <tr>
    <th>No</th>
    <th>ID Kriteria</th>
    <th>Nama Kriteria</th>
    <th>Deskripsi</th>
    <th>Aksi</th>
  </tr>
  </tfoot>
</table>
