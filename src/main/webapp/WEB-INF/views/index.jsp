<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="resources/style.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/swiper.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Document Title
	============================================= -->
	<title>YoloWa</title>
</head>
<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="transparent-header full-header" data-sticky-class="not-dark">
			<div id="header-wrap">
				<div class="container clearfix">
					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="index" class="standard-logo" data-dark-logo="resources/images/logo2.png"><img src="resources/images/logo2.png" alt="YoloWa Logo"></a>
						<a href="index" class="retina-logo" data-dark-logo="resources/images/logo2.png"><img src="resources/images/logo2.png" alt="YoloWa Logo"></a>
					</div><!-- #logo end -->

					<!-- 상단바 
					============================================= -->
					<nav id="primary-menu" class="dark">
						<ul id ="poiu">
							<li class="mega-menu"><a href="main_city">추천 여행지</a></li>
							<li class="mega-menu"><a href="makeroute">여행일정</a></li>
							<li class="mega-menu"><a href="list">여행후기</a></li>
						</ul>
					</nav>
		</header><!-- #header end -->

		<section id="slider" class="slider-element slider-parallax swiper_wrapper full-screen clearfix">
			<div class="slider-parallax-inner">
				<div class="swiper-container swiper-parent">
					<div class="swiper-wrapper">
						<div class="swiper-slide dark" style="background-image: url('resources/images/imsi.png');">
							<div class="container clearfix">
								<div class="slider-caption slider-caption-center">
									<h2 data-animate="fadeInUp">2조</h2>
									<p class="d-none d-sm-block" data-animate="fadeInUp" data-delay="200">2조 여행 추천 사이트 &nbsp; 박태환, 안창민, 전유은, 최인영, 최현지, 황남진</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide dark">
							<div class="container clearfix">
								<div class="slider-caption slider-caption-center">
									<h2 data-animate="fadeInUp">Beautifully Flexible</h2>
									<p class="d-none d-sm-block" data-animate="fadeInUp" data-delay="200">22222</p>
								</div>
							</div>
							<div class="video-wrap">
								<video id="slide-video" poster="resources/images/imsi.png" preload="auto" loop autoplay muted>
									<source src='resources/images/imsi.png'  />
									<source src='resources/images/imsi.png' />
								</video>
								<div class="video-overlay" style="background-color: rgba(0,0,0,0.55);"></div>
							</div>
						</div>
						<div class="swiper-slide" style="background-image: url('resources/images/imsi.png'); background-position: center top;">
							<div class="container clearfix">
								<div class="slider-caption">
									<h2 data-animate="fadeInUp">333</h2>
									<p class="d-none d-sm-block" data-animate="fadeInUp" data-delay="200">333 &amp; 333</p>
								</div>
							</div>
						</div>
					</div>
					<div class="slider-arrow-left"><i class="icon-angle-left"></i></div>
					<div class="slider-arrow-right"><i class="icon-angle-right"></i></div>
				</div>
				<a href="#" data-scrollto="#content" data-offset="100" class="dark one-page-arrow"><i class="icon-angle-down infinite animated fadeInDown"></i></a>
			</div>
		</section>

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">
					<div class="row clearfix">
						<div class="col-xl-5">
							<div class="">
								<h1>이 달의 리뷰왕</h1>
							</div>
							<p class="lead">ㅇㅇㅇ</p>
						</div>
						<div class="col-xl-7">
							<div style="position: relative; margin-bottom: -60px;" class="ohidden" data-height-xl="426" data-height-lg="567" data-height-md="470" data-height-md="287" data-height-xs="183">
								<img src="resources/images/imsi.png" style="position: absolute; top: 0; left: 0;" data-animate="fadeInUp" data-delay="100" alt="Chrome">
								<img src="resources/images/imsi.png" style="position: absolute; top: 0; left: 0;" data-animate="fadeInUp" data-delay="400" alt="iPad">
							</div>
						</div>
					</div>
				</div>

					<div class="section">
					<div class="container clearfix">
						<div class="heading-block topmargin-sm center">
							<h3></h3>
						</div>
						
				<!-- 이번달 리뷰 더보기  -->
				<div id="portfolio" class="portfolio portfolio-nomargin grid-container portfolio-notitle portfolio-full grid-container clearfix">
					<article class="portfolio-item pf-media pf-icons">
						<div class="portfolio-image">
							<a href="portfolio-single.html">
								<img src="resources/images/imsi.png" alt="Open Imagination">
							</a>
							<div class="portfolio-overlay">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
								<a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single.html">Open Imagination</a></h3>
							<span><a href="#">Media</a>, <a href="#">Icons</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-illustrations">
						<div class="portfolio-image">
							<a href="portfolio-single.html">
								<img src="resources/images/imsi.png" alt="Locked Steel Gate">
							</a>
							<div class="portfolio-overlay">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
								<a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single.html">Locked Steel Gate</a></h3>
							<span><a href="#">Illustrations</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-graphics pf-uielements">
						<div class="portfolio-image">
							<a href="#">
								<img src="resources/images/imsi.png" alt="Mac Sunglasses">
							</a>
							<div class="portfolio-overlay">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
								<a href="portfolio-single-video.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single-video.html">Mac Sunglasses</a></h3>
							<span><a href="#">Graphics</a>, <a href="#">UI Elements</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-icons pf-illustrations">
						<div class="portfolio-image">
							<a href="portfolio-single.html">
								<img src="resources/images/imsi.png" alt="Open Imagination">
							</a>
							<div class="portfolio-overlay" data-lightbox="gallery">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="gallery-item"><i class="icon-line-stack-2"></i></a>
								<a href="resources/images/imsi.png" class="hidden" data-lightbox="gallery-item"></a>
								<a href="resources/images/imsi.png" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single-gallery.html">Morning Dew</a></h3>
							<span><a href="#">Icons</a>, <a href="#">Illustrations</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-uielements pf-media">
						<div class="portfolio-image">
							<a href="portfolio-single.html">
								<img src="resources/images/imsi.png" alt="Console Activity">
							</a>
							<div class="portfolio-overlay">
								<a href="resources/images/portfolio/full/5.jpg" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
								<a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single.html">Console Activity</a></h3>
							<span><a href="#">UI Elements</a>, <a href="#">Media</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-graphics pf-illustrations">
						<div class="portfolio-image">
							<a href="portfolio-single.html">
								<img src="resources/images/imsi.png" alt="Open Imagination">
							</a>
							<div class="portfolio-overlay" data-lightbox="gallery">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="gallery-item"><i class="icon-line-stack-2"></i></a>
								<a href="resources/images/imsi.png" class="hidden" data-lightbox="gallery-item"></a>
								<a href="resources/images/imsi.png" class="hidden" data-lightbox="gallery-item"></a>
								<a href="resources/images/imsi.png" class="hidden" data-lightbox="gallery-item"></a>
								<a href="resources/images/imsi.png" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="resources/images/imsi.png">Shake It!</a></h3>
							<span><a href="#">Illustrations</a>, <a href="#">Graphics</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-uielements pf-icons">
						<div class="portfolio-image">
							<a href="portfolio-single-video.html">
								<img src="resources/images/imsi.png" alt="Backpack Contents">
							</a>
							<div class="portfolio-overlay">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="iframe"><i class="icon-line-play"></i></a>
								<a href="resources/images/imsi.png" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single-video.html">Backpack Contents</a></h3>
							<span><a href="#">UI Elements</a>, <a href="#">Icons</a></span>
						</div>
					</article>

					<article class="portfolio-item pf-graphics">
						<div class="portfolio-image">
							<a href="portfolio-single.html">
								<img src="resources/images/imsi.png" alt="Sunset Bulb Glow">
							</a>
							<div class="portfolio-overlay">
								<a href="resources/images/imsi.png" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
								<a href="portfolio-single.html" class="right-icon"><i class="icon-line-ellipsis"></i></a>
							</div>
						</div>
						<div class="portfolio-desc">
							<h3><a href="portfolio-single.html">Sunset Bulb Glow</a></h3>
							<span><a href="#">Graphics</a></span>
						</div>
					</article>
				</div>
				

				<div class="clear"></div>
				<a href="" class="button button-full button-dark center tright bottommargin-lg">
					<div class="container clearfix">
						이번달 리뷰 <strong>더보기</strong> <i class="icon-caret-right" style="top:4px;"></i>
					</div>
				</a>

				<div class="section">
					<div class="container clearfix">
						<div class="heading-block topmargin-sm center">
							<h3>YoloWa Family</h3>
						</div>

						<div class="row">
							<div class="col-lg-3 col-md-6 bottommargin">
								<div class="team">
									<div class="team-image">
										<img src="resources/images/imsi.png" alt="박태환">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>박태환</h4><span>Member</span></div>
									</div>
								</div>
							</div>

							<div class="col-lg-3 col-md-6 bottommargin">
								<div class="team">
									<div class="team-image">
										<img src="resources/images/imsi.png" alt="안창민">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>안창민</h4><span>Member</span></div>
									</div>
								</div>
							</div>

							<div class="col-lg-3 col-md-6 bottommargin">
								<div class="team">
									<div class="team-image">
										<img src="resources/images/imsi.png" alt="전유은">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>전유은</h4><span>Member</span></div>
									</div>
								</div>
							</div>

							<div class="col-lg-3 col-md-6 bottommargin">
								<div class="team">
									<div class="team-image">
										<img src="resources/images/imsi.png" alt="최인영">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>최인영</h4><span>Member</span></div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="row" style="">
							<div class="col-lg-3 col-md-6 bottommargin">
								<div class="team">
									<div class="team-image">
										<img src="resources/images/imsi.png" alt="최현지">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>최현지</h4><span>Member</span></div>
									</div>
								</div>
							</div>

							<div class="col-lg-3 col-md-6 bottommargin">
								<div class="team">
									<div class="team-image">
										<img src="resources/images/imsi.png" alt="황남진">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>황남진</h4><span>Co-Member</span></div>
									</div>
								</div>
							</div>
					</div>
				</div>

					<div class="section">
					<div class="container clearfix">
						<div class="heading-block topmargin-sm center">
							<h3></h3>
						</div>		

				<div class="container clearfix">
					<div id="oc-clients" class="owl-carousel image-carousel carousel-widget" data-margin="60" data-loop="true" data-nav="false" data-autoplay="5000" data-pagi="false" data-items-xs="2" data-items-sm="3" data-items-md="4" data-items-lg="5" data-items-xl="6">
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
						<div class="oc-item"><a href="#"><img src="resources/images/imsi.png" alt="Clients"></a></div>
					</div>
				</div>
			</div>
			
		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" class="dark">

			<div class="container">

				<!-- Footer Widgets
				============================================= -->
				<div class="footer-widgets-wrap clearfix">
				</div><!-- .footer-widgets-wrap end -->

			</div>
		
			<!-- Copyrights
			============================================= -->
			<div id="copyrights"></div><!-- #copyrights end -->
			
		</footer><!-- #footer end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="resources/js/functions.js"></script>

</body>
</html>