document.body.style.color ="black";

var search=window.location.search;

array=[0,0,0,0];
for(var i=0;i<4;i++){
	var num=search.indexOf("=");
	search=search.substr(num+1);
	array[i]=parseInt(search);
}
var steaks=array[0];
var player=array[1];
var num=array[2]
var count=array[3];

if (player==2 && steaks<=0){
	alert("ТРО ЛО ЛО, СЕРВЕР, ТЫ ПРОДУЛ!");
}

if (player==2 && steaks>0){
	var n= 1+ 2*Math.round(Math.random());
	steaks=steaks-n;
	player=1;
	count++;
	document.write("Браузер сходил: Палочек:" + steaks +" Сервер,не спи!");
	window.location="http://localhost:3000/?steaks="+steaks+"&player="+player+"&n="+n+"&count="+count;
}

	



