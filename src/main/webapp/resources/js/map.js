var g_map;
var items = [1,2,3,4,5,6,7,8,9];
var latlng = (37.502231, 127.039549)
var mapOption = {
	center : new kakao.maps.LatLng(37.502231, 127.039549),
	level : 2
};
var markers = [];

window.addEventListener("load", function() {

	makeMap(mapOption);
	makeMarkers(items);
	makeZoomButtonListener();
	makeMarkerListener();
	checkbox();
});

function checkbox(){

	$("input:checkbox").click(function() {

		items= [];
		$('input:checkbox[type=checkbox]:checked').each(function() {
			items.push($(this).val());
		});
		hideMarkers();
		makeMarkers(items);
	});
}

function makeMap(mapOption) {
	var mapContainer = document.getElementById('map');
	g_map = new kakao.maps.Map(mapContainer, mapOption);
	g_map.setZoomable(false);
};

function makeZoomButtonListener() {
	// 줌 인 아웃 버튼
	document.getElementById('zoomIn').addEventListener("click", function() {
		g_map.setLevel(g_map.getLevel() - 1);
	});
	document.getElementById('zoomOut').addEventListener("click", function() {
		g_map.setLevel(g_map.getLevel() + 1);
	});

	// 현재 위치로 이동 버튼
	document
	.getElementById('locationMe')
	.addEventListener(
			"click",
			function() {
				locPosition = null;
				if (navigator.geolocation) {
					navigator.geolocation
					.getCurrentPosition(function(position) {
						var lat = position.coords.latitude, lon = position.coords.longitude;
						locPosition = new kakao.maps.LatLng(lat
								.toString(), lon.toString());
						g_map.setCenter(locPosition);
					});
				} else {
					locPosition = new kakao.maps.LatLng(37.502231,
							127.039549),
							message = 'geolocation을 사용할수 없어요..'
								g_map.setCenter(locPosition);
				}
			})
};

function makeMarkers(items) {

	var mapBound = g_map.getBounds();
	var latLngNE = mapBound.getNorthEast();
	var latLngSW = mapBound.getSouthWest();



	var bounds = {
			"E" : latLngNE.getLng(),
			"N" : latLngNE.getLat(),
			"S" : latLngSW.getLat(),
			"W" : latLngSW.getLng(),
			items};
	$.ajax({
		url : 'getMarkers.do',
		type : 'post',
		dataType : 'json',
		contentType : 'application/json',
		success : function(data) {
			drawSpot(data);
		},
		data : JSON.stringify(bounds)
	});
};

//지도 idle 이벤트 시 마커 새로 생성
function makeMarkerListener() {

	kakao.maps.event.addListener(g_map, 'idle', function() {
		makeMarkers(items)
	});
};


//makeMarkerListener() 함수의 ajax이 success일 경우 (DB의 정보를 기반으로 마커 형성하는 함수)
function drawSpot(list) {
	list.forEach(function(d,i) {
		var markerPositionLngLat = new kakao.maps.LatLng(d.store_y,d.store_x);
		var pic = [ 'resources/assets/img/markers/korea.png', 'resources/assets/img/markers/cafe.png', 'resources/assets/img/markers/china.png',
			'resources/assets/img/markers/chicken.png',  'resources/assets/img/markers/res.png',  'resources/assets/img/markers/res.png',
			'resources/assets/img/markers/one.png',  'resources/assets/img/markers/japan.png', 'resources/assets/img/markers/bread.png' ];
		var imageSize = new kakao.maps.Size(64, 69),
		imageOption = {offset : new kakao.maps.Point(27, 69)};

		var markerImage;
		var category = d.category_id;
		for(var k=1; k<10; k++) {
			if(category==k){
				markerImage = new kakao.maps.MarkerImage(pic[k-1], imageSize, imageOption);
			}
		}
		var marker = new kakao.maps.Marker({
			title : d.store_name,
			position : markerPositionLngLat,
			clickable: true ,
			image:markerImage
		});
		marker.setMap(g_map);
		markers.push(marker);

		kakao.maps.event.addListener(marker, 'click', function(){
			var name = marker.getTitle();
			var y = marker.getPosition().getLat();
			var x = marker.getPosition().getLng();
			//인포윈도우<div>의 내부 코드 (String, HTML code 기재 가능)
			var iwContent = '<div style="padding:5px; color:black; "><h5 style="font-size:5px;">'+marker.getTitle()+'</h5>'+
			'   <a href="javascript:void(0);" onclick="visibleInfo(this)" store_name='+name+' x='+x+' y='+y+
			'>상세정보</a></div>';
			var infowindow = new kakao.maps.InfoWindow({ content : iwContent });
			infowindow.open(g_map, marker);

			// 
			kakao.maps.event.addListener(g_map, 'click', function() {infowindow.close();});
			document.getElementById("Ground1").addEventListener('click', function() {infowindow.close();});
			document.getElementById("Ground2").addEventListener('click', function() {infowindow.close();});
			document.getElementById("category").addEventListener('click', function() {infowindow.close();});
		});

	}); // foreach end
};

