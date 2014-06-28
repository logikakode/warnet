<?php 
	function tabel_dana($nama_tabel){
?>
<table >
	<tr class="atas-table">
		<td>No</td>
		<td>Keterangan</td>
		<td class="text-tengah">Kelas</td>
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
					<td class="text-tengah">';
					if($row['kelas']!="-"){
						echo '<select id="k-'.$row['id'].'" class="pilih" kelas="'.$row['id'].'" >';
							$query2=mysql_query("select * from ".$row['kelas']);
							$acak=rand(1,mysql_num_rows($query2));
							$no=0;
							while($row2=mysql_fetch_array($query2)){
								$no++;
								if($no==$acak){
									echo '<option value="'.$row2['nominal'].'" selected="selected" >'.$row2['kelas'].'</option>';
									$nominal=$row2['nominal'];
								}else{
									echo '<option value="'.$row2['nominal'].'">'.$row2['kelas'].'</option>';
								}
								
							}
						echo '</select>';
						
						
					}else{
						echo $row['kelas'];
						$nominal=$row['nominal'];
						
					}
					echo '</td>';
					echo '
					<td class="text-tengah input" id="j-'.$row['id'].'" kelas="'.$row['id'].'" tabel="'.str_replace("_","-",$nama_tabel).'" isi="'.$isi_id.'"  >'.$row['jumlah'].'</td>
					<td class="text-kanan"  id="n-'.$row['id'].'">'.$nominal.'</td>
					<td class="text-kanan" id="t-'.$row['id'].'">'.$row['jumlah']*$nominal.'</td>
				<tr>
				<tr>
			';
			$total+=($row['jumlah']*$nominal);
		}
	
	?>
	<tr class="bawah-table">
		<td  class="text-tengah" colspan="5">Total <?php echo str_replace("_"," ",$nama_tabel); ?></td>
		<td  class="text-kanan" id="ttl-<?php echo str_replace("_","-",$nama_tabel); ?>">
			<?php echo $total; ?>
		</td>
	</tr>
</table>
<?php
	}
?>

