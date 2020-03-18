<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Stylesheets
	============================================= -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="resources/style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />

<!-- Range Slider CSS -->
<link rel="stylesheet" href="resources/css/components/ion.rangeslider.css"
	type="text/css" />

<!-- Bootstrap File Upload CSS -->
<link rel="stylesheet" href="resources/css/components/bs-filestyle.css"
	type="text/css" />

<link rel="stylesheet" href="resources/css/responsive.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />

<!-- Document Title
	============================================= -->
<title>Freelance Quote - Forms | Canvas</title>

<style>
.file-caption.icon-visible .file-caption-name {
	font-family: 'Lato', sans-serif;
	color: #666;
}
</style>

</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value="resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="resources/js/check.js"/>"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
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
<script>
	$(function() {
		$('#pwd').keyup(function() {
			$('font[name=red]').text('');
		});
		$('#pwd_ch').keyup(function() {
			if ($('#pwd_ch').val() == null) {
				$('font[name=red]').text('');
			} else if ($('#pwd').val() != $('#pwd_ch').val()) {
				$('font[name=red]').text('비밀번호가 틀립니다.');
			} else {
				$('#birth').focus();
				$('font[name=red]').text('');
			}
		});
	});

</script>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="SemiColonWeb" />

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="full-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger">
						<i class="icon-reorder"></i>
					</div>

					<!-- Logo
					============================================= -->
					<div id="logo">
					<a href="home" class="standard-logo"
							data-dark-logo="resources/images/욜로와로고.gif" >
							<img src="resources/images/욜로와로고.gif" alt="Canvas Logo"></a>
							
							
							 <a href="home" class="retina-logo"
							data-dark-logo="resources/images/욜로와로고.gif">
							<img src="resources/images/욜로와로고.gif" alt="Canvas Logo"></a>
					</div>
					<!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu" class="dark">
						<ul id ="poiu">
							<li class="mega-menu"><a href="main_city">추천 여행지</a></li>
							<li class="mega-menu"><a href="makeroute">여행일정</a></li>
							<li class="mega-menu"><a href="list">여행후기</a></li>
						</ul>
					</nav>
               
                 </header>
                  
		<!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>회원 가입</h1>
				<span>환영합니다.</span>
			</div>

		</section>
		<!-- #page-title end -->
		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="form-widget">

						<div class="form-result"></div>

			<div class="row">
					<div class="col-lg-6">
	<form class ="row" enctype="multipart/form-data" modelAttribute="uploadFile" action="insert" method="post">
		<div class="col-12">
			<label>ID :</label> <input type="text" name="id" id="id" class="col-6 form-group" placeholder="id 입력">
			<span id="chkid"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" name="checkid" class="btn btn-secondary" id="checkid">중복확인</button>
		</div>
		<div class="col-12 form-group">
			<label>PASSWORD :</label> <input type="password"
				name="pwd" id="pwd"
				class="form-control required" value="" placeholder="비밀번호 입력">
				<span id="chkpwd"></span>
		</div>
		<div class="col-12 form-group">
			<label>PASSWORD CHECK :</label> <input type="password"
				name="pwd_ch" id="pwd_ch"
				class="form-control required" value="" placeholder="비밀번호 확인">
			<font size="2" color="red" name="red"></font>
			<span id="chkpwd_ch"></span>
		</div>
		<div class="col-6 form-group">
			<label>생년 월일 : </label><br> <input type="text"
				name="birth" id="birth"
				class="form-control required" value="" placeholder="예)19930804">
				<span id="chkbirth"></span>
		</div>
		<div class="col-6 form-group">
			<label>성 별 :</label>&nbsp;&nbsp;<br> <br>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="gender" id="gender" value="0"
				checked="checked" >남성
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="radio" name="gender" id="gender"
				value="1" >여성
		</div>
		<div class="col-6 form-group">
			<label>이 름 :</label><br> <input type="text"
				name="name" id="name" class="form-control"
				placeholder="이 름">
				<span id="chkname"></span>
				
		</div>
		<div class="col-6 form-group">
			<label>핸드폰 번호 :</label><br> <input type="text"
				name="phone" id="phone" class="form-control"
				value="" placeholder="010-0000-0000">
				<span id="chkphone"></span>
		</div>
		<div class="col-10 form-group">
			<label>주 소 :</label><br> 
			<input type="button" class="btn btn-secondary" onclick="sample6_execDaumPostcode()" value="주소 찾기"><br><br>
			<input type="text" class="form-control" name="address" id="address" placeholder="주소"><br>
			<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
			<span id="chkaddress"></span>
		</div>
			
		<div class="col-12 form-group">
		<label>프로필 사진 :</label><br>
		<input type="file" name="file" id="photo" /><br>
		</div>
		<hr>
		<div class="col-12">
			<input type="submit" name="freelance-quote-submit"
				class="btn btn-secondary" id="btn_check" value="가입신청">
		</div>

	</form>
