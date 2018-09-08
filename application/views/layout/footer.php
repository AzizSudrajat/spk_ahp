<!-- CONTENT-WRAPPER SECTION END-->
<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
        <h3><b>Tentang Kami</b></h3>
        <p style="text-align: justify">
          PT. Bando adalah salah satu produsen sabuk transmisi otomotif dan industri terkemuka di Indonesia. Ini memiliki satu pabrik utama yang berlokasi di Tangerang dan kantor pemasarannya berlokasi di Jakarta Pusat. Perusahaan ini didirikan pada tahun 1987
         </p>

        </div>
        <div class="col-md-2 list">
          <ul>
            <li><a href="<?php echo base_url(); ?>">Beranda</a></li>
            <li><a href="<?php echo base_url('kriteria'); ?>">Data Kriteria</a></li>
            <li><a href="<?php echo base_url('nilai'); ?>">Data Nilai</a></li>
            <li><a href="<?php echo base_url('alternatif'); ?>">Data Alternatif</a></li>
          </ul>

        </div>
        <div class="col-md-2 list">
          <ul>
            <li><a href="<?php echo base_url('kriteria/analisa'); ?>">Analisis Kriteria</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5><strong>Informasi Kontak</strong></h5>
          <p><strong>Alamat :</strong> Jln. Gajah Tunggal Km. 7 Tangerang Kel. Pasir Jaya, Kecamatan Jati Uwung Kotamadya, Tangeran
          </p>
          <p><strong>Email :</strong> vbelt.div@bandoindonesia.com</p>
          <p><strong>Phone :</strong> (021) 590 3921 - 24</p>
          <p><strong>Fax :</strong> (021) 590 1274, 590 3937</p>
        </div>
      </div>
    </div>
  </div>

  <div class="footer-bottom">
    <div class="container">
        <div class="pull-left"> Copyright 2018 © PT Bando Indonesia. All right reserved.</div>
    </div>
  </div>
</footer>
<!-- FOOTER SECTION END-->

  <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
  <!-- jQuery 2.2.3 -->
  <script src="<?php echo base_url(); ?>public/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <!-- CORE JQUERY SCRIPTS -->
  <script src="<?php echo base_url(); ?>public/js/jquery-1.11.1.js"></script>
  <!-- BOOTSTRAP SCRIPTS  -->
  <script src="<?php echo base_url(); ?>public/js/bootstrap.js"></script>
  <!-- LIBRARY -->
  <script src="<?php echo base_url(); ?>public/js/Highcharts.js"></script>
  <!-- DataTables -->
  <script src="<?php echo base_url(); ?>public/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url(); ?>public/plugins/datatables/dataTables.bootstrap.min.js"></script>
  <script>
  $(function () {
    $("#example1").DataTable();
    $(".table").DataTable();
    $('#example2').DataTable();
    $('.tanggal').datepicker({
      autoclose: true
    });
  });
</script>
</body>
</html>
