<!-- CONTENT-WRAPPER SECTION END-->
<footer>
  <div class="footer-bottom">
    <div class="container">
        <div class="text-center"> Copyright 2018 © PT Bando Indonesia. All right reserved.</div>
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
    var chart1; // globally available
    $(document).ready(function() {
      chart1 = new Highcharts.Chart({
        chart: {
          renderTo: 'container2',
          type: 'column'
        },
        title: {
          text: 'Grafik Perangkingan '
        },
        xAxis: {
          categories: ['Alternatif']
        },
        yAxis: {
          title: {
            text: 'Jumlah Nilai'
          }
        },
        series: [
          <?php foreach ($chart as $row){ ?>
            {
              name: '<?php echo $row->nama_alternatif.'( '.$row->deskripsi.' )'; ?>',
              data: [<?php echo $row->bobot; ?>]
            },
          <?php } ?>


        ]
      });
    });
  </script>
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
