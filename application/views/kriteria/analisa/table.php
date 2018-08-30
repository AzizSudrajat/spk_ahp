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
              $this->load->model('AnalisaKriteriaModel');
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

      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <?php echo $sub_title2; ?>
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
              $this->load->model('AnalisaKriteriaModel');
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
                    $model3 = $this->AnalisaKriteriaModel;
                    $model3->where('kriteria_id_kedua', 'C'.$no);
                    $sum1 = $model3->selectsum('nilai_analisa_kriteria');
                    var_dump($sum1['nilai_analisa_kriteria']);
                     ?>
                     <td><?php echo number_format($data['nilai_analisa_kriteria']/$sum1['nilai_analisa_kriteria'], 3, '.', ',') ; ?></td>
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
                   <th><?php echo number_format($sum['nilai_analisa_kriteria']/$sum['nilai_analisa_kriteria'], 3, '.', ','); ?></th>
                 <?php } ?>
              </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
