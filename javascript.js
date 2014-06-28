$(document).ready(function(){
	$("#n-biaya-speedy").text($("#k-speedy").val());
	total("biaya-speedy");
	data_rekap();
	$("#rekap-bep").text(parseFloat($("#ttl-rekap").text())/parseFloat($("#bep").val()));
	
	rata_rata();
	tabel_pendapatan();
});

$("body").on("change",".pilih",function(){
	
	var id=$(this).attr("kelas");
	if(id=="speedy"){
		$("#n-biaya-"+id).text($("#k-"+id).val());
		total("biaya-"+id);
	}else{
		$("#n-"+id).text($("#k-"+id).val());
		total(id);
	}
	
});

var click=false;
var comp;
$("body").on("dblclick",".input",function(){
	if(click){
		$("#j-"+comp).text($(".input-enter").val());
		total(comp);
	}
	comp=$(this).attr("kelas");
	$(this).html('<input type="text" value="'+$(this).text()+'" class="input-enter" />');
	$(".input-enter").focus();
	click=true;
});
$("body").on('keypress','.input-enter',function(event){
	var keycode = (event.keyCode ? event.keyCode : event.which);
	if(keycode == '13'){
		var nilai=0;
	    if($(".input-enter").val()!=""){
			nilai=$(".input-enter").val();
		}
		$("#j-"+comp).text(nilai);
		click=false;
		total(comp);
	}
});

$("body").on("keyup",".input-enter",function(){
	if($(this).val()!=""){
		$("#t-"+comp).text(parseFloat($(this).val())*
						parseFloat($("#n-"+comp).text()));
	}else{
		$("#t-"+comp).text(0);
	}
	total_per_tabel(comp);
});

function total(name){
	if($("#j-"+name).text()!=""){
		$("#t-"+name).text(parseFloat($("#j-"+name).text())*
						parseFloat($("#n-"+name).text()));
	}else{
		$("#t-"+comp).text(0);
	}
	total_per_tabel(name);
}


function total_per_tabel(nm){
	var isi=$("#j-"+nm).attr("isi");
	id_arr=isi.split(",");
	var ttl=0;
	for(var x in id_arr){
		ttl+=parseFloat($("#t-"+id_arr[x]).text());
	}
	$("#ttl-"+$("#j-"+nm).attr("tabel")).text(ttl);
	
	data_rekap();
}

function data_rekap(){
	$("#rekap-awal").text($("#ttl-dana-awal").text());
	$("#rekap-pengadaan").text($("#ttl-dana-pengadaan").text());
	$("#rekap-tahunan").text($("#ttl-dana-rutinitas-tahunan").text());
	total_rekap();
	rata_rata();
}
function total_rekap(){
	
	$("#ttl-rekap").text((parseFloat($("#rekap-awal").text())+parseFloat($("#rekap-pengadaan").text())+
									parseFloat($("#rekap-tahunan").text())));
									
}
$("body").on("keyup","#bep",function(){
	$("#rekap-bep").text(parseFloat($("#ttl-rekap").text())/parseFloat($(this).val()));
	rata_rata();
});
$("body").on("keyup","#profit",function(){
	rata_rata();
});
function rata_rata(){
	$("#rekap-bulan").text($("#ttl-dana-rutinitas-bulanan").text());
	$("#ttl-rekap-bulan").text(parseFloat($("#rekap-bulan").text())+parseFloat($("#rekap-bep").text())+
								parseFloat($("#profit").val()));
	$("#ttl-rekap-hari").text(parseFloat($("#ttl-rekap-bulan").text())/30);
	tabel_pendapatan();
}

$("body").on("keyup","#biaya-sewa",function(){
	tabel_pendapatan()
});$("body").on("keyup","#jam",function(){
	tabel_pendapatan()
});
function tabel_pendapatan(){
	var uang=$("#biaya-sewa").val();
	var jam=$("#jam").val();
	var komputer=$("#j-komputer-client").text();
	var tabel="";
	for(var i=0;i<(parseInt(komputer)+2);i++){
		tabel+="<tr>";
		for(var j=0;j<=parseInt(jam);j++){
			var no_komp=i-1;;
			var jam_op=j;
			if(i==0 && j==0){
				tabel+='<td rowspan="2">Jumlah<br>KOmputer</td>';
			}else if(i==0&&j==1){
				tabel+='<td align="center" colspan="'+jam+'">Operasional</td>';
			}else if(i==1&& j>1){
				tabel+='<td>'+jam_op+'</td>';
			}else if(i>=1&&j==0){
				
				tabel+='<td>'+no_komp+'</td>';
			}else if(i>=2&&j>=1){
				var uang_komp=parseFloat(uang)*jam_op*no_komp;
				if(uang_komp>=parseFloat($("#ttl-rekap-hari").text())){
					tabel+='<td class="aman">'+uang_komp+'</td>';
				}else{
					tabel+='<td>'+uang_komp+'</td>';
				}
			}
		}
		tabel+="</tr>";
	}
	$("#tabel-pendapatan").html(tabel);
}