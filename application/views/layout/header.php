<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>PT Bando Indonesia</title>
  <link rel="icon" type="image/x-icon" href="<?php echo base_url() ?>public/img/favicon.ico" />
  <!-- BOOTSTRAP CORE STYLE  -->
  <link href="<?php echo base_url() ?>public/css/bootstrap.css" rel="stylesheet" />
  <!-- FONT AWESOME ICONS  -->
  <link href="<?php echo base_url() ?>public/css/font-awesome.css" rel="stylesheet" />
  <!-- LIBRARY STYLE  -->
  <link href="<?php echo base_url(); ?>public/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" >
  <!-- CUSTOM STYLE  -->
  <link href="<?php echo base_url() ?>public/css/style.css" rel="stylesheet" />
  <link href="<?php echo base_url() ?>public/css/custom.css" rel="stylesheet" />
</head>

<body>
  <div class="navbar navbar-inverse set-radius-zero">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
        <a class="navbar-brand" href="index.html">
                    <img class="img-responsive" src="<?php echo base_url() ?>public/img/logo.png" />
                </a>
      </div>


      <div class="left-div">
        <div class="user-settings-wrapper">

          <ul class="nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
              </a>
              <?php if (!$this->session->has_userdata('login')): ?>

              <?php else: ?>
                <?php
                $users = $this->session->userdata('user');
                 ?>
              <div class="dropdown-menu dropdown-settings">
                <div class="media">
                  <a class="media-left" href="#">
                                        <img src="<?php echo base_url() ?>public/img/64-64.jpg" alt="" class="img-rounded" />
                                    </a>
                  <div class="media-body">
                    <h4 class="media-heading"><?php echo $users['username']; ?> </h4>
                    <h5><?php echo $users['deskripsi']; ?></h5>
                  </div>
                </div>
                <br>
                <a href="<?php echo base_url('login/logout') ?>" class="btn btn-danger btn-sm">Keluar</a>
              </div>
              <?php endif; ?>
            </li>
          </ul>
        </div>
      </div>

    </div>
  </div>
  <!-- LOGO HEADER END-->

  <?php if (!$this->session->has_userdata('login')): ?>

  <?php else: ?>


  <section class="menu-section">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="navbar-collapse collapse pull-left">
            <ul id="menu-top" class="nav navbar-nav navbar-right">
              <li class="<?php echo activate_menu('beranda') ?>"><a  href="<?php echo base_url(); ?>">Beranda</a></li>
              <li class="<?php echo activate_menu('nilai') ?>"><a href="<?php echo base_url('nilai'); ?>">Data Nilai</a></li>
              <li class="dropdown <?php echo activate_menu('kriteria') ?>">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Kriteria
                  <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="<?php echo base_url('kriteria'); ?>">Data Kriteria</a></li>
                  <li><a href="<?php echo base_url('kriteria/analisa'); ?>">Analisis Kriteria</a></li>
                </ul>
              </li>
              <li class="<?php echo activate_menu('alternatif') ?>"><a href="<?php echo base_url('alternatif'); ?>">Data Alternatif</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
<?php endif; ?>
