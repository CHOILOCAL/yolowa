<!DOCTYPE html>
<%@page import="java.util.Locale"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<html dir="ltr" lang="en-US">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<title>Blog - Timeline Left Sidebar | Canvas</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">
id='<%=(String)session.getAttribute("member")%>'
//id='aa'

$(document).ready(function(){
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
	
	//alert("a");
	$("#reply_btn").click(function(){
		if($("#reply_text").val().trim() === ""){
			alert("댓글을 입력하세요.");
			$("#reply_content").val("").focus();
		} else {
			$.ajax({
				url : "reply",
				type : "post",
				data : $("#replyForm").serialize(),
				dataType : "JSON",
				
				success : function(data) {
					var str = "<div class='box-body repliesDiv'><ol class='commentlist clearfix'>";
					$(data.datalist).each(
							function(index, objArr) {
								str += "<li class='comment even thread-even depth-1' id='li-comment-1'><div id='comment-1' class='comment-wrap clearfix'><div class='comment-meta'>";
								str += "<div class='comment-author vcard'>";
								str += "<span class='comment-avatar clearfix'>";
								//str += "<img src='resources/images/upload/"+objArr['re_photo']+" class='avatar avatar-60 photo avatar-default' height='60'width='60'/>";
								str += "</span></div></div>";
								str += "<div class='comment-content clearfix'>";
								str += "<div class='comment-author'>" +  objArr["re_writer"];
								str += "<span><a href='#' title='Permalink to this comment'>"+ objArr["reg_date"]  + "</a></span>";
								str += "</div><p>"+ objArr["re_contents"]  +"</p></div>";
								str += "</div></li>";
							});
					str += "</ol></div>";
					
					
					
					
					$("#replyid *").remove();
					$("#replyid").append(str);

					$("#reply_content").val("");
					$("#reply_text").val("");
				},error:function(request,status,error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					$("#replyid").text("error 발생");
				}
			});
		}

	});
	
});
</script>
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
				<h1>여행 후기</h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home2</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a href="list">Blog</a></li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->













		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">



					<!-- Post Content
					============================================= -->
					<div class="postcontent nobottommargin col_last clearfix">

						<!-- Posts
						============================================= -->



						<div id="posts" class="post-timeline clearfix">




							<div class="timeline-border"></div>
							<%
								int a = 1;
							%>
							<c:forEach var="s" items="${reviews}">

								<div class="entry clearfix">

									<div class="entry-timeline">
										<%=a%>
										<div class="timeline-divider"></div>
									</div>

									<div class="entry-image">
										<a href="resources/upload/${s.images}" data-lightbox="image"> <img
											src="resources/upload/${s.images}" alt="Blog Single"></a>
									</div>

									<div class="entry-title">

										<h2>
											<a href="blog-single.html"> ${s.subject } </a>
										</h2>
									</div>



									<ul class="entry-meta clearfix">
										<li><a href="#"><i class="icon-user"></i>${s.id }</a></li>
										<li><i class="icon-folder-open"></i> <a href="#">${s.date }</a></li>
										<li><a href="#"><i class="icon-camera-retro"></i></a></li>
									</ul>
									<div class="entry-content">
										<p>${s.contents }</p>
									</div>
									
									<div class="tagcloud">
										<a href = "#"># ${s.loc1 }</a> <a href = "#"># ${s.loc2 }</a>
									</div>
								</div>
								<%
									a++;
								%>
							</c:forEach>




						</div>
						<!-- #posts end -->

						<!-- Comments
								============================================= -->
						<!-- 댓글목록 -->

						<!--  
						<div class="box box-success collapsed-box">
							<div class="box-header with-border">
								<a href="" class="link-black text-lg"><i
									class="fa fa-comments-o margin-r-5 replyCount"></i></a>
								<div class="box-tool">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>

						</div>
						-->



						<!-- 목록 -->
							<h3 id="comments-title">
								<span>Comments</span>
							</h3>
							<c:forEach var="r" items="${replyList}">

								<div id="replyid">


											
									<div class="box-body repliesDiv">


										<ol class="commentlist clearfix">



											<li class="comment even thread-even depth-1"
												id="li-comment-1">
												<div id="comment-1" class="comment-wrap clearfix">

													<div class="comment-meta">

														<div class="comment-author vcard">

															<span class="comment-avatar clearfix"> <img
																src="resources/upload/${r.photo }"
																class='avatar avatar-60 photo avatar-default'
																height='60' width='60' /></span>

														</div>

													</div>

													<div class="comment-content clearfix">
														<div class="comment-author">${r.re_writer }<span><a
																href="#" title="Permalink to this comment">${r.reg_date }</a></span>
														</div>

														<p>${r.re_contents }</p>

													</div>

												</div>
											</li>
											
											
											
										</ol>
									</div>
								</div>
						</c:forEach>
						

						

						<div id="respond" class="clearfix">

							<h3>
								Leave a <span>Comment</span>
							</h3>
							<form class="clearfix" id="replyForm">
								
								<c:forEach var="c" items="${commenter}">
									<div class="clear"></div>

									<div class="col_full">
										<table>
											<tr>
												<td width="20%">
													<div class="col_one_third">
														<img src="resources/upload/${c.photo }">
													</div>
													<% %>

												</td>
												<td width="80%"><textarea placeholder="댓글내용을 입력하세요."
														name="re_contents" id="reply_text" cols="58" rows="7"
														tabindex="4" class="sm-form-control"></textarea></td>
											</tr>
										</table>
									</div>
									<%
									String review_id = request.getParameter("review_id");
									%>
									<input type="hidden" name="review_id" value=<%=review_id%>>	<!-- 해당글을 쓴 사람의 id -->
									<input type="hidden" name="re_writer" value="${c.id}">	<!-- 로그인 되어있는 사람의 id -->
									<div class="col_full nobottommargin">
										<input type="button" id="reply_btn" tabindex="5"
											class="button button-3d nomargin" value="등록">
									</div>
								</c:forEach>
							</form>
							<br>
							<br>
						</div>
						<!-- #respond end -->


























					</div>
					<!-- .postcontent end -->

					<!-- Sidebar
					============================================= -->


					<div class="sidebar nobottommargin clearfix">
						<div class="sidebar-widgets-wrap">


							<div class="widget widget-twitter-feed clearfix">


								<c:forEach var="reviewer" items="${reviewer}">
									<table style="text-align: center">


										<tr>
											<td colspan="2"><a href="resources/upload/${reviewer.photo}"
												data-lightbox="image"><img
													src="resources/upload/${reviewer.photo}" alt="aa" /></a></td>
										</tr>
										<tr>
											<td colspan="2">&nbsp;</td>
										</tr>
										<tr>
											<td colspan="2"><h5>I D : ${reviewer.id }</h5></td>
										</tr>
										<tr>
											<%
												int nYear;
												int birth;
												Calendar calendar = new GregorianCalendar(Locale.KOREA);
												nYear = calendar.get(Calendar.YEAR);
											%>
											<fmt:parseNumber value="${reviewer.birth}" type="number" var="num" />
											<jsp:useBean id="year" class="java.util.Date" />
											<c:set var="now" value="<%=new java.util.Date()%>" />
											<c:set var="sysYear">
												<fmt:formatDate value="${now}" pattern="yyyy" />
											</c:set>
											<td><h5>
													나이 :
													<c:out value="${sysYear-num+1}" />
												</h5></td>
											<td><h5>성별 : ${reviewer.gender}</h5></td>

										</tr>

									</table>
								</c:forEach>



							</div>

							<div class="widget clearfix">

								<h4>내 사진첩</h4>
								<div id="flickr-widget" class="flickr-feed masonry-thumbs"
									data-id="613394@N22" data-count="16" data-type="group"
									data-lightbox="gallery"></div>

							</div>



							<div class="widget clearfix"></div>

							<div class="widget clearfix">

								<h4>Tag</h4>
								<div class="tagcloud">
									<a href="#">서울</a> <a href="#">인천</a> <a href="#">대전</a> <a
										href="#">부산</a> <a href="#">수원</a> <a href="#">울산</a> <a
										href="#">속초</a> <a href="#">대구</a> <a href="#">세종</a> <a
										href="#">광주</a> <a href="#">경기</a><a href="#">강원</a> <a
										href="#">충북</a><a href="#">충남</a><a href="#">경북</a><a href="#">전북</a><a
										href="#">경남</a> <a href="#">전남</a><a href="#">제주</a>
								</div>

							</div>

						</div>

					</div>
					<!-- .sidebar end -->

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

						<div class="widget subscribe-widget clearfix">
							<h5>
								<strong>Subscribe</strong> to Our Newsletter to get Important
								News, Amazing Offers &amp; Inside Scoops:
							</h5>
							<div class="widget-subscribe-form-result"></div>
							<form id="widget-subscribe-form" action="include/subscribe.php"
								method="post" class="nobottommargin">
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

	<!-- Footer Scripts
	============================================= -->
	<script src="resources/js/functions.js"></script>









</body>
</html>