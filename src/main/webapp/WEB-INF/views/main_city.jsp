<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   <meta name="author" content="SemiColonWeb" />

   <!-- Stylesheets
   ============================================= -->
   <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i" rel="stylesheet" type="text/css" />
   <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
   <link rel="stylesheet" href="resources/style.css" type="text/css" />
   <link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
   <link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
   <link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
   <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />

   <link rel="stylesheet" href="resources/css/responsive.css" type="text/css" />
   <meta name="viewport" content="width=device-width, initial-scale=1" />

   <!-- Document Title
   ============================================= -->
   <title>YoloWa</title>
<script type="text/javascript">
$(document).ready(function() {

      $("#idtext1").hide();
      $("#idimg1").mouseover(function() {
         $("#idtext1").show();
         $("#idimg1").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg1").mouseout(function() {
         $("#idtext1").hide();
      })
      
      // ---------------------------------------
      
      $("#idtext2").hide();
      $("#idimg2").mouseover(function() {
         $("#idtext2").show();
         $("#idimg2").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg2").mouseout(function() {
         $("#idtext2").hide();
      })
      
      // ---------------------------------------
      
      $("#idtext3").hide();
      $("#idimg3").mouseover(function() {
         $("#idtext3").show();
         $("#idimg3").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg3").mouseout(function() {
         $("#idtext3").hide();
      })
      
      // ---------------------------------------

      $("#idtext4").hide();
      $("#idimg4").mouseover(function() {
         $("#idtext4").show();
         $("#idimg4").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg4").mouseout(function() {
         $("#idtext4").hide();
      })

      // ---------------------------------------
      
      $("#idtext5").hide();
      $("#idimg5").mouseover(function() {
         $("#idtext5").show();
         $("#idimg5").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg5").mouseout(function() {
         $("#idtext5").hide();
      })
      
      // ---------------------------------------

      $("#idtext6").hide();
      $("#idimg6").mouseover(function() {
         $("#idtext6").show();
         $("#idimg6").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg6").mouseout(function() {
         $("#idtext6").hide();
      })

      // ---------------------------------------
      
      $("#idtext7").hide();
      $("#idimg7").mouseover(function() {
         $("#idtext7").show();
         $("#idimg7").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg7").mouseout(function() {
         $("#idtext7").hide();
      })

      // ---------------------------------------
      
      $("#idtext8").hide();
      $("#idimg8").mouseover(function() {
         $("#idtext8").show();
         $("#idimg8").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg8").mouseout(function() {
         $("#idtext8").hide();
      })
      
      // ---------------------------------------

      $("#idtext9").hide();
      $("#idimg9").mouseover(function() {
         $("#idtext9").show();
         $("#idimg9").animate({
            opacity : '1'
         }, 1000);
      })
      $("#idimg9").mouseout(function() {
         $("#idtext9").hide();
      })
   })
</script>
<script type="text/javascript">
$(document).ready(function() {
    
   
var member = '<%=(String) session.getAttribute("member")%>'
var admin = '<%=(String) session.getAttribute("admin")%>'

   if (member !== 'null' || admin !== 'null') {
      var str = '<li class="mega-menu"><a href="logout">LOGOUT</a></li>';
      
      $("#poiu").append(str);
   } else {
      var str = '<li class="mega-menu"><a href="login">LOGIN</a></li>';
      str+='<li class="mega-menu"><a href="signin">JOIN</a></li>"';
      
      $("#poiu").append(str);
   }
});

</script>


<style type="text/css">

#iddiv1, #iddiv2, #iddiv3, #iddiv4, #iddiv5, #iddiv6, #iddiv7{
   width: 100%;
   margin: 10px auto;
   border: 1px solid #0000000;
   position: relative;
}
#iddiv1, #iddiv2, #iddiv3, #iddiv4, #iddiv5, #iddiv6, #iddiv7 img {
width : 100%;
vertical-align: middle;
}

<!-- -->

