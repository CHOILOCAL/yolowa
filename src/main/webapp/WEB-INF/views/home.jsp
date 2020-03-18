<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html dir="ltr" lang="utf-8">

<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="SemiColonWeb" />

<!-- Stylesheets
   ============================================= -->
<link
   href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i"
   rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="resources/css/bootstrap.css"
   type="text/css" />
<link rel="stylesheet" href="resources/style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/swiper.css" type="text/css" />
<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-icons.css"
   type="text/css" />
<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css"
   type="text/css" />
<link rel="stylesheet" href="resources/css/responsive.css"
   type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />


<!-- Document Title
   ============================================= -->
<title>YoloWa</title>
<script src="resources/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    
   
var member = '<%=(String) session.getAttribute("member")%>'
var admin = '<%=(String) session.getAttribute("admin")%>'

   if (member !== 'null' || admin !== 'null') {
      var str = '<li class="mega-menu"><a href="logout" style="color: black">LOGOUT</a></li>';
      
      $("#poiu").append(str);
   } else {
      var str = '<li class="mega-menu"><a href="login" style="color: black">LOGIN</a></li>';
      str+='<li class="mega-menu"><a href="signin" style="color: black">JOIN</a></li>';
      
      $("#poiu").append(str);
   }
});

</script>

</head>
<body class="stretched">

   <!-- Document Wrapper
   ============================================= -->
   <div id="wrapper" class="clearfix">

      <!-- Header
      ============================================= -->
      <header id="header" class="transparent-header full-header"
         data-sticky-class="not-dark">

         <div id="header-wrap">

            <div class="container clearfix">

               <div id="primary-menu-trigger">
                  <i class="icon-reorder"></i>
               </div>

               <!-- Logo
               ============================================= -->
               <div id="logo">
                  <a href="home" class="standard-logo"
                     data-dark-logo="resources/images/욜로와로고.gif"><img
                     src="resources/images/욜로와로고.gif" alt="Canvas Logo"></a> <a
                     href="home" class="retina-logo"
                     data-dark-logo="resources/images/욜로와로고.gif"><img
                     src="resources/images/욜로와로고.gif" alt="Canvas Logo"></a>
               </div>
               
               
               
               
               
               
               
               <!-- #logo end -->


               <!-- 상단바 
               ============================================= -->
               <nav id="primary-menu" class="dark">
                  <ul id ="poiu">
                     <li class="mega-menu"><a href="main_city"  style="color: black">추천 여행지</a></li>
                     <li class="mega-menu"><a href="makeroute" style="color: black">여행일정</a></li>
                     <li class="mega-menu"><a href="list" style="color: black">여행후기</a></li>
                  </ul>
               </nav>
      </header>
      <!-- #header end -->
      
      
      
      
      
      
      
      
      
      
      
      
      

      <section id="slider"
         class="slider-element slider-parallax swiper_wrapper full-screen clearfix">
         <div class="slider-parallax-inner">

            <div class="swiper-container swiper-parent">
               <div class="swiper-wrapper">
                  <div class="swiper-slide dark"
                     style="background-image: url('resources/images/main.jpg');">
                     <div class="container clearfix">
                        <div class="slider-caption slider-caption-center" style="top:305px; background-color: rgba(255,255,255, 0.9)">
                           <h2 data-animate="fadeInUp" style="color: black; padding-top: 20px" >YoLoWa</h2>
                           <p class="d-none d-sm-block" data-animate="fadeInUp"
                              data-delay="200" style="color: black; padding-bottom: 20px;">Your Only Live Once&nbsp;</p>
                        </div>
                     </div>
                  </div>
                  <div class="swiper-slide dark">

                     <div class="container clearfix">
                        <div class="slider-caption slider-caption-center" style="top:305px; background-color: rgba(255,255,255, 0.5)" >
                           <h2 data-animate="fadeInUp"></h2>
                           <p class="d-none d-sm-block" data-animate="fadeInUp"
                              data-delay="200"></p>
                        </div>
                     </div>

                     <div class="video-wrap">
                        <video id="slide-video" poster="resources/images/imsi.png"
                           preload="auto" loop autoplay muted>
                           <source src='resources/images/' />
                           <source src='resources/images/' />
                        </video>
                        <div class="video-overlay"
                           style="background-color: rgba(0, 0, 0, 0.55);"></div>
                     </div>
                  </div>

                  <div class="swiper-slide"
                     style="background-image: url('resources/images/imsi.png'); background-position: center top;">
                     <div class="container clearfix">
                        <div class="slider-caption">
                           <h2 data-animate="fadeInUp"></h2>
                           <p class="d-none d-sm-block" data-animate="fadeInUp"
                              data-delay="200"> &amp;</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="slider-arrow-left">
                  <i class="icon-angle-left"></i>
               </div>
               <div class="slider-arrow-right">
                  <i class="icon-angle-right"></i>
               </div>
            </div>

            <a href="#" data-scrollto="#content" data-offset="100"
               class="dark one-page-arrow"><i
               class="icon-angle-down infinite animated fadeInDown"></i></a>

         </div>
      </section>
      
      
      
      
      
      
      
      
      
      
      
      
      

      <!-- Content
      ============================================= -->
      <section id="content">
         <div class="container clearfix">
         
         <div class="heading-block topmargin-sm center">
                        <h3>이 달의 REVIEW 왕</h3>
                     </div>
                     
            <div class="row clearfix">
            
            

               <div class="col_two_third topmargin nobottommargin">
						<div style="position: relative;" data-height-xl="535" data-height-lg="442" data-height-md="338" data-height-sm="316" data-height-xs="201">
							<a href="review?review_id=${max_reply.get(0).id}"><img data-animate="fadeInLeft" src="resources/upload/${max_reply.get(0).images}" alt="Mac" style="position: absolute; top: 0; left: 0;"></a>
							<a href="review?review_id=${max_reply.get(0).id}"><img data-animate="fadeInRight" data-delay="300" src="resources/upload/${max_reply.get(0).photo}" alt="iPad" style="position: absolute; top: 0; left: 0;"></a>
						</div>

					</div>

					<div class="col_one_third topmargin nobottommargin col_last">

						<h3>${max_reply.get(0).id}님</h3>

						<p>${max_reply.get(0).birth} | ${max_reply.get(0).gender}</p>

						<div class="divider divider-short"><i class="icon-circle"></i></div>

						<ul class="iconlist iconlist-large iconlist-color">
							<c:forEach var="m" items="${max_reply}">
								<li><i class="icon-ok-sign"></i>${m.subject }</li>
							</c:forEach>
						</ul>

					</div>
               
               



               </div>

            </div>
         </div>
         
