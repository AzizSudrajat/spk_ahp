<?php
$jumlah_alternatif1 = count($table) - 1;
?>
<div class="row">
  <div class="col-md-12">
    <h3 class="text-center"><?php echo $kriteria['nama_kriteria'].' - '.$kriteria['deskripsi'];?></h3>
  </div>
  <div class="col-md-4">
    <h3 class="text-center">Alternatif Pertama</h3>
    <?php foreach ($table as $row){ ?>
    <?php for ($i=0; $i < $jumlah_alternatif1 ; $i++) { ?>
    <div class="form-group">
      <input type="hidden" name="<?php echo 'A'.substr($row->id_alternatif,1,1).((substr($row->id_alternatif,1,1) + $i) + 1);  ?>" value="<?php echo $row->id_alternatif; ?>">
      <input type="text" class="form-control"  value="<?php echo $row->nama_alternatif.' - '.$row->deskripsi; ?>" disabled/>
    </div>
    <?php } ?>
    <?php $jumlah_alternatif1--; } ?>
  </div>
  <div class="col-md-4">
    <h3 class="text-center">Nilai</h3>
    <?php foreach ($table as $row1){ ?>
    <?php foreach ($table as $row2){ ?>
      <?php if ($row1->nama_alternatif !== $row2->nama_alternatif): ?>
        <?php if (substr($row1->id_alternatif,1,1) < substr($row2->id_alternatif,1,1)): ?>
          <div class="form-group">
            <select name="<?php echo 'B'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1); ?>" class="form-control">
              <option value=''>--Select--</option>
              <?php foreach($table1 as $row): ?>
                <option value="<?php echo $row->jumlah_nilai ?>" <?php echo (isset($form['nilai_analisa_kriteria']) && $form['nilai_analisa_kriteria'] == $row->id_nilai ) ? 'selected' : ''?> >
                  <?php echo $row->deskripsi ?> (<?php echo $row->jumlah_nilai; ?>)
                </option>
              <?php endforeach; ?>
            </select>
          </div>
        <?php else: ?>
        <?php endif; ?>
      <?php else: ?>
      <?php endif; ?>
    <?php } ?>
  <?php }?>
</div>
  <div class="col-md-4">
    <h3 class="text-center">Alternatif Kedua</h3>
    <?php foreach ($table as $row1){ ?>
    <?php foreach ($table as $row2){ ?>
      <?php if ($row1->nama_alternatif !== $row2->nama_alternatif): ?>
        <?php if (substr($row1->id_alternatif,1,1) < substr($row2->id_alternatif,1,1)): ?>
          <div class="form-group">
            <input type="hidden" name="<?php echo 'C'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1); ?>" value="<?php echo $row2->id_alternatif; ?>">
            <input type="text" class="form-control"  value="<?php echo $row2->nama_alternatif.' - '.$row2->deskripsi; ?>" disabled/>
          </div>
        <?php else: ?>
        <?php endif; ?>
      <?php else: ?>
      <?php endif; ?>
    <?php } ?>
  <?php }?>
  </div>
  <?php

  ?>
  <div class="text-center">
    <button type="submit" class="btn btn-primary">Proses</button>
  </div>
</div>
