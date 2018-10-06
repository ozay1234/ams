

<?php
$mode		= $this->uri->segment(3);

if ($mode == "edt" || $mode == "act_edt") {
	$act		= "act_edt";
	$idp		= $datpil->id;
	$no_agenda	= $datpil->no_agenda;
	$kode		= $datpil->kode;
	$asal		= $datpil->asal;
	$tujuan 	= $datpil->tujuan;
	$no_surat	= $datpil->no_surat;
	$tgl_surat	= $datpil->tgl_surat;
	$perihal	= $datpil->perihal;
	$ket		= $datpil->keterangan;
	
} else {
	$act		= "act_add";
	$idp		= "";
	$no_agenda	= $nomer_terakhir;
	$kode		= "";
	$asal		= "";
	$tujuan		= "";
	$no_surat	= "";
	$tgl_surat	= "";
	$perihal	= "";
	$ket		= "";
}
?>

	<div class="panel panel-info">
		<div class="panel-heading"><h3 style="margin-top: 5px">Surat Masuk</h3></div>
	</div>

	<form action="<?php echo base_URL(); ?>index.php/admin/surat_masuk/<?php echo $act; ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	
	<input type="hidden" name="idp" value="<?php echo $idp; ?>">
	
	
	<div class="row-fluid well" style="overflow: hidden">
		
	<div class="col-lg-6">
		<table  class="table-form">
		<tr><td width="20%">No. Agenda</td><td><b><input type="text" name="no_agenda" autofocus tabindex="1" required value="<?php echo $no_agenda; ?>" style="width: 100px" class="form-control"></b></td></tr>
		<tr><td width="20%">Asal Surat</td><td><b><input type="text" name="asal" tabindex="2" required value="<?php echo $asal; ?>" id="asal" style="width: 400px" class="form-control"></b></td></tr>
		<tr><td width="20%">Tujuan Surat</td><td><b><input type="text" name="tujuan" tabindex="2" required value="<?php echo $tujuan; ?>" id="tujuan" style="width: 400px" class="form-control"></b></td></tr>
		<tr><td width="20%">Nomor Surat</td><td><b><input type="text" name="no_surat" tabindex="3" required value="<?php echo $no_surat; ?>" style="width: 300px" class="form-control"></td></tr>	
		<tr><td width="20%">Perihal</td><td><b><textarea name="perihal" tabindex="4" required style="width: 400px; height: 90px" class="form-control"><?php echo $perihal; ?></textarea></b></td></tr>	
		<tr><td colspan="2">
		<br><button type="submit" class="btn btn-primary"tabindex="10" ><i class="icon icon-ok icon-white"></i> Simpan</button>
		<a href="<?php echo base_URL(); ?>index.php/admin/surat_masuk" class="btn btn-success" tabindex="11" ><i class="icon icon-arrow-left icon-white"></i> Kembali</a>
		</td></tr>
		</table>
	</div>
	
	<div class="col-lg-6">	
		<table  class="table-form">
		<tr><td width="20%">Kode Klasifikasi</td><td><b><input type="text" name="kode" tabindex="5" id="kode_surat" required value="<?php echo $kode; ?>" style="width: 100px" class="form-control"></b></td></tr>
		<tr><td width="20%">Tanggal Surat</td><td><b><input type="text" name="tgl_surat" tabindex="7" required value="<?php echo $tgl_surat; ?>" id="tgl_surat" style="width: 100px" class="form-control"></b></td></tr>	
		<tr><td width="20%">File Surat (Scan)</td><td><b><input type="file" name="file_surat" tabindex="8" class="form-control" style="width: 200px"></b></td></tr>
		<tr><td width="20%">Keterangan</td><td><b><input type="text" name="ket" value="<?php echo $ket; ?>" tabindex="9" style="width: 400px" class="form-control"></b></td></tr>	
		</table>	
	</div>

	</div>
	
	</form>
