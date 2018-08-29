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
            <a class="btn btn-primary pull-right" href="<?php echo base_url('nilai/create'); ?>">Tambah Nilai</a>
          </div>
          <div class="panel-body">
            <?php include('_table.php') ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
