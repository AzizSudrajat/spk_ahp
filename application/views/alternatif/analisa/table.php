<?php
$this->load->model(array('AlternatifModel','AnalisaAlternatifModel'));

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
            <?php echo $sub_title1; ?>
          </div>
          <div class="panel-body">
            <table id="example1" class="table table-striped">
              <thead>
                <tr>
                  <th>Antar Kriteria</th>
                  <?php foreach ($alternatif as $row): ?>
                    <th><?php echo $row->nama_alternatif; ?></th>
                  <?php endforeach; ?>
                </tr>
              </thead>
              <tbody>
                <?php
              $jumlah_alternatif1 = count($alternatif) + 1;

              $model = $this->AnalisaAlternatifModel;
              $i = 1 ;
              foreach ($alternatif as $row) { ?>
                <tr>
                  <th><?php echo $row->nama_alternatif; ?></th>

                  <?php
                  $model->where('alternatif_id_pertama','A'.$i);
                  $model->where('kriteria_id',$kriteria_id);
                  $x = $model->get();
                  $no = '1';
                  $model1 = $this->AnalisaAlternatifModel;
                  foreach ($x as $row){ ?>
                    <?php
                    $model1->where('kriteria_id',$kriteria_id);
                    $model1->where('alternatif_id_pertama', $row->alternatif_id_pertama);
                    $model1->where('alternatif_id_kedua', 'A'.$no);
                    $data = $model1->get1()->row_array();
                     ?>
                     <td><?php
                     echo number_format($data['nilai_analisa_alternatif'], 3, '.', ','); ?></td>
                  <?php $no++; } ?>
                </tr>
              <?php  $i++; } ?>
              </tbody>
              <tfoot>
              <tr>
                <th>Jumlah</th>
                 <?php
                 $model2 = $this->AnalisaAlternatifModel;
                 foreach ($alternatif as $row){
                   $model2->where('kriteria_id',$kriteria_id);
                   $model2->where('alternatif_id_kedua', $row->id_alternatif);
                   $sum = $model2->selectsum('nilai_analisa_alternatif');
                   ?>
                   <th><?php echo number_format($sum['nilai_analisa_alternatif'], 3, '.', ','); ?></th>
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
                  <?php foreach ($alternatif as $row): ?>
                    <th><?php echo $row->nama_alternatif; ?></th>
                  <?php endforeach; ?>
                  <th>Bobot</th>
                </tr>
              </thead>
              <tbody>
                <?php
              $jumlah_alternatif1 = count($alternatif) + 1;
              $model = $this->AnalisaAlternatifModel;
              $i = 1 ;
              foreach ($alternatif as $row) { ?>
                <tr>
                  <th><?php echo $row->nama_alternatif; ?></th>

                  <?php
                  $model->where('alternatif_id_pertama','A'.$i);
                  $model->where('kriteria_id',$kriteria_id);
                  $x = $model->get();
                  $no = '1';
                  $model1 = $this->AnalisaAlternatifModel;
                  foreach ($x as $row1){ ?>
                    <?php
                    $model1->where('alternatif_id_pertama', $row1->alternatif_id_pertama);
                    $model1->where('alternatif_id_kedua', 'A'.$no);
                    $model1->where('kriteria_id',$kriteria_id);
                    $data = $model1->get1()->row_array();
                    $model3 = $this->AnalisaAlternatifModel;
                    $model3->where('alternatif_id_kedua', 'A'.$no);
                    $sum1 = $model3->selectsum('nilai_analisa_alternatif');
                     ?>
                     <td>
                       <?php
                        $result_normalisasi = $data['nilai_analisa_alternatif']/$sum1['nilai_analisa_alternatif'];
                       echo number_format($result_normalisasi, 3, '.', ',') ;
                       $model5 = $this->AnalisaAlternatifModel;
                       $model5->where('kriteria_id',$kriteria_id);
                       $model5->hasil_analisa_alternatif = $result_normalisasi;
                       $model5->update_hasil($row1->alternatif_id_pertama,'A'.$no,$kriteria_id,$kasus_id);
                       ?>
                     </td>
                  <?php $no++; } ?>
                  <td>
                    <?php
                    $model4 = $this->AnalisaAlternatifModel;
                    $model4->where('kriteria_id',$kriteria_id);
                    $model4->where('alternatif_id_pertama', $row->id_alternatif);
                    $avg = $model4->selectavg('hasil_analisa_alternatif');
                    $hasil_avg = number_format($avg['hasil_analisa_alternatif'], 3, '.', ',');
                    echo $hasil_avg;

                    $model8 = $this->AlternatifModel;
                    $iu = $model8->find_hasil($kriteria_id,$row->id_alternatif,$kasus_id);

                    if (($iu['kriteria_id'] == $kriteria_id) && ($iu['alternatif_id'] == $row->id_alternatif) && ($iu['kasus_id'] == $kasus_id)) {
                      // $model6 = $this->AlternatifModel;
                      // $model6->alternatif_id = $row->id_alternatif;
                      // $model6->skor_alt_kri = $hasil_avg;
                      // $model6->updatebobot($id1,$id2,$id3);
                      // var_dump($kriteria_id,$row->id_alternatif,$kasus_id);
                      // var_dump($iu['kriteria_id'].$iu['alternatif_id'].$iu['kasus_id']);
                    }else{
                      $model6 = $this->AlternatifModel;
                      $model6->kriteria_id = $kriteria_id;
                      $model6->alternatif_id = $row->id_alternatif;
                      $model6->kasus_id = $kasus_id;
                      $model6->skor_alt_kri = $hasil_avg;
                      $model6->insertbobot();
                    }
                     ?>
                  </td>
                </tr>
              <?php  $i++; } ?>
              </tbody>
              <tfoot>
            <tr>
              <th>Jumlah</th>
              <?php
               $model2 = $this->AnalisaAlternatifModel;
               foreach ($alternatif as $row){
                 $model2->where('kriteria_id',$kriteria_id);
                 $model2->where('alternatif_id_kedua', $row->id_alternatif);
                 $sum = $model2->selectsum('nilai_analisa_alternatif');
                 ?>
                 <th><?php echo number_format($sum['nilai_analisa_alternatif']/$sum['nilai_analisa_alternatif'], 3, '.', ','); ?></th>
               <?php } ?>
               <?php
               $model8 = $this->AlternatifModel;
               $bobot = $model8->selectsum('skor_alt_kri',$kriteria_id);

                ?>
                <th><?php echo number_format(round($bobot['skor_alt_kri']), 3, '.', ','); ?></th>
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
            <h2 class="text-center"><?php echo $sub_title3.' Kriteria '.$kriteria_id; ?></h2>
            <br>
            <?php
            $model7 = $this->AlternatifModel;
            $this->db->order_by("skor_alt_kri", "desc");
            $model7->where('kriteria_id',$kriteria_id);
            $result_prioritas = $model7->getbobot('hasil_alternatif_kriteria.*, alternatif.deskripsi as nama,',
            [
              ['table'=>'alternatif','condition'=>'alternatif.id_alternatif = hasil_alternatif_kriteria.alternatif_id']
            ])->result();
            $no = 1;
            foreach ($result_prioritas as $row){ ?>
              <h3>Proritas ke-<?php echo $no.' '.$row->nama.' = '.$row->skor_alt_kri; ?></h3>
             <?php $no++; } ?>
          </div>
        </div>
      </div>

      <div class="col-md-10">
        <?php
        $model9 = $this->AlternatifModel;
        $p1 = $model9->getbobot()->result();
        ?>
        <?php
        $model10 = $this->KriteriaModel;
        foreach ($p1 as $row) {
          $model10->where('id_kriteria !=', $row->kriteria_id);
        }
        $p2 = $model10->get();
        foreach ($p2 as $row1) { ?>

         <a class="btn btn-primary" href="<?php echo base_url('alternatif/analisa/'.$kasus_id.'/'.$row1->id_kriteria) ?>"><?php echo $row1->nama_kriteria.' - '.$row1->deskripsi; ?></a>
       <?php } ?>
      </div>
      <div class="col-md-2">
        <a class="btn btn-success pull-right" href="<?php echo base_url('rangking/kasus/'.$kasus_id); ?>">Hitung Rangking</a>
      </div>
    </div>
  </div>
</div>
