<div class="form-group">
  <label for="id_nilai">ID Nilai</label>
  <input type="text" name="id_nilai" class="form-control" id="id_nilai" placeholder="Contoh : N1" value="<?php echo isset($form['id_nilai']) ? $form['id_nilai'] : '' ?>" <?php echo isset($form['id_nilai']) ? 'disabled' : 'required' ?> />
</div>
<div class="form-group">
  <label for="jumlah_nilai">Jumlah Nilai</label>
  <input type="text" name="jumlah_nilai" class="form-control" id="jumlah_nilai" placeholder="Contoh : 1 - 9" value="<?php echo isset($form['jumlah_nilai']) ? $form['jumlah_nilai'] : '' ?>" required/>
</div>
<div class="form-group">
  <label for="deskripsi">Deskripsi</label>
  <input type="text" name="deskripsi" class="form-control" id="deskripsi" placeholder="Contoh : Sangat Penting" value="<?php echo isset($form['deskripsi']) ? $form['deskripsi'] : '' ?>" />
</div>
<button onclick="history.go(-1);" class="btn btn-danger">Kembali</button>
<button type="submit" class="btn btn-primary">Proses</button>
