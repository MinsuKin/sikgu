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

<link href="resources/css/slides.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/custom.css" rel="stylesheet" type="text/css">
<link href="resources/css/prettyPhoto.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/minseocute.css" rel="stylesheet"
	type="text/css">
<link href="https://vjs.zencdn.net/7.6.0/video-js.css" rel="stylesheet">

<!-- symbol 아이콘 사용 -->
<link rel="stylesheet" as="font"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons" />
<!-- fas fa 아이콘 사용 -->
<script src="https://kit.fontawesome.com/4cf111c6f4.js"></script>


<style>

</style>
</head>

<body class="slides horizontal simplifiedMobile animated">

<body>
	<div class="body-inner">
	<!-- Header start -->
		<div id="banner-area">
		<img src="images/banner/banner2.jpg" alt ="" />
		<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
	        	<div class="text-center">
		        	<h2>Contact Us</h2>
		        	<ul class="breadcrumb">
			            <li>Home</li>
			            <li><a href="#"> Contact</a></li>
		          	</ul>
	          	</div>
          	</div><!-- Subpage title end -->
	</div><!-- Banner area end -->

	<!-- Main container start -->

	<section id="main-container">
		<div class="container">
			
			<div class="row">
				<!-- Map start here -->
				<div id="map-wrapper" class="no-padding">
					<div class="map" id="map"></div>
				</div><!--/ Map end here -->	

			</div><!-- Content row  end -->

			<div class="gap-40"></div>

			<div class="row">
	    		<div class="col-md-7">
	    			<form id="contact-form" action="contact-form.php" method="post" role="form">
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label>Name</label>
								<input class="form-control" name="name" id="name" placeholder="" type="text" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Email</label>
									<input class="form-control" name="email" id="email" 
									placeholder="" type="email" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Subject</label>
									<input class="form-control" name="subject" id="subject" 
									placeholder="" required>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>Message</label>
							<textarea class="form-control" name="message" id="message" placeholder="" rows="10" required></textarea>
						</div>
						<div class="text-right"><br>
							<button class="btn btn-primary solid blank" type="submit">Send Message</button> 
						</div>
					</form>
	    		</div>
	    		<div class="col-md-5">
	    			<div class="contact-info">
		    			<h3>Contact Details</h3>
			    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget erat magna. Pellentesque justo ante</p>
			    		<br>
			    		<p><i class="fa fa-home info"></i>  1102 Saint Marys, Junction City, KS </p>
						<p><i class="fa fa-phone info"></i>  +(785) 238-4131 </p>
						<p><i class="fa fa-envelope-o info"></i>  info@bizcraft.com</p>
						<p><i class="fa fa-globe info"></i>  www.bizcraft.com</p>
    				</div>
	    		</div>
	    	</div>

		</div><!--/ container end -->

	</section><!--/ Main container end -->
	

	<!-- Footer start -->
	<footer id="footer" class="footer">
		<div class="container">

			<div class="row">
				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">Recent Posts</h3>

					<div class="latest-post-items media">
							<div class="latest-post-content media-body">
								<h4><a href="#">Bulgaria claims to find Europe's 'oldest town'</a></h4>
								<p class="post-meta">
									<span class="author">Posted by John Doe</span>
									<span class="post-meta-cat">in<a href="#"> Blog</a></span>
								</p>
							</div>
						</div><!-- 1st Latest Post end -->

						<div class="latest-post-items media">
							<div class="latest-post-content media-body">
								<h4><a href="#">Few Answers in Case of Murdered Law Professor</a></h4>
								<p class="post-meta">
									<span class="date"><i class="icon icon-calendar"></i> Mar 15, 2015</span>
									<span class="post-meta-comments"><i class="icon icon-bubbles4"></i> <a href="#">03</a></span>
								</p>
							</div>
						</div><!-- 2nd Latest Post end -->

						<div class="latest-post-items media">
							<div class="latest-post-content media-body">
								<h4><a href="#">Over the year we have lots of experience in our field</a></h4>
								<p class="post-meta">
									<span class="date"><i class="icon icon-calendar"></i> Apr 17, 2015</span>
									<span class="post-meta-comments"><i class="icon icon-bubbles4"></i> <a href="#">14</a></span>
								</p>
							</div>
						</div><!-- 3rd Latest Post end -->
	
				</div><!--/ End Recent Posts-->

				

				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">Flickr Photos</h3>

					<div class="img-gallery">
						<div class="img-container">
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/1.jpg">
								<img src="images/gallery/1.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/2.jpg">
								<img src="images/gallery/2.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/3.jpg">
								<img src="images/gallery/3.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/4.jpg">
								<img src="images/gallery/4.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/5.jpg">
								<img src="images/gallery/5.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
								<img src="images/gallery/6.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
								<img src="images/gallery/7.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
								<img src="images/gallery/8.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
								<img src="images/gallery/9.jpg" alt="">
							</a>
						</div>
					</div>

						
				</div><!--/ end flickr -->

				<div class="col-md-3 col-sm-12 footer-widget footer-about-us">
					<h3 class="widget-title">About Craft</h3>
					<p>We are a awward winning multinational company. We believe in quality and standard worldwide.</p>
					<h4>Address</h4>
					<p>1102 Saint Marys, Junction City, KS</p>
					<div class="row">
						<div class="col-md-6">
							<h4>Email:</h4>
							<p>info@craftbd.com</p>
						</div>
						<div class="col-md-6">
							<h4>Phone No.</h4>
							<p>+(785) 238-4131</p>
						</div>
					</div>
                    <form action="#" role="form">
                        <div class="input-group subscribe">
                            <input type="email" class="form-control" placeholder="Email Address" required="">
                            <span class="input-group-addon">
                              <button class="btn" type="submit"><i class="fa fa-envelope-o"> </i></button>
                            </span>                        
                        </div>
                    </form>
				</div><!--/ end about us -->


			</div><!-- Row end -->
		</div><!-- Container end -->
	</footer><!-- Footer end -->
	
	<!-- initialize jQuery Library -->
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<!-- Bootstrap jQuery -->
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<!-- Style Switcher -->
	<script type="text/javascript" src="resources/js/style-switcher.js"></script>
	<!-- Owl Carousel -->
	<script type="text/javascript" src="resources/js/owl.carousel.js"></script>
	<!-- PrettyPhoto -->
	<script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
	<!-- Bxslider -->
	<script type="text/javascript" src="resources/js/jquery.flexslider.js"></script>
	<!-- CD Hero slider -->
	<script type="text/javascript" src="resources/js/cd-hero.js"></script>
	<!-- Isotope -->
	<script type="text/javascript" src="resources/js/isotope.js"></script>
	<script type="text/javascript" src="resources/js/ini.isotope.js"></script>
	<!-- Wow Animation -->
	<script type="text/javascript" src="resources/js/wow.min.js"></script>
	<!-- SmoothScroll -->
	<script type="text/javascript" src="resources/js/smoothscroll.js"></script>
	<!-- Eeasing -->
	<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
	<!-- Counter -->
	<script type="text/javascript" src="resources/js/jquery.counterup.min.js"></script>
	<!-- Waypoints -->
	<script type="text/javascript" src="resources/js/waypoints.min.js"></script>

	<!-- Google Map API Key Source -->
	

	
	<!-- Template custom -->
	<script type="text/javascript" src="js/custom.js"></script>
	</div><!-- Body inner end -->
</body>
</html>