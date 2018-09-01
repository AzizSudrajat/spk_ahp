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
            <form class="" action="<?php echo base_url('alternatif/analisa_alternatif/'.$kasus_id.'/'.$kriteria_id); ?>" method="post">
              <?php include('_form.php') ?>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
