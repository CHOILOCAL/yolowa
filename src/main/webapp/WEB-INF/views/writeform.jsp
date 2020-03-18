<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
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

<!-- DatePicker CSS -->
<link rel="stylesheet" href="resources/css/components/datepicker.css"
	type="text/css" />

<!-- Bootstrap File Upload CSS -->
<link rel="stylesheet" href="resources/css/components/bs-filestyle.css"
	type="text/css" />

<link rel="stylesheet" href="resources/css/responsive.css"
	type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />

<!-- Document Title
	============================================= -->
<title>Review - Write | Canvas</title>

<style>
.file-caption.icon-visible .file-caption-name {
	font-family: 'Lato', sans-serif;
	color: #666;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">
	//id='aa'
	alert("안녕");
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
	

	var sel_files = [];

	$(document).ready(function() {
		$("#btnSubmit").on("click", btnSubmit);
		$("#jobs-application-resume").on("change", handleImgsFilesSelect);
	});
	
	function btnSubmit(){
		if(frm.subject.value == ""){
			alert("제목을 입력하세요");
			frm.subject.focus();
		} else if(frm.loc1.value == ""){
			alert("지역1을 선택하세요");
			frm.loc1.focus();
		}else if(frm.loc2.value == ""){
			alert("지역2을 입력하세요");
			frm.loc2.focus();
		}else if(frm.contents.value == ""){
			alert("내용을 입력하세요");
			frm.contents.focus();
		}else{
			$("#id").val(member);
			alert(member)
			frm.submit();
		}
	}

	function handleImgsFilesSelect(e) {

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_files.push(f);
			var reader = new FileReader();
			reader.onload = function(e) {
				var img_html = "<img src=\"" + e.target.result + "\" />";
				$(".imgs_wrap").append(img_html);
			}
			reader.readAsDataURL(f);
		});
	}
	
    function categoryChange(e) {
        var good_s = ["----- 선택 -----"];
        var good_seoul = ["----- 선택 -----", "마포구", "용산구", "성북구", "강남구", "서초구", "종로구", "중구"];
        var good_kyeounggi = ["----- 선택 -----", "-" ];
        var good_incheon = ["----- 선택 -----", "남동구", "연수구", "중구" ];
        var good_kangwon = ["----- 선택 -----", "평창시", "강릉시", "속초시", "홍천시", "춘천시", "인제시", "원주시", "삼척시", "고성시"];
        var good_chungcheung = ["----- 선택 -----", "보령시", "괴산군", "태안군", "서천군", "부여군", "단양군"];
        var good_junra = ["----- 선택 -----", "", "", "" ];
        var good_sang = ["----- 선택 -----", "영주시", "경주시", "거제시", "안동시", "부산시", "통영시", "포항시", "진주시", "울산시", "대구시", "영덕군", "칭녕군", "청송군", "합천군", "울진군", "남해군", "울릉도"];
        var good_jeju = ["----- 선택 -----", "제주시", "서귀포시", "우도" ];
        var good_etc = ["----- 선택 -----", "", "", "" ];

        var target = document.getElementById("good");

        if (e.value == "-")
           var d = good_s;
        if (e.value == "서울"){
           var d = good_seoul;
           if(d.value=="마포구"){
              var f = d;
           }
           if(d.value=="용산구"){
              var f = d;
           }
           if(d.value=="성북구"){
              var f = d;
           }
           if(d.value=="강남구"){
              var f = d;
           }
           if(d.value=="서초구"){
              var f = d;
           }
           if(d.value=="종로구"){
              var f = d;
              
           }
           if(d.value=="중구"){
              var f = d;
           }
        }
           

        else if (e.value == "경기")
           var d = good_kyeounggi;
        else if (e.value == "인천")
           var d = good_incheon;
        else if (e.value == "강원")
           var d = good_kangwon;
        else if (e.value == "충청")
           var d = good_chungcheung;
        else if (e.value == "전라")
           var d = good_junra;
        else if (e.value == "경상")
           var d = good_sang;
        else if (e.value == "제주")
           var d = good_jeju;
        else if (e.value == "기타")
           var d = good_etc;
        
        target.options.length = 0;

        for (x in d) {
           var opt = document.createElement("option");
           opt.value = d[x];
           opt.innerHTML = d[x];
           target.appendChild(opt);
        }
     }
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
						<a href="index.html" class="standard-logo"
							data-dark-logo="resources/images/logo-dark.png"><img
							src="resources/images/logo.png" alt="Canvas Logo"></a> <a
							href="index.html" class="retina-logo"
							data-dark-logo="resources/images/logo-dark@2x.png"><img
							src="resources/images/logo@2x.png" alt="Canvas Logo"></a>
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
				<h1>Review Write</h1>
				<span>추억을 공유해요~</span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="home">Home</a></li>
					<li class="breadcrumb-item"><a href="list">Review List</a></li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div style= "margin-left:550px;margin-right:550px;margin-top:60px;margin-bottom:100px">
				<form:form enctype="multipart/form-data" modelAttribute="uploadFile"
					action="write" method="post" id="frm" name="frm">
					<input type="hidden" name="id" id="id">
					<div class="col-12 form-group">
						<label>제목 :</label> <input type="text" name="subject"
							id="jobs-application-email" class="form-control required"
							value="" placeholder="Enter your Subject">
					</div>
					<div class="col-12 form-group">
						<div class="row">
							<div class="w-100"></div>
							<div class="col-md-6 form-group">
								<!-- <select class="form-control" name="jobs-application-gender" id="jobs-application-gender">
													<option value="">-- Select One --</option>
													<option value="Male">Male</option>
													<option value="Female">Female</option>
												</select> -->
							</div>
							<div class="w-100"></div>
							<div class="col-md-6 form-group">
								<label>지역1 :</label> 
								
								<select class="form-control required" name="loc1" onchange="categoryChange(this)" id="jobs-application-type">
                             	 <option value="-">----- 선택 -----</option>
                             	 <option value="서울">서울</option>
                             	 <option value="경기">경기</option>
                           	  	 <option value="인천">인천</option>
                           	  	 <option value="강원">강원</option>
                           	  	 <option value="충청">충청</option>
                           		   <option value="전라">전라</option>
                            	  <option value="경상">경상</option>
                             	 <option value="제주">제주</option>
                            	  <option value="기타">기타</option>
                         		  </select>
							</div>
							
							<div class="col-md-6 form-group">
								<label>지역2 :</label> 
								<select class="form-control required" name="loc2" id="good">
                              <option value="선택">----- 선택 -----</option>
                           </select>
                           
								
								
							</div>
						</div>
						<div class="form-group">
							<label>Upload Image:</label> <input type="file"
								id="jobs-application-resume" name="file"
								data-show-preview="false" />
						</div>
						<div class="form-group">
							<label>내용 :</label>
							<textarea name="contents" id="jobs-application-message"
								class="form-control required" cols="30" rows="10"></textarea>
						</div>
					</div>
					<div class="col-12 hidden">
						<input type="text" id="jobs-application-botcheck"
							name="jobs-application-botcheck" value="" />
					</div>
					<div class="col-12" style="text-align:center">
						<button type="button" name="jobs-application-submit"
							class="btn btn-secondary" id="btnSubmit">등록</button>
						<button type="reset" class="btn btn-secondary">새로입력</button>
					</div>

					<br>
					<br>

					<div>
						<div class="imgs_wrap"></div>
					</div>

				</form:form>
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

	<!-- DatePicker JS -->
	<script src="resources/js/components/datepicker.js"></script>

	<!-- Bootstrap File Upload Plugin -->
	<script src="resources/js/components/bs-filestyle.js"></script>

	<!-- TinyMCE Plugin -->
	<script src="resources/js/components/tinymce/tinymce.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="resources/js/functions.js"></script>

	<script>
		jQuery(document).ready( function(){
			
			$("#jobs-application-resume").fileinput({
				required: true,
				browseClass: "btn btn-secondary",
				browseIcon: "",
				removeClass: "btn btn-danger",
				removeLabel: "",
				removeIcon: "<i class='icon-trash-alt1'></i>",
				showUpload: false
			});

			tinymce.init({
				selector: '#jobs-application-message',
				menubar: false,
				setup: function(editor) {
					editor.on('change', function(e) {
						editor.save();
					});
				}
			});
		})
	</script>

</body>
</html>