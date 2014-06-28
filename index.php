<?php 
	include "koneksi.php"; 
	include "tabel.php";
	include "tabel_rutinitas.php";

	$nominal=0;
	$acak=0;
?>
<html>
	<head>
		<title>Aplikasi Simulasi Bisnis Plan Warnet</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript" src="jquery.min.js"></script>
		
	</head>
	<body>
		
		<div class="kertas " id="btn-dana-awal">
			<p class="header">Studi Kasus Untuk Pengambilan Keputusan <br />dalam Berbisnis Warnet</p>
			
			<p class="judul">1. Dana Awal</p>
			<?php tabel_dana('dana_awal'); ?>
			
		</div>
		<div class="kertas " id="btn-dana-pengadaan">
			<p class="judul">2. Dana Pengadaan</p>
			<?php tabel_dana('dana_pengadaan'); ?>
		</div>
		<div class="kertas " id="btn-dana-rutin">
			<p class="judul">3. Dana Rutinitas Bulanan</p>
			<?php tabel_rutin('dana_rutinitas_bulanan'); ?>
			
			<p class="judul">4. Dana Rutinitas Tahunan</p>
			<?php tabel_rutin('dana_rutinitas_tahunan'); ?>
			
		</div>
		<div class="kertas" id="btn-rekap-biaya">
			
			<?php include "tabel_rekap.php"; ?>
			
			
		</div>
		
		<div class="kertas" id="btn-pendapatan">
			<p class="judul">Pendapatan</p>
			<?php include "tabel_pendapatan.php"; ?>
			
			
		</div>
		
		<div id="content-nav">
			<a class="btn" href="#btn-dana-awal">Dana Awal</a>
			<a class="btn" href="#btn-dana-pengadaan">Dana Pengadaan</a>
			<a class="btn" href="#btn-dana-rutin">Dana Rutinitas </a>
			<a class="btn" href="#btn-rekap-biaya">Rekap Biaya </a>
			<a class="btn" href="#btn-pendapatan">Pendapatan </a>
		</div>
		<script type="text/javascript" src="javascript.js"></script>
	</body>
</html>