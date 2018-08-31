<table id="example1" class="table table-striped">
  <thead>
    <tr>
      <th>#</th>
      <th>ID Alternatif</th>
      <th>Nama Alternatif</th>
      <th>Deskripsi</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php $no=1; foreach ($table as $row){ ?>
    <tr>
      <td><?php echo $no; ?></td>
      <td><?php echo $row->id_alternatif; ?></td>
      <td><?php echo $row->nama_alternatif; ?></td>
      <td><?php echo $row->deskripsi; ?></td>
      <td>
        <a class="btn btn-sm btn-info" href="<?php echo base_url('alternatif/default_edit/'.$row->id_alternatif); ?>">Edit</a>
        <a class="btn btn-sm btn-danger" href="<?php echo base_url('alternatif/default_delete/'.$row->id_alternatif); ?>">Hapus</a>
      </td>
    </tr>
  <?php $no++; } ?>
  </tbody>
  <tfoot>
  <tr>
    <th>#</th>
    <th>ID Alternatif</th>
    <th>Nama Alternatif</th>
    <th>Deskripsi</th>
    <th>Aksi</th>
  </tr>
  </tfoot>
</table>
