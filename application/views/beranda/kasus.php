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
                  <?php
                  $x = $this->AlternatifModel;
                  $this->db->distinct();
                  $this->db->select('kriteria_id');
                  $x->where('kasus_id', $kasus_id);
                  $xr = $x->getbobot()->result();
                  foreach ($xr as $row){ ?>
                    <th><?php echo $row->kriteria_id; ?></th>
                  <?php } ?>
                </tr>
              </thead>
              <tbody>
                <?php
                $y = $this->AlternatifModel;
                $this->db->distinct();
                $this->db->select('alternatif_id');
                $y->where('kasus_id', $kasus_id);
                $yr = $y->getbobot()->result();
                foreach ($yr as $row2) { ?>
                  <tr>
                    <th><?php echo $row2->alternatif_id; ?></th>
                  <?php
                  $model1 = $this->AlternatifModel;
                  $model1->where('kasus_id',$kasus_id);
                  $model1->where('alternatif_id',$row2->alternatif_id);
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
          $rangking->where('kasus_id',$kasus_id);
          $result = $rangking->get();
          $no=1;
          foreach ($result as $row4) { ?>
        <h3>Rangking <?php echo $no.' '.$row4->deskripsi.' = '.$row4->bobot ?> </h3>
      <?php $no++; } ?>
      </div>
      <div class="col-md-10">
        <br>
        <a class="btn btn-primary" href="<?php echo base_url(); ?>">Beranda</a>
      </div>
      <div class="col-md-2">
        <br>
        <a class="btn btn-success" href="<?php echo base_url('beranda/laporan/'.$kasus_id); ?>">Download Laporan</a>
      </div>
    </div>
  </div>
</div>