function setMarkers(map){
	for (var i = 0; i< markers.length; i++) {
		markers[i].setMap(map);
		markers.splice(i,1);
	}
}

function showMarkers(){
	setMarkers(map)
}
function hideMarkers(){
	setMarkers(null)
}
function visibleInfo(obj){

	var storeName = document.getElementById('store_name');
	// 상점 객체 호출에 필요한 JSON 생성
	var name = $(obj).attr('store_name');
	var x = ($(obj).attr('x')).substring(0,9);
	var y = ($(obj).attr('y')).substring(0,8);
	var store = {'store_name':name,'store_x':x,'store_y':y};

	// (비동기) 상점 상세 (store)정보 호출
	$.ajax({
		url: 'getStoreDetail.do',
		type: 'post',
		dataType: 'json',
		contentType:'application/json',
		data : JSON.stringify(store),
		success : function(data){
			//제목 변경
			sikgu_id = data.sikgu_id;
			document.getElementById('store_name').innerHTML = data.store_name;
			document.getElementById('store_id').value = data.sikgu_id;
			
			//메인 비디오 변경
			if (data.store_main_video != null) {
				document.getElementById("store_main_video").innerHTML =
					"<video id='my-video' controls preload='none' width='675' height='264'"
					+"poster='resources/images/portfolio/"+data.sikgu_id+"_"+data.store_main_video+"_image.PNG' data-setup='{}'>"
					+"<source src='resources/reviews/"+data.sikgu_id+"/"+data.store_main_video+".mp4' type='video/mp4'>"
					+"<source src='resources/reviews/"+data.sikgu_id+"/"+data.store_main_video+".webm' type='video/webm'>"
					+"</video>"
					+"<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>"
					
			} else {
				// main이 등록되지 않은 경우 -- 광고 영상 출력
			}
			getStoreContent(data.sikgu_id);
			getCustomerContent(data.sikgu_id,data.store_profile);
			getMenus(data.category_id,data.sikgu_id)
			var opList = eval(data.store_op_time);
			var OpTBoard = document.getElementById('Tags');
			while ( OpTBoard.hasChildNodes()){ OpTBoard.removeChild( OpTBoard.firstChild ); }

			opList.forEach(function(d,i){
				OpTBoard.innerHTML += '<li>'+d+'</li>';
			})

		},error : function(){console.log("fail")}

	})
}
function getMenus(category_id, sikgu_id){
	// 메뉴판 쿼리에 필요한 JSON 생성
	var searchKey = {"category_id" :category_id, "sikgu_id" : sikgu_id};
	//기존 메뉴판 div 초기화
	var menuBoard = document.getElementById('menuBoard');
	while ( menuBoard.hasChildNodes() ) { menuBoard.removeChild( menuBoard.firstChild );}

	// (비동기) 메뉴판 (menuboard)정보 호출
	$.ajax({
		url: 'getMenu.do', type: 'post', dataType: 'json', contentType:'application/json',
		data : JSON.stringify(searchKey),
		success : function(data){
			var menu = JSON.parse(data.menus);
			for(var key in menu) {
				menuBoard.innerHTML += '<li><a href="#">'+key+'</a><span class="posts-count">'+menu[key]+'</span></li>';
			}
		},error : function() {console.log("fail to load menuboard")}
	}),
	document.getElementById('store_detail').style.display='block'
	document.getElementById("Ground1").addEventListener('click', function() {document.getElementById('store_detail').style.display='none';});
	document.getElementById("Ground2").addEventListener('click', function() {document.getElementById('store_detail').style.display='none';});
};

