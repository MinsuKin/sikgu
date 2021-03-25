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
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11385b89f73bcc9d4dc2406ea538f4b9&libraries=services"></script>
<script src="resources/js/map.js"></script>

<!-- symbol 아이콘 사용 -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />
<!-- fas fa 아이콘 사용 -->
<script src="https://kit.fontawesome.com/4cf111c6f4.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>



<script type="text/javascript">
	function submitForm() {
		customerinfo.action = "./addC.do";
		customerinfo.submit();
	}
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
			<div>
				<div class="wizard-container"
					style="background-color: #E9E3E9; padding: 0; border-radius: 3%;">

					<div class="wizard-card ct-wizard-red" id="wizardProperty" style="height: 90%;">
						<form:error path"user"/>
						<form name="customerinfo" method="post" action="" enctype="multipart/form-data">
<!-- 							class="slides-form margin-bottom-1" enctype="multipart/form-data"> -->

							<div class="wizard-header">
								<h3 style="margin-top: 12px;">
									<b>SIKGU</b> 가 되신 것을 환영합니다. <br> <small>빈칸을 채워주세요</small>
								</h3>
							</div>

							<ul>
								<li><a href="#step1" data-toggle="tab">Step 1 </a></li>
								<li><a href="#step2" data-toggle="tab">Step 2 </a></li>
								<li><a href="#step3" data-toggle="tab">Finished </a></li>
							</ul>

							<div class="tab-content" style="height: 550px;">

								<div class="tab-pane" id="step1">
									<div class="row p-b-15" style="padding: 0;">
										<h4 class="info-text">당신에 대해 알려주세요</h4>
										<div class="col-sm-4 col-sm-offset-1">
											<div class="picture-container">
												<div class="picture">
													<img src="resources/assets/img/default-property.jpg"
														class="picture-src" id="wizardPicturePreview" title="" />
													<input type="file" id=wizard-picture
														name="customer_image_path">
												</div>
											</div>
										</div>
										<div class="col-sm-6" style="margin-top: 4%;">
											<div class="form-group">
												<label>ID<small>(required)</small></label> <input
													type="text" style="width: 150" name="sikgu_id"
													value="${user.sikgu_id}" readonly>
											</div>

											<div class="form-group">
												<label>닉네임 <small>(required)</small></label> <input
													type="text" style="width: 150" name="customer_nickname"
													value="">
											</div>
											<div class="form-group">
												<label>Telephone</label><input type="text"
													style="width: 150" name="customer_phone" value="">

											</div>
										</div>

										<div class="col-sm-12">
											<div class="col-sm-4">
												<div class="form-group">
													<label>성별 :</label> <select id="lunchBegins"
														name="customer_gender" class="selectpicker"
														data-live-search-style="begins" title="성별">
														<option value="M">남성</option>
														<option value="F">여성</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label>가족 형태 :</label> <select id="lunchBegins"
														name="customer_family_type" class="selectpicker"
														data-live-search-style="begins" title="가족 형태">
														<option value="1">1인 가족</option>
														<option value="2">2인 가족</option>
														<option value="3">3인 가족</option>
														<option value="4">4인 이상</option>
													</select>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label>연령 :</label> <select id="lunchBegins"
														name="customer_age" class="selectpicker"
														data-live-search-style="begins" title="연령">
														<option value="10">10대</option>
														<option value="20">20대</option>
														<option value="30">30대</option>
														<option value="40">40대</option>
														<option value="50">50대 이상</option>
													</select>
												</div>
											</div>
										</div>

									</div>
								</div>
								<!--  End step 1 -->

								<div class="tab-pane" id="step2">
									<h4 class="info-text">보다 나은 정보를 제공하기 위해 사용됩니다.</h4>
									<div class="row">

										<div class="col-sm-12">
											<div class="form-group">
												<label for="property-video">집 주소 :</label> 
												<input type="text" name="customer_address" id="customer_address" placeholder="주소"> 
												<input type="button" onclick="sample5_execDaumPostcode('customer_address')" value="주소 검색">
												<br>

											</div>

											<div class="form-group">
												<label for="property-video">즐겨찾는 곳 :</label> 
												<input type="text" id="favorite_address1" placeholder="주소">
												<input type="button"
													onclick="sample5_execDaumPostcode('favorite_address1')"
													value="주소 검색"><br>

											</div>

											<div class="form-group">
												<label for="property-video">가고싶은 곳 :</label> <input
													type="text" id="favorite_address2" placeholder="주소">
												<input type="button"
													onclick="sample5_execDaumPostcode('favorite_address2')"
													value="주소 검색"><br>

											</div>
											<div class="form-group">
												<label for="property-video">정보가 중금한 곳 :</label> <input
													type="text" id="favorite_address3" placeholder="주소">
												<input type="button"
													onclick="sample5_execDaumPostcode('favorite_address3')"
													value="주소 검색"><br>

											</div>

										<script>
												function sample5_execDaumPostcode(whoami) {
													new daum.Postcode({oncomplete: function(data) {
														
															var addr = data.autoJibunAddress;
															console.log(addr)
															if (addr == null) {
																addr = data.address;
																console.log(addr)
															}
														}
														document.getElementById(whoami).value = addr;
														
																	var searchKey = addr.split(" ")[1] +" "+ addr.split(" ")[2] + " 주민센터";
																	console.log(searchKey)
																	var geocoder = new kakao.maps.services.Geocoder();
																	// 주소로 상세 정보를 검색
																	geocoder.addressSearch(addr,function(result,status) {
																		console.log("function ok")
																		console.log(status)
																						// 정상적으로 검색이 완료됐으면
																						if (status === kakao.maps.services.Status.OK) {
																							console.log("ok")
																							// 해당 주소에 대한 좌표를 받아서
																							if (whoami == 'favorite_address1') {
																								console.log("ok1");
																								console.log(result[0].x,result[0].y);
																								document.getElementById('default_x1').value = result[0].x;
																				               document.getElementById('default_y1').value = result[0].y;
																							} else if (whoami == 'favorite_address2') {
																								console.log("ok2");
																								console.log(result[0].x,result[0].y);
																								document.getElementById('default_x2').value = result[0].x;
																				               document.getElementById('default_y2').value = result[0].y;
																							} else if (whoami == 'favorite_address3') {
																								console.log("ok3");
																								console.log(result[0].x,result[0].y);
																								document.getElementById('default_x3').value = result[0].x;
																				               document.getElementById('default_y3').value = result[0].y;
																							}
																						}
																					});
																}
															}).open();
												}
											</script>
											<input type="hidden" name="default_x1" id="default_x1" value=""> 
											<input type="hidden" name="default_y1" id="default_y1" value=""> 
											<input type="hidden" name="default_x2" id="default_x2" value=""> 
											<input type="hidden" name="default_y2" id="default_y2" value="">
											<input type="hidden" name="default_x3" id="default_x3" value="">
											<input type="hidden" name="default_y3" id="default_y3" value="">

										</div>
									</div>
								</div>
								<!--  End step 3 -->

								<div class="tab-pane" id="step3">
									<h4 class="info-text">이용 약관</h4>
									<div class="row">
										<div class="col-sm-12">
											<div class="">
												<p>
													<label><strong>서비스 제공을 위한 필요 최소한의 개인정보를
															수집하고 있습니다. 회원 가입 시 또는 서비스 이용 과정에서 홈페이지 또는 개별 어플리케이션이나
															프로그램 등을 통해 아래와 같은 서비스 제공을 위해 필요한 최소한의 개인정보를 수집하고 있습니다.
															<p></p> [SIKGU계정] 필수 아이디, 비밀번호 선택 성별, 연령, 가족형태, 휴대번호, 집
															주소, 선호하는 위치 개인에게 맞는 정보를 제공하기 위해 사용합니다. 서비스 제공을 위한 최소한의
															개인정보를 수집하고 있으며 유출 및 범법행위는 하지 않습니다.
													</strong>
												</p>

												<div class="checkbox" style="text-align: center;">
													<strong>동의합니다.</strong><br /> <input type="checkbox"
														style="position: relative;" />

												</div>

											</div>
										</div>
									</div>
								</div>
								<!--  End step 4 -->

							</div>

							<div class="wizard-footer">
								<div class="pull-right">
									<input type='button' class='btn btn-next btn-primary'
										name='next' value='Next'
										style="background-color: #D97E8E; border-color: #D97E8E; border-radius: 10px;" />
									<input type='button' class='btn btn-finish btn-primary '
										name='finish' value='Finish'
										style="background-color: #D97E8E; border-color: #D97E8E; border-radius: 10px;"
										onclick="submitForm();" />
								</div>

								<div class="pull-left">
									<input type='button' class='btn btn-previous btn-default'
										name='previous' value='Previous'
										style="background-color: #D97E8E; border-color: #D97E8E; border-radius: 10px;" />
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
					<!-- End submit form -->
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