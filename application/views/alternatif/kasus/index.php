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
            <a class="btn btn-primary pull-right" href="<?php echo base_url('alternatif/analisa/'.$kasus_id.'/'.$data['id_kriteria']) ?>">Analisa Alternatif</a>
          </div>
          <div class="panel-body">
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
