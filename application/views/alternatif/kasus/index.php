<?php
$this->load->model('KriteriaModel');
$model = $this->KriteriaModel;
$this->db->order_by("id_kriteria", "asc");
$data = $model->get1('1')->row_array();
?>
<!-- MENU SECTION END-->
<div class="content-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h4 class="page-head-line"><?php echo $title; ?></h4>
      </div>
    </div>

    <!-- BODY -->
    <div class="row">
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
          <?php echo $sub_title; ?>
          </div>
          <div class="panel-body">
            <form class="" action="<?php echo base_url('alternatif/analisa/'.$kasus_id.'/'.$data['id_kriteria']) ?>" method="post">
              <div class="form-group">
                <label for="Nama">Nama Kasus</label>
                <input type="text" name="Nama" class="form-control" id="Nama" placeholder="Nama Kasus . . ." value="" required/>
              </div>
              <div class="form-group">
                <label for="Deskripsi">Deskripsi</label>
                <input type="text" name="Deskripsi" class="form-control" id="Deskripsi" placeholder="Deskripsi Kasus . . ." value="" />
              </div>
              <div class="form-group">
                <label for="Tanggal">Tanggal / Bulan</label>
                <input type="text" name="Tanggal" class="form-control" id="Tanggal" placeholder="Tanggal Kasus" value=""  />
              </div>
              <button type="submit" class="btn btn-primary">Analisis Alternatif</button>
            </form>
            <?php
            $no = 1;
            foreach ($table as $row){ ?>
              <h3>Proritas ke-<?php echo $no.' '.$row->nama_kriteria.' = '.$row->bobot_kriteria; ?></h3>
             <?php $no++; } ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
