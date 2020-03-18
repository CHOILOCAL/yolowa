<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

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
	<!-- Range Slider CSS -->
	<link rel="stylesheet" href="resources/css/components/ion.rangeslider.css" type="text/css" />

	<!-- Bootstrap File Upload CSS -->
	<link rel="stylesheet" href="resources/css/components/bs-filestyle.css" type="text/css" />

	<link rel="stylesheet" href="resources/css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />
	
	<!-- Document Title
	============================================= -->
	<title>YoloWa</title>

<style>
.file-caption.icon-visible .file-caption-name {
	font-family: 'Lato', sans-serif;
	color: #666;
}
</style>
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
						<a href="index" class="standard-logo" data-dark-logo="resources/images/logo2.png"><img src="resources/images/logo2.png" alt="YoloWa Logo"></a>
						<a href="index" class="retina-logo" data-dark-logo="resources/images/logo2.png"><img src="resources/images/logo2.png" alt="YoloWa Logo"></a>
					</div><!-- #logo end -->




					<!-- 상단바 ============================================= -->
					<nav id="primary-menu" class="dark">
						<ul id ="poiu">
							<li class="mega-menu"><a href="main_city">추천 여행지</a></li>
							<li class="mega-menu"><a href="">여행일정</a></li>
							<li class="mega-menu"><a href="">여행후기</a></li>
						</ul>
					</nav>

		</header><!-- #header end -->

		<!-- Page Title	============================================= -->
		<section id="page-title">
			<div class="container clearfix">
				<h1>관리자 추가 페이지</h1>
				<span> 명소 / 맛집 / 투어을 등록하세요</span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" aria-current="page"></li>
				</ol>
			</div>
		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<!-- ▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">
					<div class="form-widget">
						<div class="form-result"></div>
						<div class="row">
							<div class="col-lg-6">

						<!-- ▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ -->         
                        <!--<form class="row" enctype="multipart/form-data" modelAttribute="uploadFile" action="prtwrite" method="post">-->
                        <form:form enctype="multipart/form-data" modelAttribute="uploadFile" action="prtwrite" method="post">

						   <div class="col-12 form-group">
                           <label>번호</label>
             
                          
                           <c:forEach var="c" items="${c_insert }">
                          <!-- 
                           <c:set var="res" value="${c.no}"></c:set>
                           <c:out value="res"></c:out>
                            -->
                              <input type="text" value="${c.no+1}" name="${c.no+1}"class="form-control required" readonly="readonly"> 
                              </c:forEach>
                              </div>
                           <div class="col-12 form-group">
                           <label>상품</label>
                           <select class="form-control required" name="etc">
                              <option value="-">----- 선택 -----</option>
                              <option value="명소">명소</option>
                              <option value="맛집">맛집</option>
                              <option value="투어">투어</option>
                              </select>
                              </div>
                           
                           <div class="col-12 form-group">
                              <label>명소명</label>
                              <input type="text" name="name" class="form-control required">
                           </div>

                           <!-- 지역 선택 -->
                           <!-- loc1, loc2 -->
                           <script type="text/javascript">
                              function categoryChange(e) {
                                 var good_s = ["----- 선택 -----"];
                                 var good_seoul = ["----- 선택 -----", "마포구", "용산구", "성북구", "강남구", "서초구", "종로구", "중구", "송파구"];
                                 var good_kyeounggi = ["----- 선택 -----", "-" ];
                                 var good_incheon = ["----- 선택 -----", "남동구", "연수구", "중구" ];
                                 var good_kangwon = ["----- 선택 -----", "평창시", "강릉시", "속초시", "홍천시", "춘천시", "인제시", "원주시", "삼척시", "고성시"];
                                 var good_chungcheung = ["----- 선택 -----", "보령시", "괴산군", "태안군", "서천군", "부여군", "단양군"];
                                 var good_junra = ["----- 선택 -----", "전주시", "순천시", "" ];
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
                                    if(d.value=="송파구"){
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

						<div class="col-12 form-group">
						<label>지역1</label>
                           <select class="form-control required" name="loc1" onchange="categoryChange(this)">
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
                           
                        <div class="col-12 form-group">
						<label>지역2</label>
                           <select class="form-control required" name="loc2" id="good">
                              <option value="선택">----- 선택 -----</option>
                           </select>
                          </div>      
      <div class="col-12 form-group">
  
                           <!-- 사진 -->
                           <div class="col-12 form-group">
                              <label>사진올리기</label><br>
                              <input type="file" name="file" id="freelance-quote-sample" data-show-preview="true" multiple="multiple"><br>
                           </div>
                           
                           <!-- 제목 -->
                           <div class="col-12 form-group">
                              <label>제목</label>
                              <input type="text" name="subject" class="form-control required">
                           </div>

                           <!-- 내용 -->
                           <div class="col-12 form-group">
                              <label>내용</label>
                              <textarea name="contents" class="form-control" cols="50" rows="30"></textarea>
                           </div>

                           <!-- 등록버튼 -->
                           <div class="col-12">
                              <input type="submit" value="등록" class="btn btn-secondary" id="btnSubmit">
                           </div> 
                        </div>
                        </form:form>
                       
								<!-- ▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ -->							
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

	<script>
		jQuery(document).ready( function(){
			$("#freelance-quote-sample").fileinput({
				browseClass: "btn btn-secondary",
				browseIcon: "",
				removeClass: "btn btn-danger",
				removeLabel: "",
				removeIcon: "<i class='icon-trash-alt1'></i>",
				showUpload: false
			});
			
			$("#btnSubmit").on("click", function() {
	            window.location.href = "main_city";
	         })
		})
	</script>
</body>
</html>