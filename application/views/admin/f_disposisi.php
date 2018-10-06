<?php 
$q_instansi	= $this->db->query("SELECT * FROM tr_instansi LIMIT 1")->row();
?>

<html>
<head>
<style type="text/css" media="print">
	#header{
		font:  Segoe UI;
		
	}
	#header  img{
		height: 36.8mm;
		width: 36.8mm;
		
	}
	#header .right{
		text-align: center;
		margin-top: -135px;
		position: relative;
		left: 100px;
	}
	#header .right h2{
		margin-top: -5px;
		line-height: 35px;
	}
	#header .right h3{
		margin-top: -10px;
		word-spacing: 5px;
	}

	
</style>
<style type="text/css" media="screen">
	#header{
		font: Segoe UI;
		
	}
	#header  img{
		height: 36.8mm;
		width: 36.8mm;
		float: left;
	}
	#header .right{
		float: right;
		text-align: center;
	}

	
</style>
</head>

<body onload="window.print()">
<div id="header">
	<div class="img">
		<img src="<?php echo base_url(); ?>aset/img/logo.jpg" class='img-responsive'  >
	</div>
	<div class="right"  >
		<h2>KEMENTERIAN RISET, TEKNOLOGI DAN PENDIDIKAN TINGGI <br> FAKULTAS TEKNIK UNIVERSITAS MATARAM <br> JURUSAN TEKNIK ELEKTRO </h2>
		<h3>Jalan Majapahit No.62 Mataram Telpon (0370)636755 Fax. (0370)636523</h3>
	</div>

</div>
<hr width="108%" color="#000">
<table style="font-size: 20px;">
	<tr>
		<td style="position: relative;left: 30px;">Tgl. Terima : <?php echo tgl_jam_sql($datpil1->tgl_diterima); ?></td>
		<td style="position: relative;left: 235px;">Lembar Disposisi No : <?php foreach ($datpil3 as $d3) {
			echo $d3->no_disp;
		} ?></td>
	</tr>
</table>
   <hr width="108%" color="#000">
   <table style="font-size: 20px;">
   	<tr>
   		<td style="position: relative;left: 30px;">Dari : <?php foreach ($datpil4 as $d4) {
   			echo $d4->dari;
   		} ?> </td>
   	</tr>
   	<tr>
   		<td style="position: relative;left: 30px;">Sifat : <?php foreach ($datpil3 as $d3) {
   			echo $d3->sifat;
   		} ?> </td>
   	</tr>
   </table>
   <table style="font-size: 20px; margin-top: -55px;">
   	<tr>
   		<td style="position: relative; left: 450px; margin-top: 30px;">Tanggal Surat : <?php echo tgl_jam_sql($datpil1->tgl_surat) ?></td>
   	</tr>
   	<tr>
   		<td style="position: relative; left: 450px; margin-top: 30px;">Nomor Surat  : <?php echo $datpil1->no_surat; ?></td>
   	</tr>
   	<tr>
   		<td style="position: relative; left: 450px; margin-top: 30px;">Perihal </td><td style="position: relative; left: 330px;">:</td><td style="position: relative;left: 260px;"><?php echo $datpil1->perihal; ?></td>
   	</tr>
   </table>
   <table style="border: solid 1px #000; border-collapse: collapse; width: 100%; margin-top:20px; position: relative; left: 40px; font-size: 20px;">
   		<tr style="border: solid 1px #000">
   			<td style="height: 350px" valign="top" colspan="2"><b>Isi Disposisi : </b> <br><br>

				<ol style="position: relative;margin-top: -5px;">
				<?php 
				if (!empty($datpil3)) {
					foreach ($datpil3 as $d3) {
						echo "<li><b><i>".$d3->isi_disposisi."</i></b></li>";
					}
				}
				?>
				</ol>
				
	
				<td valign="top" width="50%" style="border-left: solid 1px">
				Diteruskan kepada  : 
				<ol>
				<?php 
				if (!empty($datpil2)) {
					foreach ($datpil2 as $dp) {
						echo "<li>".$dp->kpd_yth."</li>";
					}
				}
				?>
				</ol>
				</td>
			</td>
   		</tr>
   </table>
   </body>
</body>
</html>
