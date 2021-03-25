<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%@ page session="false"%>
	
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes" />

<!-- 타이틀 -->
<title>sikgu</title>

<!-- css적용 -->
<link href="resources/css/slides.min.css" rel="stylesheet"
	type="text/css">
<!-- css files -->

<link href="resources/register/css/style.css" rel='stylesheet'
	type='text/css' />
<!-- custom css -->
<link href="resources/register/css/font-awesome.min.css"
	rel="stylesheet">
<!-- fontawesome css -->
<!-- //css files -->

<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Cabin:400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext,vietnamese"
	rel="stylesheet">
<!-- //google fonts -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
<!-- Compressed Scripts -->
<script src="resources/js/slides.min.js" type="text/javascript"></script>
<script src="resources/js/cd-hero.js" type="text/javascript"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11385b89f73bcc9d4dc2406ea538f4b9"></script>
<!-- symbol 아이콘 사용 -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />
<!-- fas fa 아이콘 사용 -->
<script src="https://kit.fontawesome.com/4cf111c6f4.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11385b89f73bcc9d4dc2406ea538f4b9&libraries=services"></script>

<!-- 마우스 이벤트 블락 데스크탑/폰 -->
<script>
	window.disableOnScroll = 1;
	window.disableOnSwipe = 1;

</script>
<style>
.blue {
	background: #766772 !important;
	color: #fff !important;
}

.form-group {
	text-align: center;
}

.imgForm {
	height: -webkit-fill-available;
	width: -webkit-fill-available;
}
</style>

</head>
<body class="slides horizontal simplifiedMobile animated">


	<section class="slide fade-6 kenBurns">
		<div class="content">
			<div class="container verticalCenter">


				<div class="fix-12-12 verticalCenter">
					<div
						style="width: 35%; background-color: #D97E8E; height: -webkit-fill-available; position: absolute; opacity: 1; left: 65%"></div>
					<ul class="flex verticalCenter">

						<li class="col-7-12" style="height: -webkit-fill-available;">
							<div
								style="width: 65%; background-color: #766772; height: -webkit-fill-available; position: absolute; opacity: 1; right: 35%; top: 0%;">
								<ul class="slider clickable ae-1 fromLeft"
									data-slider-id="27-2">
									<li class="selected"><img
										src="resources/images/portfolio/portfolio1.jpg"
										alt="AD Thumbnail" class="imgForm" /></li>
									<li><img src="resources/images/portfolio/portfolio2.jpg"
										alt="AD Thumbnail" class="imgForm" /></li>
									<li><img src="resources/images/portfolio/portfolio3.jpg"
										alt="AD Thumbnail" class="imgForm" /></li>
									<li><img src="resources/images/portfolio/portfolio4.jpg"
										alt="AD Thumbnail" class="imgForm" /></li>
								</ul>
								<ul class="controller dots ae-2 fromCenter margin-top-3"
									data-slider-id="27-2"
									style="position: absolute; top: 0%; left: 45%;">
									<li class="dot selected"></li>
									<li class="dot"></li>
									<li class="dot"></li>
									<li class="dot"></li>
								</ul>
							</div>
						</li>
						<li class="col-5-12 left"
							style="padding-left: 15%; padding-top: 25%;">

							<div class="ae-1" style="padding: 15px;">
								<a href="#"> <img class="img-responsive"
									src="resources/assets/img/logo/logoWfont.png" alt="logo"
									style="width: 40%; height: auto">
								</a>
							</div>
							<form method='post' class="slides-form margin-bottom-1"
								action='./login.do'>
								
							 
								 
								<c:if test="${IDErr eq null}" >
									<input type="text" class="ae-3" id="sikgu_id" name="sikgu_id" size="20" maxlength="15" placeholder="ID" />
								</c:if>
								<c:if test="${IDErr ne null}" >
									<input type="text" class="ae-3" id="test" name="sikgu_id" size="20" maxlength="15" placeholder="${IDErr}" />
								</c:if>
								<c:if test="${PWDErr eq null}" >
									<input type="password" class="ae-3" id="sikgu_pwd" name="sikgu_pwd" placeholder="Password" /> 
								</c:if>
								<c:if test="${PWDErr ne null}" >
									<input type="password" class="ae-3" id="sikgu_pwd" name="sikgu_pwd" placeholder="${PWDErr}" /> 
								</c:if>
								<input type="submit" class="button blue gradient ae-4" id="login" value="LOGIN" />&nbsp;&nbsp;</br>
							</form>

							<div id="home">

								<a href="#register" class="button hollow ae-5"><span
									style="font-size: small">회원가입</span></a> <a href="#register"
									class="button hollow ae-6"><span style="font-size: small">아이디
										/ 비밀번호 찾기</span></a>
							</div>
				</div>
				</ul>
			</div>
		</div>

		<div class="background"
			style="background-image: url(resources/assets/img/background/img-60.jpg)"></div>

	</section>

	</script>
	<!-- popup for login -->
	<script>

	</script>
	<div id="register" class="popup222-effect">
		<div class="popup222">
			<div class="login px-sm-4 mx-auto mw-100">
				<a href="#"> <img class="img-responsive"
					src="resources/assets/img/logo/logoBnofont.png" alt="logo"
					style="width: 20%; height: auto; text-align: center;">
				</a> <br />
				<br />
				<form method="post" action="./add.do"
					class="slides-form margin-bottom-3">
					<div class="form-group">
						<input type="text" style="width: 150" id="regiID" placeholder="ID"
							name="sikgu_id" value="" aria-describedby="Help" required="">
						<!--  <small
							id="Help" class="form-text text-muted">중복확인이 필요할 것 같은디요</small>-->
					</div>
					<div class="form-group">
						<input type="password" style="width: 150" name="sikgu_pwd"
							placeholder="Password" value="" required="">

					</div>
					<div class="form-group">

						<input type="hidden" name="sikgu_type" value="C"> &nbsp;<input
							type="submit" class="button blue gradient" style="width: 300px;"
							value="가입" />&nbsp;
					</div>

					<div class="form-group">

						<h4>==========소셜 로그인==========</h4>
					</div>
				</form>
				<form:error path"user"/>
			</div>
			<a class="close" href="#home">&times;</a>
		</div>
	</div>


</body>
</html>
