<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">

<!-- 타이틀 -->
<title>SIKGU</title>

<!-- css적용 -->
<link href="resources/css/slides.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/custom.css" rel="stylesheet" type="text/css">
<link href="resources/css/prettyPhoto.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/minseocute.css" rel="stylesheet"
	type="text/css">
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<script src="resources/js/slides.min.js" type="text/javascript"></script>
<script src="resources/js/cd-hero.js" type="text/javascript"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11385b89f73bcc9d4dc2406ea538f4b9&libraries=services"></script>



<!-- symbol 아이콘 사용 -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />
<!-- fas fa 아이콘 사용 -->
<script src="https://kit.fontawesome.com/4cf111c6f4.js"></script>

<!-- 마우스 이벤트 블락 데스크탑/폰 -->
<script type="text/javascript">
	window.disableOnScroll = 1;
	window.disableOnSwipe = 1;

	function addRe() {
		writeReview.action = "./addreview.do";
		writeReview.submit();
	};
</script>
<style>
input[type=text] {
	border-style: none;
	border-bottom: 1px solid #CCC;
	font-size: 16px;
	background-color: transparent;
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 3px 15px 3px 15px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	border: none;
	width: auto;
}

.colorchange:hover {
	color: #86344D;
}

input[type=submit] {
	border: none;
	background-color: transparent;
	background-image: url("resources/assets/img/search.png");
	background-position: 0px 0px;
	background-repeat: no-repeat;
	background-size: cover;
	border: 0px;
	width: 20px;
	height: 20px;
}

.store_detail {
	top: -530px;
	z-index: 5;
	display: none;
	left: 50%;
	transform: translate(-50%);
	overflow: auto;
	color: black;
	border-radius: 25px;
	position: relative;
	height: auto;
	background-color: #E9E3E9;
	padding-top: 20px;
	padding-right: 0px;
	padding-bottom: 20px;
	padding-left: 0px;
	max-width: 1100px !important;
}

.chevron {
	position: relative;
	text-align: center;
	padding: 12px;
	margin-bottom: 6px;
	height: 60px;
	width: 200px;
}

.chevron:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 51%;
	background: white;
	transform: skew(0deg, 10deg);
}

.chevron:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 100%;
	width: 50%;
	background: white;
	transform: skew(0deg, -10deg);
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#closeInfo').click(function() {
			$('#store_detail').hide();
		});
	});
</script>
</head>

