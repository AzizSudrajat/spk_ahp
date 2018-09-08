<!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Lakukan Log in Untuk Menggunakan Sistem </h4>

                </div>

            </div>
            <div class="row">
                <div class="col-md-6">
                    <h4> Masuk <strong> Sistem Pendukung Keputusan :</strong></h4>
                    <br />
                    <form class="" action="<?php echo base_url('login/auth') ?>" method="post">
                      <label>Masukan Username : </label>
                      <input type="text" class="form-control" name="username" />
                      <label>Masukan Password :  </label>
                      <input type="password" class="form-control" name="password" />
                      <hr />
                      <button class="btn btn-info" type="submit"><span class="glyphicon glyphicon-user"></span> Masuk Akun</button>
                    </form>
                </div>
                <div class="col-md-6">
                    <div class="alert alert-info">
                        Sistem ini di gunakan untuk menentukan karyawan terbaik pada periode nya. Ditentukan dengan beberapa Kriteria dan Alternatif yang dapat di kelolah di dalam Sistem ini.
                        <br />
                         <strong> Beberapa Fitur di dalam Sistem Pendukung Keputusan ini :</strong>
                        <ul>
                            <li>Pengelolahan Data Kriteria</li>
                            <li>Pengelolahan Data Nilai</li>
                            <li>Pengelolahan Data Alternatif (Karyawan)</li>
                            <li>Penganalisisan Data Kriteria Untuk Mendapatkan Kriteria Prioritas</li>
                            <li>Penganalisisan Data Alternatif Pada Setiap Kriteria nya</li>
                            <li>Perankingan Alternatif</li>
                            <li>Chart Untuk Menampilkan Ranking Alternatif</li>
                        </ul>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
