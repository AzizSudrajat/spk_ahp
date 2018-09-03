<!-- MENU SECTION END-->
<div class="content-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h4 class="page-head-line"><?php echo $title; ?></h4>
      </div>
    </div>
    <?php
    $this->load->model('KriteriaModel');
    $this->load->model('AnalisaKriteriaModel');
     ?>
    <!-- BODY -->
    <div class="row">
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <?php echo $sub_title1; ?>
          </div>
          <div class="panel-body">
            <table id="example1" class="table table-striped">
              <thead>
                <tr>
                  <th>Antar Kriteria</th>
                  <?php foreach ($kriteria as $row): ?>
                    <th><?php echo $row->nama_kriteria; ?></th>
                  <?php endforeach; ?>
                </tr>
              </thead>
              <tbody>
                <?php
              $jumlah_kriteria1 = count($kriteria) + 1;

              $model = $this->AnalisaKriteriaModel;
              $i = 1 ;
              foreach ($kriteria as $row) { ?>
                <tr>
                  <th><?php echo $row->nama_kriteria; ?></th>

                  <?php
                  $model->where('kriteria_id_pertama','C'.$i);
                  $x = $model->get();
                  $no = '1';
                  $model1 = $this->AnalisaKriteriaModel;
                  foreach ($x as $row){ ?>
                    <?php
                    $model1->where('kriteria_id_pertama', $row->kriteria_id_pertama);
                    $model1->where('kriteria_id_kedua', 'C'.$no);
                    $data = $model1->get1()->row_array();
                     ?>
                     <td><?php echo number_format($data['nilai_analisa_kriteria'], 3, '.', ','); ?></td>
                  <?php $no++; } ?>
                </tr>
              <?php  $i++; } ?>
              </tbody>
              <tfoot>
              <tr>
                <th>Jumlah</th>
                 <?php
                 $model2 = $this->AnalisaKriteriaModel;
                 foreach ($kriteria as $row){
                   $model2->where('kriteria_id_kedua', $row->id_kriteria);
                   $sum = $model2->selectsum('nilai_analisa_kriteria');
                   ?>
                   <th><?php echo number_format($sum['nilai_analisa_kriteria'], 3, '.', ','); ?></th>
                 <?php } ?>
              </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>

      <!-- normalisasi -->
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <?php echo $sub_title2; ?>
          </div>
          <div class="panel-body">
            <table id="example1" class="table table-striped">
              <thead>
                <tr>
                  <th>Normalisasi</th>
                  <?php foreach ($kriteria as $row): ?>
                    <th><?php echo $row->nama_kriteria; ?></th>
                  <?php endforeach; ?>
                  <th>Bobot</th>
                </tr>
              </thead>
              <tbody>
                <?php
              $jumlah_kriteria1 = count($kriteria) + 1;
              $model = $this->AnalisaKriteriaModel;
              $i = 1 ;
              foreach ($kriteria as $row) { ?>
                <tr>
                  <th><?php echo $row->nama_kriteria; ?></th>

                  <?php
                  $model->where('kriteria_id_pertama','C'.$i);
                  $x = $model->get();
                  $no = '1';
                  $model1 = $this->AnalisaKriteriaModel;
                  foreach ($x as $row1){ ?>
                    <?php
                    $model1->where('kriteria_id_pertama', $row1->kriteria_id_pertama);
                    $model1->where('kriteria_id_kedua', 'C'.$no);
                    $data = $model1->get1()->row_array();
                    $model3 = $this->AnalisaKriteriaModel;
                    $model3->where('kriteria_id_kedua', 'C'.$no);
                    $sum1 = $model3->selectsum('nilai_analisa_kriteria');
                     ?>
                     <td>
                       <?php
                        $result_normalisasi = $data['nilai_analisa_kriteria']/$sum1['nilai_analisa_kriteria'];
                       echo number_format($result_normalisasi, 3, '.', ',') ;
                       $model5 = $this->AnalisaKriteriaModel;
                       $model5->hasil_analisa_kriteria = $result_normalisasi;
                       $model5->update_hasil($row1->kriteria_id_pertama,'C'.$no);
                       ?>
                     </td>
                  <?php $no++; } ?>
                  <td>
                    <?php
                    $model4 = $this->AnalisaKriteriaModel;
                    $model4->where('kriteria_id_pertama', $row->id_kriteria);
                    $avg = $model4->selectavg('hasil_analisa_kriteria');
                    $hasil_avg = number_format($avg['hasil_analisa_kriteria'], 3, '.', ',');
                    echo $hasil_avg;
                    $model6 = $this->KriteriaModel;
                    $model6->bobot_kriteria = $hasil_avg;
                    $model6->update($row->id_kriteria);
                     ?>
                  </td>
                </tr>
              <?php  $i++; } ?>
              </tbody>
              <tfoot>
              <tr>
                <th>Jumlah</th>
                 <?php
                 $model2 = $this->AnalisaKriteriaModel;
                 foreach ($kriteria as $row){
                   $model2->where('kriteria_id_kedua', $row->id_kriteria);
                   $sum = $model2->selectsum('nilai_analisa_kriteria');
                   ?>
                   <th><?php echo number_format($sum['nilai_analisa_kriteria']/$sum['nilai_analisa_kriteria'], 3, '.', ','); ?></th>
                 <?php } ?>
                 <?php
                 $model8 = $this->KriteriaModel;
                 $bobot = $model8->selectsum('bobot_kriteria');
                  ?>
                  <th><?php echo number_format(round($bobot['bobot_kriteria']), 3, '.', ','); ?></th>
              </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>

      <!-- hasil priprotas Kriteria -->
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <?php echo $sub_title3; ?>
          </div>
          <div class="panel-body">
            <?php
            $model7 = $this->KriteriaModel;
            $this->db->order_by("bobot_kriteria", "desc");
            $result_prioritas = $model7->get();
            $no = 1;
            foreach ($result_prioritas as $row){ ?>
              <h3>Proritas ke-<?php echo $no.' '.$row->nama_kriteria.' = '.$row->bobot_kriteria; ?></h3>
             <?php $no++; } ?>
          </div>
        </div>
      </div>
      <div class="col-md-12">
        <a class="btn btn-success" href="<?php echo base_url(); ?>">Beranda</a>
      </div>
    </div>
  </div>
</div>