<body class="slides horizontal simplifiedMobile animated">
	<!-- SVG 아아콘 라이브러리 -->
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
  <symbol id="close" viewBox="0 0 30 30">
      <path
			d="M15 0c-8.3 0-15 6.7-15 15s6.7 15 15 15 15-6.7 15-15-6.7-15-15-15zm5.7 19.3c.4.4.4 1 0 1.4-.2.2-.4.3-.7.3s-.5-.1-.7-.3l-4.3-4.3-4.3 4.3c-.2.2-.4.3-.7.3s-.5-.1-.7-.3c-.4-.4-.4-1 0-1.4l4.3-4.3-4.3-4.3c-.4-.4-.4-1 0-1.4s1-.4 1.4 0l4.3 4.3 4.3-4.3c.4-.4 1-.4 1.4 0s.4 1 0 1.4l-4.3 4.3 4.3 4.3z" /></symbol>
  <symbol id="close-small" viewBox="0 0 11 11">
      <path
			d="M6.914 5.5l3.793-3.793c.391-.391.391-1.023 0-1.414s-1.023-.391-1.414 0l-3.793 3.793-3.793-3.793c-.391-.391-1.023-.391-1.414 0s-.391 1.023 0 1.414l3.793 3.793-3.793 3.793c-.391.391-.391 1.023 0 1.414.195.195.451.293.707.293s.512-.098.707-.293l3.793-3.793 3.793 3.793c.195.195.451.293.707.293s.512-.098.707-.293c.391-.391.391-1.023 0-1.414l-3.793-3.793z" /></symbol>
  <symbol id="back" viewBox="0 0 20 20">
      <path
			d="M2.3 10.7l5 5c.4.4 1 .4 1.4 0s.4-1 0-1.4l-3.3-3.3h11.6c.6 0 1-.4 1-1s-.4-1-1-1h-11.6l3.3-3.3c.4-.4.4-1 0-1.4-.2-.2-.4-.3-.7-.3s-.5.1-.7.3l-5 5c-.2.2-.3.5-.3.7 0 .2.1.5.3.7z" /></symbol>
    <symbol id="menu" viewBox="0 0 18 18">
      <path
			d="M16 5h-14c-.6 0-1-.4-1-1 0-.5.4-1 1-1h14c.5 0 1 .4 1 1s-.4 1-1 1zm-14 5h14c.5 0 1-.4 1-1 0-.5-.4-1-1-1h-14c-.6 0-1 .4-1 1s.4 1 1 1zm14 3h-14c-.5 0-1 .4-1 1 0 .5.4 1 1 1h14c.5 0 1-.4 1-1s-.4-1-1-1z" /></symbol>
    <symbol id="share" viewBox="0 0 18 18">
      <path
			d="M16 8c-.6 0-1 .4-1 1v6h-12v-6c0-.6-.4-1-1-1s-1 .4-1 1v6c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2v-6c0-.6-.4-1-1-1zm-2.3-2.3c.4-.4.4-1 0-1.4l-4-4c-.4-.4-1-.4-1.4 0l-4 4c-.4.4-.4 1 0 1.4s1 .4 1.4 0l2.3-2.3v7.6c0 .6.4 1 1 1s1-.4 1-1v-7.6l2.3 2.3c.4.4 1 .4 1.4 0z" /></symbol>
  <symbol id="mail" viewBox="0 0 18 18">
      <path
			d="M16 2h-14c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-10c0-1.1-.9-2-2-2zm0 2v.5l-7 4.3-7-4.4v-.4h14zm-14 10v-7.2l6.5 4c.1.1.3.2.5.2s.4-.1.5-.2l6.5-4v7.2h-14z" /></symbol>
  <!-- social -->
  <symbol id="facebook" viewBox="0 0 24 24">
      <path
			d="M24 1.3v21.3c0 .7-.6 1.3-1.3 1.3h-6.1v-9.3h3.1l.5-3.6h-3.6v-2.2c0-1.1.3-1.8 1.8-1.8h1.9v-3.2c-.3 0-1.5-.1-2.8-.1-2.8 0-4.7 1.7-4.7 4.8v2.7h-3.1v3.6h3.1v9.2h-11.5c-.7 0-1.3-.6-1.3-1.3v-21.4c0-.7.6-1.3 1.3-1.3h21.3c.8 0 1.4.6 1.4 1.3z" /></symbol>
  <symbol id="facebook2" viewBox="0 0 512 512">
      <path
			d="M288 176v-64c0-17.664 14.336-32 32-32h32v-80h-64c-53.024 0-96 42.976-96 96v80h-64v80h64v256h96v-256h64l32-80h-96z" /></symbol>
    <symbol id="instagram" viewBox="0 0 20 20">
      <circle cx="10" cy="10" r="3.3" />
      <path
			d="M13,0H7C2.2,0,0,2.2,0,7v6c0,4.8,2.1,7,7,7h6c4.8,0,7-2.2,7-7V7C20,2.2,17.9,0,13,0z M10,15.1c-2.8,0-5.1-2.3-5.1-5.1 S7.2,4.9,10,4.9s5.1,2.3,5.1,5.1S12.8,15.1,10,15.1z M15.3,5.9c-0.7,0-1.2-0.5-1.2-1.2c0-0.7,0.5-1.2,1.2-1.2s1.2,0.5,1.2,1.2 C16.5,5.3,16,5.9,15.3,5.9z" /></symbol>
  <symbol id="twitter" viewBox="0 1 24 23">
      <path
			d="M21.5 7.6v.6c0 6.6-5 14.1-14 14.1-2.8 0-5.4-.8-7.6-2.2l1.2.1c2.3 0 4.4-.8 6.1-2.1-2.2 0-4-1.5-4.6-3.4.3.1.6.1.9.1.5 0 .9-.1 1.3-.2-2.1-.6-3.8-2.6-3.8-5 .7.4 1.4.6 2.2.6-1.3-.9-2.2-2.4-2.2-4.1 0-.9.2-1.8.7-2.5 2.4 3 6.1 5 10.2 5.2-.1-.4-.1-.7-.1-1.1 0-2.7 2.2-5 4.9-5 1.4 0 2.7.6 3.6 1.6 1-.3 2.1-.7 3-1.3-.4 1.2-1.1 2.1-2.2 2.7 1-.1 1.9-.4 2.8-.8-.6 1.1-1.4 2-2.4 2.7z" /></symbol>
         
  <symbol id="fb-like" viewBox="0 0 20 20">
      <path
			d="M0 8v12h5v-12h-5zm2.5 10.8c-.4 0-.8-.3-.8-.8 0-.4.3-.8.8-.8s.8.3.8.8c0 .4-.4.8-.8.8zm3.5-.8h9.5c1.1 0 1.7-1 1.7-1.7 0-.3-.4-1-.4-1 1.4-.3 1.7-1.2 1.7-1.7-.1-.5-.3-.9-.5-1 1-.4 1.5-1.1 1.4-1.9-.1-.8-1-1.5-1-1.5 1-.6.9-1.5.9-1.5-.3-1.3-1.5-1.7-1.7-1.7h-5.6s.3-.5.3-2.4-1.3-3.6-2.6-3.6c0 0-.7.1-1 .3v3.5l-2.7 4.4v9.8z" /></symbol>
  
  <symbol id="googlePlus" viewBox="0 1 24 24">
      <path
			d="M7.8 13.5h4.6c-.6 2-2.5 3.4-4.6 3.4-2.7 0-4.9-2.2-4.9-4.9s2.2-4.9 4.9-4.9c1.1 0 2.1.3 3 1l1.8-2.4c-1.4-1.1-3-1.6-4.8-1.6-4.3 0-7.9 3.5-7.9 7.9s3.5 7.9 7.9 7.9 7.9-3.5 7.9-7.9v-1.5h-7.9v3zM21.7 11v-2.2h-2v2.2h-2.2v2h2.2v2.2h2v-2.2h2.2v-2z" /></symbol>
  
  <symbol id="linkedin" viewBox="0 0 24 24">
      <path
			d="M5.9 21.9h-4.7v-14.2h4.7v14.2zm-2.3-16.1c-1.6 0-2.6-1.1-2.6-2.5s1-2.5 2.7-2.5c1.6 0 2.6 1 2.6 2.5-.1 1.4-1.2 2.5-2.7 2.5zm19.2 16.1h-4.7v-7.6c0-2-.7-3.3-2.3-3.3-1.3 0-2.1.9-2.5 1.7-.1.3-.1.8-.1 1.2v7.9h-4.7v-14.1h4.7v2c.7-.9 1.7-2.3 4.3-2.3 3.1 0 5.5 2.1 5.5 6.4v8.2h-.2z" /></symbol>
  