<div class="content-wrap"></div>

         <div class="section">
            <div class="container clearfix">

               <div class="heading-block topmargin-sm center">
                  <h3></h3>
               </div>








               <!-- 이번달 리뷰 더보기  -->

               <div id="portfolio"
                  class="portfolio portfolio-nomargin grid-container portfolio-notitle portfolio-full grid-container clearfix">
                  <c:forEach var="m" items="${monthReviews }">
                  <article class="portfolio-item pf-media pf-icons">
                     <div class="portfolio-image">
                        <a href="review?review_id=${m.id }"> <img
                           src="resources/upload/${m.images}" alt="Open Imagination">
                        </a>
                        <div class="portfolio-overlay">
                           <a href="resources/upload/${m.images}" class="left-icon"
                              data-lightbox="image"><i class="icon-line-plus"></i></a> <a
                              href="review?review_id=${m.id }" class="right-icon"><i
                              class="icon-line-ellipsis"></i></a>
                        </div>
                     </div>
                     <div class="portfolio-desc">
                        <h3>
                           <a href="review?review_id=${m.id }">${m.subject }</a>
                        </h3>
                        <span><a href="review?review_id=${m.id }">${m.id }</a>, <a href="review?review_id=${m.id }">${m.date }</a></span>
                     </div>
                  </article>
                  </c:forEach>

               </div>












               <div class="clear"></div>

               <a href="list"
                  class="button button-full button-dark center tright bottommargin-lg">
                  <div class="container clearfix">
                     리뷰 <strong>더보기</strong> <i class="icon-caret-right"
                        style="top: 4px;"></i>
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
                                 <div class="team-title">
                                    <h4>박태환</h4>
                                    <span>Member</span>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <div class="col-lg-3 col-md-6 bottommargin">
                           <div class="team">
                              <div class="team-image">
                                 <img src="resources/images/imsi.png" alt="안창민">
                              </div>
                              <div class="team-desc team-desc-bg">
                                 <div class="team-title">
                                    <h4>안창민</h4>
                                    <span>Member</span>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <div class="col-lg-3 col-md-6 bottommargin">
                           <div class="team">
                              <div class="team-image">
                                 <img src="resources/images/imsi.png" alt="전유은">
                              </div>
                              <div class="team-desc team-desc-bg">
                                 <div class="team-title">
                                    <h4>전유은</h4>
                                    <span>Member</span>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <div class="col-lg-3 col-md-6 bottommargin">
                           <div class="team">
                              <div class="team-image">
                                 <img src="resources/images/imsi.png" alt="최인영">
                              </div>
                              <div class="team-desc team-desc-bg">
                                 <div class="team-title">
                                    <h4>최인영</h4>
                                    <span>Member</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
            





                     <div class="row" style="">
                        <div class="col-lg-3 col-md-6 bottommargin" style="margin-left: 280px">
                           <div class="team">
                              <div class="team-image">
                                 <img src="resources/images/imsi.png" alt="최현지" >
                              </div>
                              <div class="team-desc team-desc-bg">
                                 <div class="team-title">
                                    <h4>최현지</h4>
                                    <span>Member</span>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <div class="col-lg-3 col-md-6 bottommargin" >
                           <div class="team">
                              <div class="team-image">
                                 <img src="resources/images/imsi.png" alt="황남진">
                              </div>
                              <div class="team-desc team-desc-bg">
                                 <div class="team-title">
                                    <h4>황남진</h4>
                                    <span>Co-Member</span>
                                 </div>
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

                           <div id="oc-clients"
                              class="owl-carousel image-carousel carousel-widget"
                              data-margin="60" data-loop="true" data-nav="false"
                              data-autoplay="5000" data-pagi="false" data-items-xs="2"
                              data-items-sm="3" data-items-md="4" data-items-lg="5"
                              data-items-xl="6">

                           <div class="oc-item"><a href="#"><img src="resources/images/blog/small/경기.jpg" alt="Clients1"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/강원.jpg" alt="Clients2"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/대전.jpg" alt="Clients3"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/세종.jpg" alt="Clients4"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/우도.jpg" alt="Clients5"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/seoul.png" alt="Clients6"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/jeju.jpg" alt="Clients7"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/통영.JPG" alt="Clients8"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/busan.jpg" alt="Clients9"></a></div>
                  <div class="oc-item"><a href="#"><img src="resources/images/blog/small/incheon.jpg" alt="Clients10"></a></div>

                           </div>

                        </div>

                     </div>
                     </div>
      </section>
      <!-- #content end -->












      <!-- Footer
      ============================================= -->
      <footer id="footer" class="dark">

         <div class="container">

            <!-- Footer Widgets
            ============================================= -->
            <div class="footer-widgets-wrap clearfix"></div>
            <!-- .footer-widgets-wrap end -->

         </div>






         <!-- Copyrights
         ============================================= -->
         <div id="copyrights"></div>
         <!-- #copyrights end -->










      </footer>
      <!-- #footer end -->

   </div>
   <!-- #wrapper end -->

   <!-- Go To Top
   ============================================= -->
   <div id="gotoTop" class="icon-angle-up"></div>

   <!-- External JavaScripts
   ============================================= -->

   <script src="resources/js/plugins.js"></script>

   <!-- Footer Scripts
   ============================================= -->
   <script src="resources/js/functions.js"></script>

</body>
</html>