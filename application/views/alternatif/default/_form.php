<div class="form-group">
  <label for="id_alternatif">ID Alternatif</label>
  <input type="text" name="id_alternatif" class="form-control" id="id_alternatif" placeholder="Contoh : A1" value="<?php echo isset($form['id_alternatif']) ? $form['id_alternatif'] : '' ?>" <?php echo isset($form['id_alternatif']) ? 'disabled' : 'required' ?> />
</div>
<div class="form-group">
  <label for="nama_kriteria">Nama Alternatif</label>
  <input type="text" name="nama_alternatif" class="form-control" id="nama_alternatif" placeholder="Contoh : Alternatif 1" value="<?php echo isset($form['nama_alternatif']) ? $form['nama_alternatif'] : '' ?>" required/>
</div>
<div class="form-group">
  <label for="deskripsi">Deskripsi</label>
  <input type="text" name="deskripsi" class="form-control" id="deskripsi" placeholder="Contoh : Fathi Khairina" value="<?php echo isset($form['deskripsi']) ? $form['deskripsi'] : '' ?>" />
</div>
<button onclick="history.go(-1);" class="btn btn-danger">Kembali</button>
<button type="submit" class="btn btn-primary">Proses</button>
