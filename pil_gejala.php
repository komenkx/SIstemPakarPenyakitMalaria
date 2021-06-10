<?php 
include 'koneksi.php';
?>
<center>
<form class="col-lg-6  col-12" method="POST" action="proses.php">
<h2 class="m-0">Silahkan</h2>
<h2>Jawab Pertanyaan Di Bawah</h2>
  <div style="overflow: scroll; height: 467px;">
	<?php
	$qry="select * from tb_gejala_1";
	$data=mysqli_query($kon,$qry);
	while ($d=mysqli_fetch_array($data)) {
	?>
	<div class="input-group mb-3">
<input type="text" class="form-control" aria-label="Text input with checkbox" value="Apakah anda mengalami <?=$d['gejala']?> ?" disabled>
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input style="margin-right:5px;" type="checkbox" aria-label="Checkbox for following text input" value="<?=$d['kode']?>" name="<?=$d['id']?>">
    </div>
  </div>
</div>
	<?php
	}
	?>
  </div>
<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" onclick="return confirm('Apakah gejala yang anda masukan sudah benar?')" value="Submit Gejala">
</form>
</center>
