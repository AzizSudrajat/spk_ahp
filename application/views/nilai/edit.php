<!-- MENU SECTION END-->
<div class="content-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h4 class="page-head-line">Tambah Kriteria</h4>
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
            <form class="" action="<?php echo base_url('nilai/update/'.$form['id_nilai']); ?>" method="post">
              <input type="hidden" name="id_nilai" value="<?php echo isset($form['id_nilai']) ? $form['id_nilai'] : '' ?>">
              <?php include('_form.php') ?>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
