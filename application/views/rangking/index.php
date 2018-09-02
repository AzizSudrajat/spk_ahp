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
            <?php
            $this->load->model(array('AlternatifModel','KriteriaModel','RankingModel'));
            // $this->load->model('');
            // $this->load->model('RangkingModel');
            $model = $this->AlternatifModel;
            $model2 = $this->KriteriaModel;
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
                $model1 = $this->AlternatifModel;
                foreach ($kriteria as $row){
                  $result = $model1->selectsum('skor_alt_kri',$row->id_kriteria);
                  ?>
                  <th><?php echo $result['skor_alt_kri'] + $row->bobot_kriteria; ?></th>
                <?php } ?>
              </tfoot>
            </table>
          </div>
        </div>
      </div>

      <!-- normalisasi -->
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <?php echo $sub_title1; ?>
          </div>
          <div class="panel-body">
            <?php
            $this->load->model('AlternatifModel');
            $model = $this->AlternatifModel;
             ?>
            <table id="example1" class="table table-striped">
              <thead>
                <tr>
                  <th>Normalisasi</th>
                  <?php foreach ($kriteria as $row){ ?>
                    <th><?php echo $row->nama_kriteria ?></th>
                  <?php } ?>
                  <th>Rangking</th>
                </tr>
              </thead>
              <tbody>

                  <?php foreach ($alternatif as $row3){ ?>
                    <tr>
                    <th><?php echo $row3->nama_alternatif; ?></th>
                    <?php
                    $model->where('alternatif_id',$row3->id_alternatif);
                    $nilai = $model->getbobot()->result();
                    foreach ($nilai as $row1){ ?>
                      <td><?php
                      $model2->where('id_kriteria',$row1->kriteria_id);
                      $result2 = $model2->get1()->row_array();
                      $result1 = $model1->selectsum('skor_alt_kri',$row1->kriteria_id);
                      $result_pembagi = $result1['skor_alt_kri'] + $result2['bobot_kriteria'];
                      $result_normalisasi = $row1->skor_alt_kri / $result_pembagi;
                      echo $result_normalisasi;
                      $model4 = $this->AlternatifModel;
                      $model4->hasil_alt_kri = $result_normalisasi;
                      $model4->update_hasil($row1->kriteria_id,$row3->id_alternatif,$kasus_id);
                       ?></td>

                    <?php } ?>
                    <td>
                      <?php
                      $model5 = $this->AlternatifModel;
                      $model5->where('alternatif_id',$row3->id_alternatif);
                      $avg = $model5->selectavg('hasil_alt_kri');
                      $result_avg = $avg['hasil_alt_kri'];
                      echo $result_avg;
                      var_dump($result_avg,$row3->id_alternatif,$kasus_id);


                      $hasil = $this->RankingModel;
                      $hasil->alternatif_id = $row3->id_alternatif;
                      $hasil->bobot = $result_avg;
                      $hasil->kasus_id = $kasus_id;
                      $hasil->insert();
                        ?>
                    </td>
                    </tr>
                  <?php } ?>
                  <tr>
                    <th>Bobot</th>
                    <?php foreach ($kriteria as $row){
                      $model2->where('id_kriteria',$row->id_kriteria);
                      $result4 = $model2->get1()->row_array();
                      $result3 = $model1->selectsum('skor_alt_kri',$row->id_kriteria);
                      $result_pembagi = $result3['skor_alt_kri'] + $result4['bobot_kriteria'];
                      $result_normalisasi = $row->bobot_kriteria / $result_pembagi;
                      ?>
                      <th><?php echo $result_normalisasi; ?></th>
                    <?php } ?>
                    <th></th>
                  </tr>
              </tbody>
              <tfoot>
                <th>Jumlah</th>
                <?php
                $model1 = $this->AlternatifModel;
                foreach ($kriteria as $row){
                  $result = $model1->selectsum('skor_alt_kri',$row->id_kriteria);
                  $result1 = $result['skor_alt_kri'] + $row->bobot_kriteria;

                  $model2->where('id_kriteria',$row->id_kriteria);
                  $result6 = $model2->get1()->row_array();
                  $result5 = $model1->selectsum('skor_alt_kri',$row->id_kriteria);
                  $result_pembagi = $result5['skor_alt_kri'] + $result6['bobot_kriteria'];
                  $result_normalisasi = $result1 / $result_pembagi;
                  ?>
                  <th><?php echo $result_normalisasi; ?></th>
                <?php } ?>
                <th></th>
              </tfoot>
            </table>
          </div>
        </div>
      </div>
      <div class="col-md-12">
        <a class="btn btn-success" href="<?php echo base_url(); ?>">Beranda</a>
      </div>
    </div>
  </div>
</div>