function getStoreContent(searchKey) {
	// db 의 review 테이블 review_url 형식 참고할 것 !!
	// review_id (index) 으로 솔팅하여 최신글 순으로 정렬하고 (store_id과 writer_id가 같은 4개만 받아온다)
	var searchKeys = {sikgu_id: searchKey}
	$.ajax({
		url: 'getStoreContent.do', type: 'post', dataType: 'json', contentType:'application/json',
		data : JSON.stringify(searchKeys),
		success : function(data){
			if (data != null) {

				data.forEach(function(d,i){

					if(d.review_type == ".jpg"){
						document.getElementById('StoreContent'+i).innerHTML =
							'<img src='+d.review_url+ ' width = 118 height = 94 alt="">'
							+'<figcaption>'
							+'<a class="link icon-pentagon" href="portfolio-item.html">'
							+'<i class="fa fa-link"></i></a>' 
							+'<a class="view icon-pentagon"	data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg1.jpg">'
							+'<i class="fa fa-search"></i></a>'
							+'</figcaption>'
					} else if (d.review_type == '.mp4') {
						document.getElementById('StoreContent'+i).innerHTML =
							"<video controls preload='none' width = 118 height = 94 "
							+"poster='resources/images/portfolio/"+d.store_id+"_"+d.review_title+"_image.PNG' data-setup='{}'>"
							+"<source src="+d.review_url+" type='video/mp4'>"
							+"</video>"
					}
				});
			}
		},error : function() {console.log("fail to load menuboard")}

	})
}

function getCustomerContent(searchKey,profile) {
	document.getElementById('StoreDescription').innerHTML = profile 
	var searchKeys = {sikgu_id: searchKey}
	$.ajax({
		url: 'getCustomerContent.do', type: 'post', dataType: 'json', contentType:'application/json',
		data : JSON.stringify(searchKeys),
		success : function(data){
			if (data != null) {
				data.forEach(function(d,i){
					if(d.review_type == ".jpg" || d.review_type == "jpg"){
						document.getElementById('CustomerContent'+i).innerHTML =
							'<img src="C://reviews/'+ d.store_id+'/'+d.review_title+'.'+d.review_type+'" width = 118 height = 94 alt="">'
							+'<figcaption>'
							+'<a class="link icon-pentagon" href="portfolio-item.html">'
							+'<i class="fa fa-link"></i></a>' 
							+'<a class="view icon-pentagon"	data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg1.jpg">'
							+'<i class="fa fa-search"></i></a>'
							+'</figcaption>'
					} else if (d.review_type == '.mp4') {
						document.getElementById('CustomerContent'+i).innerHTML =
							'<div class="reviewgrid">'
							+'<div class="grid">'
							+'<figure class="effect-oscar">'
							+"<video controls preload='none' width = 118 height = 94 data-setup='{}'"
							+"poster='resources/images/portfolio/"+d.store_id+"_"+d.review_title+"_image.PNG' data-setup='{}'>"
							+"<source src='c://reviews/"+ d.store_id+'/'+d.review_title+'.'+d.review_type+" type='video/mp4'>"
							+"</video>"
					}
				})
			}
		},error : function() {console.log("fail to load menuboard")}
	})
}