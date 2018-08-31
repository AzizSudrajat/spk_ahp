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
            <form class="" action="<?php echo base_url('alternatif/default_update/'.$form['id_alternatif']); ?>" method="post">
              <input type="hidden" name="default" value="1">
              <input type="hidden" name="id_alternatif" value="<?php echo isset($form['id_alternatif']) ? $form['id_alternatif'] : '' ?>">
              <?php include('_form.php') ?>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
