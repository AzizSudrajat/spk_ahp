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
      <div class="col-xs-12 col-sm-12 col-md-12">
        <div id="container2" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
        <br/>
      </div>
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <?php echo $sub_title; ?>
          </div>
          <div class="panel-body">
            <table id="" class="table table-striped">
              <thead>
                <tr>
                  <th>Rangking</th>
                  <?php foreach ($kriteria as $row){ ?>
                    <th><?php echo $row->nama_kriteria; ?></th>
                  <?php } ?>
                </tr>
              </thead>
              <tbody>
                <?php
                $model = $this->AlternatifModel;
                $alternatif = $model->get();
                foreach ($alternatif as $row2) { ?>
                  <tr>
                    <th><?php echo $row2->nama_alternatif; ?></th>
                  <?php
                  $model1 = $this->AlternatifModel;
                  $model1->where('kasus_id',$kasus_id);
                  $model1->where('alternatif_id',$row2->id_alternatif);
                  $data = $model1->getbobot()->result();
                  foreach ($data as $row3) { ?>
                    <td><?php echo $row3->hasil_alt_kri; ?></td>
                  <?php } ?>
                  </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="col-md-12">
        <?php
          $rangking = $this->RankingModel;
          $this->db->order_by("bobot", "desc");
          $rangking->where('ranking.kasus_id',$kasus_id);
          $result = $rangking->get('ranking.*, alternatif.*',
            [
              ['table'=>'alternatif','condition'=>'alternatif.id_alternatif = ranking.alternatif_id']
            ]);
          $no=1;
          foreach ($result as $row4) { ?>
        <h3>Rangking <?php echo $no.' '.$row4->deskripsi.' = '.$row4->bobot ?> </h3>
      <?php $no++; } ?>
      </div>
      <div class="col-md-12">
        <br>
        <a class="btn btn-primary" href="<?php echo base_url(); ?>">Beranda</a>
      </div>
    </div>
  </div>
</div>
