<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
<%@ include file="../../resources/css/custom.css" %>
<%@ include file="../../resources/css/prettyPhoto.css" %>
</style>

<div class="infofull">
	<div class="shopname">
		<h2 style="text-align: center">제목</h2>
	</div>
	<script src="resources/js/cd-hero.js" type="text/javascript"></script>
	<div class="row">
		<div class="col-1">
			<div class="post-content">
				<div class="post-image-wrapper">

					<video id='my-video' class='video-js' controls preload='auto'
						width='640' height='264'
						poster='resources/images/portfolio/portfolio1.jpg' data-setup='{}'>
						<source src='resources/videos/video.mp4' type='video/mp4'>
						<source src='resources/videos/video.webm' type='video/webm'>

					</video>

					<script src='https://vjs.zencdn.net/7.6.0/video.js'></script>

				</div>
				<!-- 사장이 사진 올리는 곳 값받아야함 -->
				<div class="reviewgrid">
					<div class="grid">
						<figure class="effect-oscar">
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
				<div class="gap-20"></div>
				<p style="text-align: left">
					매운 갈비 파스타의 원조! 한식과 이탈리안의 독특한 만남! 스파이시 퓨전 레스토랑 바비레드입니다.</br> BOBIRED is a
					unique Korean-Italian spicy fusion restaurant where the Original
					Spicy Rib Pasta was born.
				</p>
				<!-- 빈공간을 주기위함 -->
				<div class="gap-20"></div>

				<div class="shopname">
					<h2 style="text-align: center">REVIEW</h2>
				</div>
				<!-- 리뷰사진 올리는 곳 값받아야함 -->
				<div class="reviewgrid">
					<div class="grid">
						<figure class="effect-oscar">
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



			</div>


		</div>

		<!-- 오른쪽 -->
		<div class="col-4">
			<div class="sidebar-right">
				<!-- 메뉴들어가는 부분 -->
				<div class="shopname">
					<h2 style="text-align: center">MENU</h2>
					<ul class="category-list clearfix">
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
					<h2 style="text-align: center">TAG</h2>
					<ul class="unstyled clearfix">
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
	</div>
</div>