</div>

<div class="col-lg-6 pl-lg-5">
								<p>
									<span class="dropcap">서비스</span> 이용 시 저희 사이트에서 수집하는 정보의 유형을
									이해하시기 바랍니다
								</p>
								<blockquote class="topmargin bottommargin">
									<p>저희 사이트는 모든 사용자에게 더 나은 서비스를 제공하기 위해 사용자의 언어와 같은 기본적인 정보와
										사용자가 가장 유용하다고 생각할 광고, 온라인에서 가장 중요하게 여기는 사람이나 좋아할 것 같은 여러 정보,
										동영상 등과 같은 복합적인 정보를 수집합니다. 저희 사이트에서 수집하는 정보 및 그 정보가 이용되는 방식은
										사용자가 서비스를 어떻게 이용하고 개인정보 보호 설정을 어떻게 관리하는지에 따라 다릅니다. 사용자가 저희 사이트
										계정에 로그인하지 않았을 때는 사용하는 브라우저, 애플리케이션 또는 기기에 연결된 고유 식별자와 함께 수집한
										정보를 저장합니다. 이를 통해 예를 들면 브라우징 세션 중에 사용자의 언어 환경설정이 유지됩니다. 사용자가
										로그인했을 때는 계정과 함께 저장되는 정보도 수집하며, 이를 개인정보로 취급합니다.</p>
								</blockquote>

								<div class="clear"></div>

							</div>
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
				<div class="footer-widgets-wrap clearfix">

					<div class="col_two_third">

						<div class="col_one_third">

							<div class="widget clearfix">

								<img src="resources/images/footer-widget-logo.png" alt=""
									class="footer-logo">

								<p>
									We believe in <strong>Simple</strong>, <strong>Creative</strong>
									&amp; <strong>Flexible</strong> Design Standards.
								</p>

								<div
									style="background: url('resources/images/world-map.png') no-repeat center center; background-size: 100%;">
									<address>
										<strong>Headquarters:</strong><br> 795 Folsom Ave, Suite
										600<br> San Francisco, CA 94107<br>
									</address>
									<abbr title="Phone Number"><strong>Phone:</strong></abbr> (91)
									8547 632521<br> <abbr title="Fax"><strong>Fax:</strong></abbr>
									(91) 11 4752 1433<br> <abbr title="Email Address"><strong>Email:</strong></abbr>
									info@canvas.com
								</div>

							</div>

						</div>

						<div class="col_one_third">

							<div class="widget widget_links clearfix">

								<h4>Blogroll</h4>

								<ul>
									<li><a href="http://codex.wordpress.org/">Documentation</a></li>
									<li><a
										href="http://wordpress.org/support/forum/requests-and-feedback">Feedback</a></li>
									<li><a href="http://wordpress.org/extend/plugins/">Plugins</a></li>
									<li><a href="http://wordpress.org/support/">Support
											Forums</a></li>
									<li><a href="http://wordpress.org/extend/themes/">Themes</a></li>
									<li><a href="http://wordpress.org/news/">WordPress
											Blog</a></li>
									<li><a href="http://planet.wordpress.org/">WordPress
											Planet</a></li>
								</ul>

							</div>

						</div>

						<div class="col_one_third col_last">

							<div class="widget clearfix">
								<h4>Recent Posts</h4>

								<div id="post-list-footer">
									<div class="spost clearfix">
										<div class="entry-c">
											<div class="entry-title">
												<h4>
													<a href="#">Lorem ipsum dolor sit amet, consectetur</a>
												</h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-c">
											<div class="entry-title">
												<h4>
													<a href="#">Elit Assumenda vel amet dolorum quasi</a>
												</h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-c">
											<div class="entry-title">
												<h4>
													<a href="#">Debitis nihil placeat, illum est nisi</a>
												</h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>

					<div class="col_one_third col_last">

						<div class="widget clearfix" style="margin-bottom: -20px;">

							<div class="row">

								<div class="col-lg-6 bottommargin-sm">
									<div class="counter counter-small">
										<span data-from="50" data-to="15065421"
											data-refresh-interval="80" data-speed="3000"
											data-comma="true"></span>
									</div>
									<h5 class="nobottommargin">Total Downloads</h5>
								</div>

								<div class="col-lg-6 bottommargin-sm">
									<div class="counter counter-small">
										<span data-from="100" data-to="18465"
											data-refresh-interval="50" data-speed="2000"
											data-comma="true"></span>
									</div>
									<h5 class="nobottommargin">Clients</h5>
								</div>

							</div>

						</div>

						<div class="widget subscribe-widget subscribe-form clearfix">
							<h5>
								<strong>Subscribe</strong> to Our Newsletter to get Important
								News, Amazing Offers &amp; Inside Scoops:
							</h5>
							<div class="widget-subscribe-form-result"></div>
							<form action="include/subscribe.php" method="post"
								class="nobottommargin">
								<div class="input-group divcenter">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="icon-email2"></i>
										</div>
									</div>
									<input type="email" id="widget-subscribe-form-email"
										name="widget-subscribe-form-email"
										class="form-control required email"
										placeholder="Enter your Email">
									<div class="input-group-append">
										<button class="btn btn-success" type="submit">Subscribe</button>
									</div>
								</div>
							</form>
						</div>

						<div class="widget clearfix" style="margin-bottom: -20px;">

							<div class="row">

								<div class="col-lg-6 clearfix bottommargin-sm">
									<a href="#"
										class="social-icon si-dark si-colored si-facebook nobottommargin"
										style="margin-right: 10px;"> <i class="icon-facebook"></i>
										<i class="icon-facebook"></i>
									</a> <a href="#"><small
										style="display: block; margin-top: 3px;"><strong>Like
												us</strong><br>on Facebook</small></a>
								</div>
								<div class="col-lg-6 clearfix">
									<a href="#"
										class="social-icon si-dark si-colored si-rss nobottommargin"
										style="margin-right: 10px;"> <i class="icon-rss"></i> <i
										class="icon-rss"></i>
									</a> <a href="#"><small
										style="display: block; margin-top: 3px;"><strong>Subscribe</strong><br>to
											RSS Feeds</small></a>
								</div>

							</div>

						</div>

					</div>

				</div>
				<!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">

				<div class="container clearfix">

					<div class="col_half">
						Copyrights &copy; 2014 All Rights Reserved by Canvas Inc.<br>
						<div class="copyright-links">
							<a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a>
						</div>
					</div>

					<div class="col_half col_last tright">
						<div class="fright clearfix">
							<a href="#"
								class="social-icon si-small si-borderless si-facebook"> <i
								class="icon-facebook"></i> <i class="icon-facebook"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless si-twitter"> <i
								class="icon-twitter"></i> <i class="icon-twitter"></i>
							</a> <a href="#" class="social-icon si-small si-borderless si-gplus">
								<i class="icon-gplus"></i> <i class="icon-gplus"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless si-pinterest"> <i
								class="icon-pinterest"></i> <i class="icon-pinterest"></i>
							</a> <a href="#" class="social-icon si-small si-borderless si-vimeo">
								<i class="icon-vimeo"></i> <i class="icon-vimeo"></i>
							</a> <a href="#" class="social-icon si-small si-borderless si-github">
								<i class="icon-github"></i> <i class="icon-github"></i>
							</a> <a href="#" class="social-icon si-small si-borderless si-yahoo">
								<i class="icon-yahoo"></i> <i class="icon-yahoo"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless si-linkedin"> <i
								class="icon-linkedin"></i> <i class="icon-linkedin"></i>
							</a>
						</div>

						<div class="clear"></div>

						<i class="icon-envelope2"></i> info@canvas.com <span
							class="middot">&middot;</span> <i class="icon-headphones"></i>
						+91-11-6541-6369 <span class="middot">&middot;</span> <i
							class="icon-skype2"></i> CanvasOnSkype
					</div>

				</div>

			</div>
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
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/plugins.js"></script>

	<!-- Range Slider Plugin -->
	<script src="resources/js/components/rangeslider.min.js"></script>

	<!-- Bootstrap File Upload Plugin -->
	<script src="resources/js/components/bs-filestyle.js"></script>

	<!-- TinyMCE Plugin -->
	<script src="resources/js/components/tinymce/tinymce.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="resources/js/functions.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<!-- 주소 찾기 -->
 <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.roadAddress;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    
</script>


</body>
</html>