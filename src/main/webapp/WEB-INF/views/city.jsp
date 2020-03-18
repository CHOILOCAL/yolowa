<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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

function loginck() {
	var member = '<%=(String) session.getAttribute("member")%>'
	var admin = '<%=(String) session.getAttribute("admin")%>'
	
		if (admin === 'null') {
			
			alert("관리자만 이용 가능합니다.");
			return;
		} else {
			location.href="c_insert";
		}
	
}
</script>
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
				<c:forEach var="c" items="${city }">
				<c:set var = "name" value = "${c.name}"/>
				<c:if test = "${name == '명동'}">
				<h1>${c.loc1}</h1>`
				</c:if>
				</c:forEach>
			</div>
		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
		<div id=""align="right">
		<a href="#" onclick="loginck()" id="adminplus" class="button button-xlarge button-circle button-3d button-dirtygreen"><i class="icon-map-marker2"></i>관리자 추가 페이지로 이동</a>
		
			
				</div>
				
			<div class="content-wrap">
				<div class="container clearfix"></div>
				<!-- Posts ============================================= -->
					<h1>명소</h1>
					<div id="posts" class="post-grid grid-container clearfix" data-layout="fitRows">								
						<c:forEach var="c" items="${city }">
						<c:set var = "etc" value = "${c.etc}"/>
						<c:if test = "${etc == '명소'}">
						<div class="entry clearfix">
						
							<div class="entry-image">
								<a href="resources/uploadChoi/${c.images }" data-lightbox="image"><img
									class="image_fade" src="resources/uploadChoi/${c.images }" alt=""></a>
							</div>
							
							<div class="entry-title">
								<h2>${c.loc2 }</h2>
								<h1>${c.name } : ${c.subject }</div>
								
							<div class="entry-content">
							<a href="city_detail?name=${c.name }" class="button button-border button-rounded button-fill button-aqua"><span>더보기</span></a>								
							</div>
						</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
					<h1>맛집</h1>
					<div id="posts" class="post-grid grid-container clearfix" data-layout="fitRows">								
						<c:forEach var="c" items="${city }">
						<c:set var = "etc" value = "${c.etc}"/>
						<c:if test = "${etc == '맛집'}">
						<div class="entry clearfix">
						
							<div class="entry-image">
								<a href="resources/uploadChoi/${c.images }" data-lightbox="image"><img
									class="image_fade" src="resources/uploadChoi/${c.images }" alt=""></a>
							</div>
							
							<div class="entry-title">
								<h2>${c.loc2 }</h2>
								<h1>${c.name }</div>
							<div class="entry-content">
							
								<a href="city_detail?name=${c.name }" class="button button-border button-rounded button-fill button-aqua"><span>더보기</span></a>
							</div>
						</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->			
					<h1>투어</h1>
					<div id="posts" class="post-grid grid-container clearfix" data-layout="fitRows">								
						<c:forEach var="c" items="${city }">
						<c:set var = "etc" value = "${c.etc}"/>
						<c:if test = "${etc == '투어'}">
						<div class="entry clearfix"> <!-- 다섯번 이상 돌면 -->
							<div class="entry-image">
								<a href="resources/uploadChoi/${c.images }" data-lightbox="image"><img
									class="image_fade" src="resources/uploadChoi/${c.images }" alt=""></a>
							</div>
							
							<div class="entry-title">
								<h2>${c.loc2 }</h2>
								<h1>${c.name }</h1></div>
							<div class="entry-content">
								
								<a href="city_detail?name=${c.name }" class="button button-border button-rounded button-fill button-aqua"><span>더보기</span></a>
							</div>
						</div>
						</c:if>
						</c:forEach>
					</div>
				
				<!-- ********************************************** -->

				<!-- 페이징 처리 (예정) ============================================= -->
					<ul class="pagination nobottommargin">
						<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
					</ul>

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
	$(document).ready(function() {

	});
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