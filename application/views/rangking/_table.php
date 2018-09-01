<?php
$this->load->model('AlternatifModel');
$model = $this->AlternatifModel;
 ?>
<table id="example1" class="table table-striped">
  <thead>
    <tr>
      <th>Perbangingan</th>
      <?php foreach ($kriteria as $row){ ?>
        <th><?php echo $row->nama_kriteria ?></th>
      <?php } ?>
    </tr>
  </thead>
  <tbody>

      <?php foreach ($alternatif as $row){ ?>
        <tr>
        <th><?php echo $row->nama_alternatif; ?></th>
        <?php
        $model->where('alternatif_id',$row->id_alternatif);
        $nilai = $model->getbobot()->result();
        foreach ($nilai as $row1){ ?>
          <td><?php echo $row1->skor_alt_kri; ?></td>
        <?php } ?>
        </tr>
      <?php } ?>
      <tr>
        <th>Bobot</th>
        <?php foreach ($kriteria as $row){ ?>
          <th><?php echo $row->bobot_kriteria; ?></th>
        <?php } ?>
      </tr>
  </tbody>
  <tfoot>
    <th>Jumlah</th>
    <?php
    // $this->load->model('AnalisaAlternatifModel');
    // $model1 = $this->AnalisaAlternatifModel;
    foreach ($kriteria as $row){
      // $result = $model1->selectsum('skor_alt_kri',$row->id_kriteria);
      // var_dump($result);
      ?>

    <?php } ?>
  </tfoot>
</table>
