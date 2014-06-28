<?php 
	function tabel_rutin($nama_tabel){
?>
<table>
	<tr class="atas-table">
		<td>No</td>
		<td>Keterangan</td>
		<td class="text-tengah">Jumlah</td>
		<td class="text-tengah">Nominal</td>
		<td class="text-tengah">Total</td>
	</tr>
	<?php
		$total=0;
		$no=0;
		$isi_id="";
		$n=0;
		$sql=mysql_query("select id from tbl_".$nama_tabel);
		while($row=mysql_fetch_array($sql)){
			$isi_id.=$row['id'];
			$n++;
			if($n!=mysql_num_rows($sql)){
				$isi_id.=",";
			}
		}
		$query=mysql_query("select * from tbl_".$nama_tabel);
		
		while($row=mysql_fetch_array($query)){
			
			echo '
				<tr >
					<td >'.$row['no'].'</td>
					<td>'.$row['keterangan'].'</td>
					<td id="j-'.$row['id'].'" class="input text-tengah" kelas="'.$row['id'].'" tabel="'.str_replace("_","-",$nama_tabel).'" isi="'.$isi_id.'"  >'.$row['jumlah'].'</td>
					<td   class="text-kanan" id="n-'.$row['id'].'">'.$row['nominal'].'</td>
					<td   class="text-kanan" id="t-'.$row['id'].'">'.$row['jumlah']*$row['nominal'].'</td>
				<tr>
				<tr>
			';
			$total+=($row['jumlah']*$row['nominal']);
		}
	
	?>
	
	<tr class="bawah-table">
		<td  class="text-tengah" colspan="4">Total <?php echo str_replace("_"," ",$nama_tabel); ?></td>
		<td  class="text-kanan" id="ttl-<?php echo str_replace("_","-",$nama_tabel); ?>">
			<?php echo $total; ?>
		</td>
	</tr>
</table>
<?php
	}
?>