</svg>


	<%@ include file="header.jsp"%>
	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container map_zIndex">
				<div class="top" style="padding: 120px 80px;">
					<div class="center ae-3">
						<span class="prevSlide"><i class="fas fa-caret-left fa-3x"></i></span>
						<h2 style="display: -webkit-inline-box;">&nbsp;강남구&nbsp;</h2>
						<span class="nextSlide"><i class="fas fa-caret-right fa-3x"></i></span>
					</div>


					<div style="display: flex;">

						<div class="mfix-2-12 ae-2" id="Ground1">${userinfo.customer_nickname}</div>
						<div class="mfix-8-12 ae-3">
							<div style="float: right">
								<button id="zoomIn">
									<i class="fa fa-search-plus" aria-hidden="true"></i>
								</button>
								<button id="locationMe">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</button>
								<button id="zoomOut">
									<i class="fa fa-search-minus" aria-hidden="true"></i>
								</button>
							</div>
							<div class="mfix-8-12 ae-3" id="map"
								style="height: 500px; border-radius: 25px;"></div>

						</div>
						<div class="mfix-2-12 ae-4" style="padding: 20px;" id="Ground2">



							<form id="category" method="post" action=""
								style="width: fit-content;padding-top: 50px;">
								<label class="checkcontainer"> 한식 <input type="checkbox"
									checked="checked" id="categoryID" value=1> <span
									class="checkmark"></span>
								</label> <label class="checkcontainer"> 카페 <input type="checkbox"
									checked="checked" id="categoryID" value=2> <span
									class="checkmark"></span>
								</label> <label class="checkcontainer"> 중식 <input type="checkbox"
									checked="checked" id="categoryID" value=3> <span
									class="checkmark"></span>
								</label> <label class="checkcontainer"> 닭 <input type="checkbox"
									checked="checked" id="categoryID" value=4> <span
									class="checkmark"></span>
								</label> <label class="checkcontainer"> 분식 <input type="checkbox"
									checked="checked" id="categoryID" value=5> <span
									class="checkmark"></span>
								</label> <label class="checkcontainer"> 데이트 명소 <input
									type="checkbox" checked="checked" id="categoryID" value=6>
									<span class="checkmark"></span>
								</label> <label class="checkcontainer"> 간단한 한끼 <input
									type="checkbox" checked="checked" id="categoryID" value=7>
									<span class="checkmark"></span>
								</label> <label class="checkcontainer"> 일식 <input type="checkbox"
									checked="checked" id="categoryID" value=8> <span
									class="checkmark"></span>
								</label> <label class="checkcontainer"> 베이커리 <input
									type="checkbox" checked="checked" id="categoryID" value=9>
									<span class="checkmark"></span>
								</label>
							</form>
							<script src="resources/js/map.js"></script>

						</div>
					</div>

					<div class="infofull store_detail" id="store_detail">
						<div class="shopname">
							<div class="close" id="closeInfo">
								<i class="far fa-times-circle fa-2x"
									style="float: right; padding-right: 50px;"></i>
							</div>
							<h2 id="store_name" style="text-align: center">제목</h2>
						</div>
						<script src="resources/js/cd-hero.js" type="text/javascript"></script>
						<div class="row">

							<div class="post-image-wrapper" id="store_main_video">

								<video id='my-video' class='video-js' controls preload='auto'
									width='1000' height='264'
									poster='resources/images/portfolio/portfolio1.jpg'
									data-setup='{}'>
									<source src='resources/videos/video.mp4' type='video/mp4'>
									<source src='resources/videos/video.webm' type='video/webm'>

								</video>

								<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>

							</div>

							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="StoreContent0">
										<img src="resources/images/portfolio/portfolio1.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="StoreContent1">
										<img src="resources/images/portfolio/portfolio1.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="StoreContent2">
										<img src="resources/images/portfolio/portfolio1.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="StoreContent3">
										<img src="resources/images/portfolio/portfolio1.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid"">
								<div class="grid" style="height: 102px;">
									<figure class="effect-oscar" id="StoreContent4">
										<img src="resources/images/portfolio/portfolio1.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>





							<!-- 사장이 사진 올리는 곳 값받아야함 -->


							<div class="col-1">
								<div class="post-content">
									<h2 style="text-align: center">우리가게는?</h2>
									<div class="gap-20"></div>
									<p style="text-align: left" id="StoreDescription">
										매운 갈비 파스타의 원조! 한식과 이탈리안의 독특한 만남! 스파이시 퓨전 레스토랑 바비레드입니다.</br> BOBIRED
										is a unique Korean-Italian spicy fusion restaurant where the
										Original Spicy Rib Pasta was born.
									</p>
									<!-- 빈공간을 주기위함 -->

								</div>
							</div>
							<div class="col-4">
								<div class="sidebar-right">
									<!-- 메뉴들어가는 부분 -->
									<div class="shopname">
										<h2 style="text-align: center">MENU</h2>
										<ul class="category-list clearfix" id="menuBoard">
											<li><a href="#">바비 스테이크</a><span class="posts-count">
													20,000원</span></li>
											<li><a href="#">레드 크림 파스타</a><span class="posts-count">
													16,000원</span></li>
											<li><a href="#">토마토 파스타</a><span class="posts-count">
													16,000원</span></li>
											<li><a href="#">레드 갈비 스튜</a><span class="posts-count">
													16,000원</span></li>
											<li><a href="#">레드 갈릭밥스타</a><span class="posts-count">
													13,000원</span></li>

										</ul>
									</div>

									<!-- 태그들어가는 부분 -->
									<div class="shopname">
										<h2 style="text-align: center">INFO</h2>
										<ul class="unstyled clearfix" id="Tags">
											<li><a href="#">빈티지한</a></li>
											<li><a href="#">고급진</a></li>
											<li><a href="#">퓨전레스토랑</a></li>
											<li><a href="#">데이트</a></li>
											<li><a href="#">분위기 좋은</a></li>
											<li><a href="#">친절한</a></li>
											<li><a href="#">맛집</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="gap-20"></div>

							<div class="shopname">
								<h2 style="text-align: center">
									REVIEW <a class="colorchange"><i class="fas fa-edit"
										id="reviewIcon" onclick="addRe();"></i></a>
									<form id="writeReview" method="post" action="">
										<input type="hidden" id="store_id" name="store_id" value="">
									</form>
								</h2>

							</div>
							<!-- 리뷰사진 올리는 곳 값받아야함 -->
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="CustomerContent0">
										<img src="resources/reviews/review.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="CustomerContent1">
										<img src="resources/reviews/review.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="CustomerContent2">
										<img src="resources/reviews/review.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="CustomerContent3">
										<img src="resources/reviews/review.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
							<div class="reviewgrid">
								<div class="grid">
									<figure class="effect-oscar" id="CustomerContent4">
										<img src="resources/reviews/review.jpg" alt="">
										<figcaption>
											<a class="link icon-pentagon" href="portfolio-item.html"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												data-rel="prettyPhoto"
												href="resources/images/portfolio/portfolio-bg1.jpg"><i
												class="fa fa-search"></i></a>
										</figcaption>
									</figure>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="background"
			style="background-image: url(resources/assets/img/background/img-01.jpg)"></div>
	</section>


	<!-- Panel Bottom #01 -->
	<nav class="panel bottom forceMobileView">
		<div class="sections desktop">
			<div class="left">
				<a href="#" class="opacity-8">ⒸSIKGU. All Rights Reserved. </a>
			</div>

			<div class="right">
				<span data-dropdown-id="2"
					class="button actionButton dropdownTrigger"><svg>
                  <use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#share"></use></svg></span>
			</div>
		</div>
	</nav>

	<!-- Share Window -->
	<div class="dropdown share bottom right" data-dropdown-id="2"
		data-text="Take a look at this" data-url="https://designmodo.com"
		data-pinterest-image="https://designmodo.com/wp-content/uploads/2015/10/Presentation.jpg">
		<div class="center padding-2">
			<div class="title">문의하기</div>
			<a href="#">Contact us</a>
		</div>
		<ul>
			<li class="social-facebook"><svg>
               <use xmlns:xlink="http://www.w3.org/1999/xlink"
						xlink:href="#fb-like"></use></svg></li>
			<li class="social-twitter"><svg>
               <use xmlns:xlink="http://www.w3.org/1999/xlink"
						xlink:href="#twitter"></use></svg></li>
			<li class="social-googlePlus"><svg>
               <use xmlns:xlink="http://www.w3.org/1999/xlink"
						xlink:href="#googlePlus"></use></svg></li>
			<li class="social-linkedin"><svg>
               <use xmlns:xlink="http://www.w3.org/1999/xlink"
						xlink:href="#linkedin"></use></svg></li>
			<li class="mail" data-subject="Subject" data-body="Body">share
				by email</li>
		</ul>
	</div>

	<!-- Loading Progress Bar -->
	<div class="progress-bar" style="background: #D97E8E;"></div>


</body>
</html>