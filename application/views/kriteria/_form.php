<div class="form-group">
  <label for="id_kriteria">ID Kriteria</label>
  <input type="text" name="id_kriteria" class="form-control" id="id_kriteria" placeholder="Contoh : C1" value="<?php echo isset($form['id_kriteria']) ? $form['id_kriteria'] : '' ?>" <?php echo isset($form['id_kriteria']) ? 'disabled' : 'required' ?> />
</div>
<div class="form-group">
  <label for="nama_kriteria">Nama Kriteria</label>
  <input type="text" name="nama_kriteria" class="form-control" id="nama_kriteria" placeholder="Contoh : Kriteria 1" value="<?php echo isset($form['nama_kriteria']) ? $form['nama_kriteria'] : '' ?>" required/>
</div>
<div class="form-group">
  <label for="deskripsi">Deskripsi</label>
  <input type="text" name="deskripsi" class="form-control" id="deskripsi" placeholder="Contoh : Kehadiran" value="<?php echo isset($form['deskripsi']) ? $form['deskripsi'] : '' ?>" />
</div>
<button onclick="history.go(-1);" class="btn btn-danger">Kembali</button>
<button type="submit" class="btn btn-primary">Proses</button>
