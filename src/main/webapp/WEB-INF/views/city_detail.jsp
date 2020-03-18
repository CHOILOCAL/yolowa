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
		<header id="header" class="full-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo ============================================= -->
					<div id="logo">
						<a href="home" class="standard-logo" data-dark-logo="resources/images/로고678.png"><img src="resources/images/로고678.png" alt="YoloWa Logo"></a>
						<a href="home" class="retina-logo" data-dark-logo="resources/images/로고678.png"><img src="resources/images/로고678.png" alt="YoloWa Logo"></a>
					</div><!-- #logo end -->

					<!-- 상단바 ============================================= -->
				<nav id="primary-menu" class="dark">
						<ul id ="poiu">
							<li class="mega-menu"><a href="main_city">추천 여행지</a></li>
							<li class="mega-menu"><a href="makeroute">여행일정</a></li>
							<li class="mega-menu"><a href="list">여행후기</a></li>
						</ul>
					</nav>	
		</header><!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">
			<div class="container clearfix">
			</div>
		</section><!-- #page-title end -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type="text/javascript">
$(document).ready(function() {
			 
			//alert("rr");
			var member = '<%=(String) session.getAttribute("member")%>'
			var admin = '<%=(String) session.getAttribute("admin")%>'

				if (admin === 'null' ) {
					$("#btnSubmit").hide();
					$("#btnSu").hide();
				} else {
					var str = '<li class="mega-menu"><a href="login">LOGIN</a></li>';
					str+='<li class="mega-menu"><a href="signin">JOIN</a></li>';
					
					$("#poiu").append(str);
				}
		});	
		
		
function alert2(name) {
				var member = '<%=(String) session.getAttribute("member")%>'
				var admin = '<%=(String) session.getAttribute("admin")%>'
				
				alert(name);
				if (confirm("삭제하시겠습니까???")) {
				alert("1");
				$("#btnSubmit").location.href="c_delete?name=" + name;
				}else{
					alert("2");
					return;
				}
			
		}
		</script>

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">

					<!-- Post Content
					============================================= -->
					<div class="postcontent nobottommargin clearfix">
						<div class="single-post nobottommargin">
							<!-- Single Post ============================================= -->
							<div class="entry clearfix">
								<c:forEach var="c" items="${city_detail }">
								<span>
								<a href='c_delete?name=${c.name }' class="button button-3d button-rounded button-red" onclick="alert2(${c.name })" id='btnSubmit'><i class="icon-off">
								</i>삭제하기</a></span>
								
								<div class="entry-title">
								
								<!-- 글번호, 지역 -->
								<pr>글 번호 :  ${c.no }</pr>
								<h2>지역 :  ${c.loc1 }  >  ${c.loc2 }  >  ${c.name }</h2>
								
								<span>
								<a href='c_update?name=${c.name }' class="button button-3d button-rounded button-blue" id='btnSu'>
								<i class="icon-book3"></i>수정하기</a>
								</span>
								
								</div>
								
								<!-- 제목 -->
								<div class="entry-title">
								<h4>${c.subject }</h4>
								</div>
								
								<!--  -->
								<ul class="entry-meta clearfix"></ul>
								
								<!-- 사진 -->
								<div class="entry-image">
									<a href="#"><img src="resources/uploadChoi/${c.images }" alt="이미지를 불러오는데 실패하였습니다."></a>
								</div><!-- .entry-image end -->

								<!-- 내용 -->
								<div class="entry-content notopmargin">
								<pre>${c.contents }</pre>
									<blockquote><p></p></blockquote>
									
								<!-- Post Single - Content End -->
								</c:forEach>
								</div>
							</div><!-- .entry end -->
							
							
							

							<!-- Post Navigation
							============================================= -->
							<div class="post-navigation clearfix">
								<div class="col_half col_last tright nobottommargin">
									<a href="#" class="button button-small button-circle button-border button-aqua"><i class="icon-inbox"></i>위로가기</a>
								</div>
							</div><!-- .post-navigation end -->
						</div>
					</div><!-- .postcontent end -->
				</div>
			</div>
		</section><!-- #content end -->
	

		<!-- Footer
		============================================= -->
		<footer id="footer" class="dark">
			<div class="container">

				<!-- Footer Widgets
				============================================= -->
				<div class="footer-widgets-wrap clearfix"></div><!-- .footer-widgets-wrap end -->
			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">
			</div><!-- #copyrights end -->
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
	
	<script>
		jQuery(document).ready(function() {
			$("#btnSubmit").on("click", function() {
	            window.location.href = "main_city";
	         })
		})
	</script>
</body>
</html>