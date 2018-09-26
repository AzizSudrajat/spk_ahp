<div class="row">
  <?php
  // var_dump($table[0]['nama_kriteria']);
  // var_dump($table);
  $jumlah_kriteria1 = count($table) - 1;
  // $aa = 'A1';
  // echo substr($aa,1,1);
  // echo $jumlah_kriteria;
  ?>
  <div class="col-md-4">
    <h3 class="text-center">Kriteria Pertama</h3>
    <?php foreach ($table as $row){ ?>
    <?php for ($i=0; $i < $jumlah_kriteria1 ; $i++) { ?>
    <div class="form-group">
      <input type="hidden" name="<?php echo 'A'.substr($row->id_kriteria,1,1).((substr($row->id_kriteria,1,1) + $i) + 1);  ?>" value="<?php echo $row->id_kriteria; ?>">
      <input type="text" class="form-control"  value="<?php echo $row->nama_kriteria.' - '.$row->deskripsi; ?>" disabled/>
    </div>
    <?php } ?>
    <?php $jumlah_kriteria1--; } ?>
  </div>
  <div class="col-md-4">
    <h3 class="text-center">Nilai</h3>
    <?php foreach ($table as $row1){ ?>
    <?php foreach ($table as $row2){ ?>
      <?php if ($row1->nama_kriteria !== $row2->nama_kriteria): ?>
        <?php if (substr($row1->id_kriteria,1,1) < substr($row2->id_kriteria,1,1)): ?>
          <div class="form-group">
            <select name="<?php echo 'B'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1); ?>" class="form-control" required>
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
    <h3 class="text-center">Kriteria Kedua</h3>
    <?php foreach ($table as $row1){ ?>
    <?php foreach ($table as $row2){ ?>
      <?php if ($row1->nama_kriteria !== $row2->nama_kriteria): ?>
        <?php if (substr($row1->id_kriteria,1,1) < substr($row2->id_kriteria,1,1)): ?>
          <div class="form-group">
            <input type="hidden" name="<?php echo 'C'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1); ?>" value="<?php echo $row2->id_kriteria; ?>">
            <input type="text" class="form-control"  value="<?php echo $row2->nama_kriteria.' - '.$row2->deskripsi; ?>" disabled/>
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
    <a class="btn btn-danger" href="<?php echo base_url('kriteria'); ?>">Kembali</a>
    <button type="submit" class="btn btn-primary">Proses</button>
  </div>
</div>
