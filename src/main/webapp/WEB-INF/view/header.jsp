<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- 상단 -->
<nav class="panel top">
	<!-- 로고-->
	<div class="sections desktop">
		<div class="left">
			<a href="#"> <img class="img-responsive"
				src="resources/assets/img/logo/logoWfont.png" alt="logo"
				style="width: 100px; height: auto">
			</a>
		</div>
		<!-- 검색어 -->
		<div class="center">
			<form id="form1" action="" class="menu">
				<input type="text" name="search" placeholder="검색어를 입력하세요.">
				<input type="submit" value="">
			</form>
		</div>
		<!-- 회원 상세정보 메뉴 -->
		<div class="right">
			<span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg>
						<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu"></use></svg></span>
		</div>
	</div>
</nav>

<!-- 회원 상세정보의 메뉴 상세-->
<nav class="sidebar" data-sidebar-id="1"
	style="background-color: #D97E8E; height: auto;">
	<!-- 닫혀있을때 그 메뉴모양만 나타나게함 -->
	<div class="close">
		<svg>
				<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg>
	</div>
	<!-- 열려있을때 -->
	<div class="content">
		<div>
			<a href="#"><i class="fas fa-user" style="width: 37; height: 30;">${userinfo.customer_nickname} 님</i></a>
		</div>
		<div>
			<a href="./modiShop.do"><i class="fas fa-cog"></i></a>
		</div>
		<ul class="mainMenu margin-top-3">
			<li><a href="#">MY LIST</a>
				<ul class="userul">
			

				</ul></li>

		</ul>
		<ul class="mainMenu margin-top-3">

			<li><a href="#">MY REVIEW</a>
				<ul class="userul">
					<li class="userli"><img class="ae-4" width="50"
						src="resources/assets/img/background/img-60.jpg" /></li>

				</ul></li>

		</ul>
		<ul class="margin-top-5 opacity-8">
			<li><a href="#" style="float: right"><svg
						style="width: 25; height: 25;">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#facebook"></use></svg></a></li>
			<li><a href="#" style="float: right"> <svg
						style="width: 25; height: 25;">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#twitter"></use></svg></a></li>
			<li><a href="#" style="float: right"><svg
						style="width: 25; height: 25;">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#instagram"></use></svg></a></li>
		</ul>
	</div>
</nav>