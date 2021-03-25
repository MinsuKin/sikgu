var g_map;
var items = [ 1, 2, 3, 4, 5 ];
window.addEventListener("load",function(){
	$("#checkedmark").on("click", function() {

		items = [];
		$('input:checkbox[type=checkbox]:checked').each(function() {
			items.push($(this).val());
		});

		function makeMarkers() {

			$.ajax({
				url : 'getSearchedMarkers.do',
				type : 'post',
				dataType : 'json',
				contentType : 'application/json',
				success : function(data) {
					drawSpot(data);
				},
				data : JSON.stringify(items)
			});
		};
		function makeMarkerListener() {

			kakao.maps.event.addListener(g_map, 'idle', function() {
				makeMarkers()
			});
		};

		// makeMarkerListener() 함수의 ajax이 success일 경우 (DB의 정보를 기반으로 마커 형성하는 함수)
		function drawSpot(list) {

			list
					.forEach(function(d, i) {

						// 마커 생성
						var markerPositionLngLat = new kakao.maps.LatLng(d.store_y,
								d.store_x);
						var marker = new kakao.maps.Marker({
							title : d.store_name,
							position : markerPositionLngLat
						});
						marker.setMap(g_map);
						// 인포윈도우 생성
						kakao.maps.event
								.addListener(
										marker,
										'click',
										function() {
											var name = marker.getTitle();
											var y = marker.getPosition().getLat();
											var x = marker.getPosition().getLng();
											// 인포윈도우<div>의 내부 코드 (String, HTML code 기재
											// 가능)
											var iwContent = '<div style="padding:5px; color:black; "><h5 style="font-size:5px;">'
													+ marker.getTitle()
													+ '</h5>'
													+ '   <a href="javascript:void(0);" onclick="visibleInfo(this)" store_name='
													+ name
													+ ' x='
													+ x
													+ ' y='
													+ y
													+ '>상세정보</a></div>';
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : iwContent
													});
											infowindow.open(g_map, marker);

											// 
											kakao.maps.event.addListener(g_map,
													'click', function() {
														infowindow.close();
													});
											document.getElementById("Ground1")
													.addEventListener('click',
															function() {
																infowindow.close();
															});
											document.getElementById("Ground2")
													.addEventListener('click',
															function() {
																infowindow.close();
															});
											document.getElementById("category")
													.addEventListener('click',
															function() {
																infowindow.close();
															});
										});
					}); // foreach end
		};
	});

});
