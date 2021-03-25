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

<link rel="stylesheet"
	href="resources/register/assets/css/normalize.css">
<link rel="stylesheet"
	href="resources/register/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/register/assets/css/fontello.css">
<link
	href="resources/register/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link
	href="resources/register/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link href="resources/register/css/animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="resources/register/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="resources/register/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/register/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="resources/register/assets/css/price-range.css">
<link rel="stylesheet"
	href="resources/register/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="resources/register/assets/css/owl.theme.css">
<link rel="stylesheet"
	href="resources/register/assets/css/owl.transitions.css">
<link rel="stylesheet" href="resources/register/assets/css/wizard.css">
<link rel="stylesheet" href="resources/register/assets/css/style.css">
<link rel="stylesheet"
	href="resources/register/assets/css/responsive.css">

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

<script src="resources/js/slides.min.js" type="text/javascript"></script>
<script src="resources/js/cd-hero.js" type="text/javascript"></script>

<!-- symbol 아이콘 사용 -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />
<!-- fas fa 아이콘 사용 -->
<script src="https://kit.fontawesome.com/4cf111c6f4.js"></script>

<script type="text/javascript">
   
</script>
</head>
<body>
	<nav class="panel top">
		<!-- 로고-->
		<div class="sections desktop">
			<div class="left">
				<a href="#"> <img class="img-responsive"
					src="resources/assets/img/logo/logoBfont.png" alt="logo"
					style="width: 100px; height: auto">
				</a>
			</div>
		</div>
	</nav>


	<div class="content-area submit-property"
		style="background-color: white;">
		&nbsp;&nbsp;&nbsp;
		<div class="container" style="margin-top: 40px; width: 80%;">
			<div class="wizard-container"
				style="background-color: #E9E3E9; padding: 0; border-radius: 3%;">

				<div class="wizard-card ct-wizard-red" id="wizardProperty"
					style="height: 90%;vertical-align: center;margin-top: 100px;">
					<form:error path"user"/>
					<form name="customerinfo" method="post" action="./imageUpload.do"
						enctype="multipart/form-data">


						<div class="wizard-header">
							<h3 style="margin-top: 12px;"></h3>
						</div>

						<ul>
							<li><a href="#step1" data-toggle="tab">리뷰 작성 </a></li>
						</ul>

						<div class="tab-content">

							<div class="tab-pane" id="step1">
								<div class="row p-b-15" style="padding: 0;">
									<h4 class="info-text"></h4>

								</div>

								<label>가게이름</label> <input type="text" style="width: 150"
									id="store_id" name="store_id" value="${store_id}"> <label>작성자</label>
								<input type="text" style="width: 150" id="writer_id"
									name="writer_id" value="${writer_id}">

							</div>
							<div class="col-sm-4 col-sm-offset-1" style="margin-left: 0;">
								<div class="picture-container">
									<div class="picture">
										<img src="resources/assets/img/default-property.jpg"
											class="picture-src" id="wizardPicturePreview" title="" /> <input
											multiple="multiple" type="file" id="review" name="review">
									</div>
								</div>
							</div>
							<div class="col-sm-6" style="margin-top: 4%;width: 60%;">
								<div class="form-group">
									<label>후기</label> <input type="text"
										style="width: 150; height: 200px;" id="review_description"
										name="review_description" value="">
								</div>
							</div>
						</div>


						<div class="wizard-footer">
							<div class="pull-right">
								<input type='submit' class='btn btn-finish btn-primary '
									name='finish' value='Finish'
									style="background-color: #D97E8E; border-color: #D97E8E; border-radius: 10px;" />
							</div>
							<div class="clearfix"></div>
						</div>
					</form>
				</div>
			</div>

		</div>


	</div>


	<div class="background"
		style="background-image: url(resources/assets/img/background/img-01.jpg)"></div>

	<script
		src="resources/register/assets/js/vendor/modernizr-2.6.2.min.js"></script>
	<script src="resources/register/assets/js//jquery-1.10.2.min.js"></script>
	<script src="resources/register/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/register/assets/js/bootstrap-select.min.js"></script>
	<script src="resources/register/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="resources/register/assets/js/easypiechart.min.js"></script>
	<script src="resources/register/assets/js/jquery.easypiechart.min.js"></script>
	<script src="resources/register/assets/js/owl.carousel.min.js"></script>
	<script src="resources/register/assets/js/wow.js"></script>
	<script src="resources/register/assets/js/icheck.min.js"></script>
	<script src="resources/register/assets/js/price-range.js"></script>
	<script src="resources/register/assets/js/jquery.bootstrap.wizard.js"
		type="text/javascript"></script>
	<script src="resources/register/assets/js/jquery.validate.min.js"></script>
	<script src="resources/register/assets/js/wizard.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>