#idtext1, #idtext2, #idtext3, #idtext4, #idtext5, #idtext6, #idtext7{
padding : 5px 10px;

text-align: center;
position: absolute;
top: 60%;
left: 50%;
transform:translate(-58%,-150%);
}
#idtext1, #idtext2, #idtext3, #idtext4, #idtext5, #idtext6, #idtext7{
opacity: 0.5; 
}

<!-- -->

#idimg1, #idimg2, #idimg3, #idimg4, #idimg5, #idimg6, #idimg7:hover{
   opacity: 0.2;
}
#seouldiv {
 height: 411px;
}

<!-- -->

#seoul, #jeju, #keyong, #geyong, #junla, #chung, #etc, #kangwon, #incheon {
   width: 350px;
   height: 240px;
}

<!-- -->

h1{
color:white;
}
</style>
</head>

<body class="stretched">

   <div id="wrapper" class="clearfix">

      <!-- Header
      ============================================= -->
      <header id="header" class="full-header">
         <div id="header-wrap">
            <div class="container clearfix">
               <div id="primary-menu-trigger">
                  <i class="icon-reorder"></i>
               </div>

               <!-- Logo ============================================= -->
               <div id="logo">
                  <a href="home" class="standard-logo"
                     data-dark-logo="resources/images/로고678.png"><img
                     src="resources/images/로고678.png" alt="YoloWa Logo"></a> <a
                     href="home" class="retina-logo"
                     data-dark-logo="resources/images/로고678.png"><img
                     src="resources/images/로고678.png" alt="YoloWa Logo"></a>
               </div>
               <!-- #logo end -->

               <!-- 상단바 ============================================= -->
               <nav id="primary-menu" class="dark">
                  <ul id ="poiu">
                     <li class="mega-menu"><a href="main_city">추천 여행지</a></li>
                     <li class="mega-menu"><a href="makeroute">여행일정</a></li>
                     <li class="mega-menu"><a href="list">여행후기</a></li>
                  </ul>
               </nav>
            </div>
         </div>

      </header>
      <!-- #header end -->

      <!-- Content
      ============================================= -->
      <section id="content">
         <div class="content-wrap">
            <div class="container clearfix">

               <!-- Posts
               ============================================= -->

               <div id="posts"
                  class="post-grid grid-container post-masonry grid-3 clearfix">

                  <!-- @@@ 수도권 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv1">
                        <a href='city?loc1=서울' id="page"> <dib id="idimg1"> <img
                              class="image_fade" src="resources/images/blog/small/seoul.png"
                              alt="수도권" id="seoul"></a>
                     </div>
                     <div id="idtext1">
                        <h1>서울</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#서울</a> <a href="#">#여행</a> <a href="#">#서울근교데이트</a> <a
                              href="#">#수도권맛집</a> <a href="#">#친구</a> <a href="#">#함께하기</a> <a href="#">#맛집투어</a>
                           <a href="#">#서울투어</a> <a href="#">#홍대</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 제주 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv2">
                        <a href='city?loc1=제주'> <dib id="idimg2"> <img
                              class="image_fade" src="resources/images/blog/small/jeju.jpg"
                              alt="제주" id="jeju"></a>
                     </div>
                     <div id="idtext2">
                        <h1>제주</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#제주</a> <a href="#">#제주도에서한달살기</a> <a href="#">#여행</a> <a
                              href="#">#맛집</a> <a href="#">#투어</a> <a href="#">#버킷리스트</a> <a href="#">#제주여행</a>
                           <a href="#">#2박3일제주여행</a> <a href="#">#욜로</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 경상권 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv3">
                        <a href='city?loc1=경상'> <dib id="idimg3"> <img
                              class="image_fade" src="resources/images/blog/small/busan.jpg"
                              alt="경상" id="keyong"></a>
                     </div>
                     <div id="idtext3">
                        <h1>경상</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#부산</a> <a href="#">#감천마을</a> <a href="#">#광안리</a> <a
                              href="#">#거제도</a> <a href="#">#바람의언덕</a> <a href="#">#부산여행</a> <a href="#">#부산투어</a>
                           <a href="#">#투어</a> <a href="#">#해운대</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 인천 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv4">
                        <a href='city?loc1=인천'> <dib id="idimg4"> <img
                              class="image_fade" src="resources/images/blog/small/incheon.jpg"
                              alt="인천" id="incheon"></a>
                     </div>
                     <div id="idtext4">
                        <h1>인천</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#인천</a> <a href="#">#월미도</a> <a href="#">#여행</a> <a
                              href="#">#인천당일치기</a> <a href="#">#당일치기여행</a> <a href="#">#여행투어</a> <a href="#">#인천맛집</a>
                           <a href="#">#송도</a> <a href="#">#데이트</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 경기 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv5">
                        <a href='city?loc1=경기'> <dib id="idimg5"> <img
                              class="image_fade" src="resources/images/blog/small/경기.jpg"
                              alt="경기" id="geyong"></a>
                     </div>
                     <div id="idtext5">
                        <h1>경기</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#경기도여행</a> <a href="#">#1박2일여행</a> <a href="#">#당일치기</a> <a
                              href="#">#가평</a> <a href="#">#경기도볼만한곳</a> <a href="#">#데이트</a> <a href="#">#파주</a>
                           <a href="#">#산</a> <a href="#">#수도권여행</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 충청권 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv6">
                        <a href='city?loc1=충청'> <dib id="idimg6"> <img
                              class="image_fade" src="resources/images/blog/small/대전.jpg"
                              alt="충청" id="chung"></a>
                     </div>
                     <div id="idtext6">
                        <h1>충청</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#충청도여행</a> <a href="#">#안면도</a> <a href="#">#여행</a> <a
                              href="#">#충청도맛집</a> <a href="#">#맛집투어</a> <a href="#">#1박2일여행</a> <a href="#">#산</a>
                           <a href="#">#</a> <a href="#">#</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 전라권 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv7">
                        <a href='city?loc1=전라'> <dib id="idimg7"> <img
                              class="image_fade" src="resources/images/blog/small/전주.jpg"
                              alt="전라" id="junla"></a>
                     </div>
                     <div id="idtext7">
                        <h1>전라</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#전주</a> <a href="#">#전라도</a> <a href="#">#전주여행</a> <a
                              href="#">#친구와1박2일여행</a> <a href="#">#전주맛집투어</a> <a href="#">#순천만</a> <a href="#">#풍경</a>
                           <a href="#">#여행</a> <a href="#">#투어</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 강원권 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv8">
                        <a href='city?loc1=강원'> <dib id="idimg8"> <img
                              class="image_fade" src="resources/images/blog/small/강원.jpg"
                              alt="강원" id="kangwon"></a>
                     </div>
                     <div id="idtext8">
                        <h1>강원</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#바다여행</a> <a href="#">#정동진</a> <a href="#">#바다보기</a> <a
                              href="#">#낭만</a> <a href="#">#커피투어</a> <a href="#">#산</a> <a href="#">#바다</a>
                           <a href="#">#속초</a> <a href="#">#목장</a>
                        </div>
                     </div>
                  </div>

                  <!-- @@@ 기타 @@@ -->

                  <div class="entry clearfix" id="seouldiv">
                     <div id="iddiv9">
                        <a href='city?loc1=기타'> <dib id="idimg9"> <img
                              class="image_fade" src="resources/images/blog/small/세종.jpg"
                              alt="기타" id="etc"></a>
                     </div>
                     <div id="idtext9">
                        <h1>기타</h1>
                     </div>
                     <div class="widget clearfix">
                        <div class="tagcloud">
                           <a href="#">#기타</a> <a href="#">#기타</a> <a href="#">#기타</a>
          
                        </div>
                     </div>
                  </div>
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
         <div id="copyrights">
         </div><!-- #copyrights end -->
      </footer><!-- #footer end -->
   </div><!-- #wrapper end -->
   <script type="text/javascript">
   </script>
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