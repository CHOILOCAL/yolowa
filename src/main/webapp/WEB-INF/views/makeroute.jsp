<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700|Crete+Round:400i" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="resources/style.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />

	<!-- Date & Time Picker CSS -->
	<link rel="stylesheet" href="resources/css/components/datepicker.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/components/timepicker.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/components/daterangepicker.css" type="text/css" />

	<link rel="stylesheet" href="resources/css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
	<!-- Cal Stylesheets
	============================================= 
	<link href='resources/css/fullcalendar.min.css' rel='stylesheet' />
	<link href='resources/css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
	-->
	
	<!-- Document Title
	============================================= -->
	<title>Portfolio - 3 Columns Left Sidebar | Canvas</title>
	<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript">
		id = '<%=(String)session.getAttribute("member")%>'
		//id='aa'
	
		function showRoute(){
			$.ajax({
				type: "post",
				url: "showRoute",
				data: {id:id},
				dataType: "json",
				success: function(data){
					$("#post-list-footer").empty();
					
					$(data.datas).each(function(index, obj){
						// 마커 찍기
					    var markerImage = new daum.maps.MarkerImage('resources/images/marker/s1.gif', new daum.maps.Size(30,30));
						var marker = new daum.maps.Marker({
					        map: map, // 마커를 표시할 지도
					        position: new daum.maps.LatLng(obj["lat"], obj["lng"]), // 마커를 표시할 위치
					        image : markerImage // 마커 이미지 
					    });
						marker.setMap(map)
						
						// 리스트 출력
						if(obj["num"]===obj["min_num"]){
							var str='<div class="spost clearfix">'
							str+='<div>'
							str+='<a href="javascript:deleteRoute('+obj["num"]+')" class="remove" title="Remove this item"><i class="icon-trash2"></i></a>'
							str+='</div>'
							str+= '<div class="entry-c">'
							str+= '<div class="entry-title">'
							str+= '<div>'+ obj["loc"] +'</div>'
							str+= '</div>'
							str+= '<ul class="entry-meta">'
							str+= '<li>'+obj["r_date"]+'</li>'
							str+= '</ul>'
							str+= '</div>'
							str+= '</div>'
							
							$("#post-list-footer").append(str);
						} else {
							var str ='<div class="spost clearfix">'
							str+='<div class="white-section">'
							str+='<div class="btn-group">';
							str+='<button type="button" class="btn btn-outline-primary"><i class="icon-'+obj["trans"]+'"></i></button>';
							str+='<button type="button" class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
							str+='</button>';
							str+='<div class="dropdown-menu">';
							str+='<a class="dropdown-item" href="javascript:updateTrans('+obj["num"]+',\'bus\')"><i class="icon-bus"></i>&nbsp;&nbsp;Bus</a>';
							str+='<a class="dropdown-item" href="javascript:updateTrans('+obj["num"]+',\'car\')"><i class="icon-car"></i>&nbsp;&nbsp;Car</a>';
							str+='<a class="dropdown-item" href="javascript:updateTrans('+obj["num"]+',\'taxi\')"><i class="icon-taxi"></i>&nbsp;&nbsp;Taxi</a>';
							str+='<a class="dropdown-item" href="javascript:updateTrans('+obj["num"]+',\'walking\')"><i class="icon-walking"></i>&nbsp;&nbsp;Walk</a>';
							str+='</div>';
							str+='</div>'
							str+='</div>'
							str+='</div>'
								
							str +='<div class="spost clearfix">'
							str+='<div>'
							str+='<a href="javascript:deleteRoute('+obj["num"]+')" class="remove" title="Remove this item"><i class="icon-trash2"></i></a>'
							str+='</div>'
							str+= '<div class="entry-c">'
							str+= '<div class="entry-title">'
							str+= '<div>'+ obj["loc"] +'</div>'
							str+= '</div>'
							str+= '<ul class="entry-meta">'
							str+= '<li>'+obj["r_date"]+'</li>'
							str+= '</ul>'
							str+= '</div>'
							str+= '</div>'
								
							$("#post-list-footer").append(str);
						}
					})
				},
				error: function(){
					$("#post-list-footer").text("에러 발생");
				}
			})
		}
		
		function updateTrans(num, trans){
			$.ajax({
				type: "post",
				url: "updateTrans",
				data: {id:id, num:num, trans:trans},
				dataType: "json",
				success: function(data){
					showRoute()
				},
				error: function(){
					$("#post-list-footer").text("에러 발생");
				}
			})
		}
		
		function deleteRoute(num){
			$.ajax({
				type: "post",
				url: "deleteRoute",
				data: {num:num, id:id},
				dataType: "json",
				success: function(data){
					showRoute();
				},
				error: function(){
					$("#post-list-footer").text("에러 발생");
				}
			})
		}
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
	<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
	
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

		</header><!-- #header end -->
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Planning</h1>
				<span>지도 클릭 후 마커를 누르면 일정을 추가하실 수 있습니다.</span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Portfolio</li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Post Content
					============================================= -->
					<div class="tabs tabs-bb clearfix" id="tab-9">

							<ul class="tab-nav clearfix">
								<li><a href="#tabs-33"><i class="icon-map-marked-alt"></i></a></li>
								<li><a href="#tabs-34"><i class="icon-calendar3"></i></a></li>
							</ul>

							<div class="tab-container">
								<div class="tab-content clearfix" id="tabs-33">
									<div  id="portfolio" class="postcontent nobottommargin col_last">
										<div class="clear"></div>
					
						<!-- Portfolio Items
						============================================= -->
										<div id="google-map5" style="height: 850px; margin-bottom: 20px;" class="gmap">
										<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67066fa54e3d8161130b5ab4bd9f65b2&libraries=services,drawing"></script>
										<script>
							
										//alert("지도 자바스크립트 시작")
										//var id='aa'
								
									var container = document.getElementById('portfolio');
									var options = {
											center: new daum.maps.LatLng(37.56683096014424, 126.97865225689458),
											level: 13
										};
								
									var map = new daum.maps.Map(container, options);
								
									var geocoder = new daum.maps.services.Geocoder();
								
									function searchDetailAddrFromCoords(coords, callback) {
								    	// 좌표로 법정동 상세 주소 정보를 요청합니다
								    	geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
									}
								
								    
									// 확대될 위치와 title 객체 배열입니다 
									var positions = [
								    	{	
								    		name: '제주',
								        	latlng: new daum.maps.LatLng(33.49952790785533, 126.53116520247258)
								    	},
								    	{
								    		name: '서울',
								   		  	latlng: new daum.maps.LatLng(37.56683096014424, 126.97865225689458)
								    	},
								   		{
								    		name: '인천',
								      		latlng: new daum.maps.LatLng(37.45593915013356, 126.7052611519603)
								    	},
								    	{
								    		name: '부산',
								        	latlng: new daum.maps.LatLng(35.1797509003599, 129.07507366036432)
								    	},
								    	{
								    		name: '대구',
								        	latlng: new daum.maps.LatLng(35.87138796658832, 128.6018023246532)
								    	},
								    	{
								    		name: '광주',
								        	latlng: new daum.maps.LatLng(35.16008611567544, 126.8515723652103)
								    	}
									];
									
									// 영역데이터 배열
									areas = []
									
									$.ajax({
										type: "post",
										url: "showAreas",
										dataType: "json",
										success: function(data){
											$(data.names).each(function(index1, obj1){
												name=obj1["name_city"]
												path=[]
												$(data.datas).each(function(index2, obj2){
													if(obj2["name"]===obj1["name_city"]){
														path.push(new daum.maps.LatLng(obj2["lat"], obj2["lng"]))
													}
												})
												area ={
													name: name,
													path: path
												};
												areas.push(area);
											})
											
											// 지도에 영역데이터를 폴리곤으로 표시합니다 
											for (var i = 0, len = areas.length; i < len; i++) {
    											displayArea(areas[i]);
											}
										},
										error: function(){
											alert("지도 영역 로드 실패")
										}
									})
								
									// 마커 이미지의 이미지 주소입니다
									var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png';
								
									// 마커 이미지의 이미지 크기 입니다
									var imageSize = new daum.maps.Size(20,25); 
								
									showRoute()
									
									// 다각형을 생상하고 이벤트를 등록하는 함수입니다
									function displayArea(area) {
									    // 다각형을 생성합니다 
									    var polygon = new daum.maps.Polygon({
									        map: map, // 다각형을 표시할 지도 객체
									        path: area.path,
									        strokeWeight: 1.0,
									        strokeColor: '#004c80',
									        strokeOpacity: 0.8,
									        fillColor: '#fff',
									        fillOpacity: 0.0
									    });

										if(map.getLevel()>9){
									    // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다 
									    daum.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
									        polygon.setOptions({fillColor: '#09f', fillOpacity: 0.5});
									    });

									    // 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경합니다
									    daum.maps.event.addListener(polygon, 'mouseout', function() {
									        polygon.setOptions({fillOpacity: 0.0});
									    }); 

									    // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 지도를 확대합니다
									    daum.maps.event.addListener(polygon, 'click', function(mouseEvent) {
									    	for (var i = 0; i < positions.length; i ++) {
									    		if(area.name === positions[i].name){
									    			var moveLatLon = new daum.maps.LatLng(positions[i].latlng.getLat(),positions[i].latlng.getLng());
									    		}
									    	}
									    	map.setLevel(9);
							    			map.panTo(moveLatLon);
									    });
										}
									}
								
									var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
								
									infowindow = new daum.maps.InfoWindow({
								    	removable: true
									});
								
									// 마커를 생성합니다
						    		marker2 = new daum.maps.Marker({
						        		image : markerImage // 마커 이미지
						    		});
								
									daum.maps.event.addListener(map, 'click', function(mouseEvent) {
										infowindow.close();
									
										//클릭한 위도, 경도 정보를 가져옵니다 
								    	var latlng = mouseEvent.latLng;
									
								    	searchDetailAddrFromCoords(latlng, function(result, status) {
								    		marker2.setPosition(latlng);
									    	marker2.setMap(map);
								    		if (status === daum.maps.services.Status.OK) {
								    			message = !!result[0].road_address? result[0].road_address.address_name : result[0].address.address_name;
								    		
								    			var content='<div style="height: 100px"><span class="title">'+message
		                                    	+'</span><div><button value="ADD" id="addlist" class="button button-border button-rounded fill-from-top button-amber">ADD</button></div></div>';
								    		
									        	// 마커에 click 이벤트를 등록하고 클릭 시 인포윈도우를 표시합니다 
									        	daum.maps.event.addListener(marker2, 'click', function() {
									            	infowindow.setContent(content);
									        	
									        		infowindow.open(map, marker2)
									            	
													$("#addlist").click(function(){
														var r_date=$("#selectDay").val();
														var trans='bus';
									        			var lat=latlng.getLat()
									        			var lng=latlng.getLng()
									        
									        			var sub='<form id="frmRoute" action="insertRoute" method="post">'
														sub+='<input id="loc" type="hidden" name="loc" value="'+message+'">'
														sub+='<input id="r_date" type="hidden" name="r_date" value="'+r_date+'">'
														sub+='<input id="trans" type="hidden" name="trans" value="'+trans+'">'
														sub+='<input id="id" type="hidden" name="id" value="'+id+'">'
														sub+='<input id="lat" type="hidden" name="lat" value="'+lat+'">'
														sub+='<input id="lng" type="hidden" name="lng" value="'+lng+'">'
														sub+='</form>'
											
													
														$("#forfrm").empty();
									        			$('#forfrm').html(sub);
													
														$.ajax({
															type: "post",
															url: "insertRoute",
															data: $("#frmRoute").serialize(),
															dataType: "json",
															success: function(data){
																marker2.setMap(null);
																infowindow.close();
																
																$('#cal').attr('src', 'cal');
															
																showRoute()
															},
															error: function(){
																$("#post-list-footer").text("에러 발생");
															}
														})
													})
									        	});

									        	// 인포윈도우를 닫습니다
									        	daum.maps.event.addListener(marker2, 'dblclick', function() {
									            	infowindow.close();
									        	});
								    		}else{
								    			message='지원이 안되는 아너ㅣㅁㅁㅈㄷㅁㅇㄴ뮈';
								    		}
								    	
								    	})
									});
									
									$(function() {
										$(".daterange3").daterangepicker({
											singleDatePicker: true,
											showDropdowns: true
										},
										function(start, end, label) {
											
										});
									});
							</script>
							
						</div><!-- #portfolio end -->

					</div><!-- .postcontent end -->
					

					<!-- Sidebar
					============================================= -->
					<div class="sidebar nobottommargin">
						<div class="sidebar-widgets-wrap">

							<div class="widget clearfix">

								<h4><a href="javascript:showRoute()">Route</a></h4>
								<div class="bottommargin">
									<input id="selectDay" type="text" class="form-control daterange3" value="" />
								</div>
								<div id="post-list-footer" style="overflow:scroll; height: 850px;"></div>
								<div id="forfrm"></div>
							</div>

						</div>
					</div><!-- .sidebar end -->
				</div>
			</div>
			
			<div class="tab-content clearfix" id="tabs-34">
				<iframe id="cal" src="cal" style="width: 1100px; height: 900px"></iframe>
			</div>
		</div>
	</div>
</div>
</section><!-- #content end -->
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->

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

								<img src="resources/images/footer-widget-logo.png" alt="" class="footer-logo">

								<p>We believe in <strong>Simple</strong>, <strong>Creative</strong> &amp; <strong>Flexible</strong> Design Standards.</p>

								<div style="background: url('resources/images/world-map.png') no-repeat center center; background-size: 100%;">
									<address>
										<strong>Headquarters:</strong><br>
										795 Folsom Ave, Suite 600<br>
										San Francisco, CA 94107<br>
									</address>
									<abbr title="Phone Number"><strong>Phone:</strong></abbr> (91) 8547 632521<br>
									<abbr title="Fax"><strong>Fax:</strong></abbr> (91) 11 4752 1433<br>
									<abbr title="Email Address"><strong>Email:</strong></abbr> info@canvas.com
								</div>

							</div>

						</div>

						<div class="col_one_third">

							<div class="widget widget_links clearfix">

								<h4>Blogroll</h4>

								<ul>
									<li><a href="http://codex.wordpress.org/">Documentation</a></li>
									<li><a href="http://wordpress.org/support/forum/requests-and-feedback">Feedback</a></li>
									<li><a href="http://wordpress.org/extend/plugins/">Plugins</a></li>
									<li><a href="http://wordpress.org/support/">Support Forums</a></li>
									<li><a href="http://wordpress.org/extend/themes/">Themes</a></li>
									<li><a href="http://wordpress.org/news/">WordPress Blog</a></li>
									<li><a href="http://planet.wordpress.org/">WordPress Planet</a></li>
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
												<h4><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">Elit Assumenda vel amet dolorum quasi</a></h4>
											</div>
											<ul class="entry-meta">
												<li>10th July 2014</li>
											</ul>
										</div>
									</div>

									<div class="spost clearfix">
										<div class="entry-c">
											<div class="entry-title">
												<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
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
									<div class="counter counter-small"><span data-from="50" data-to="15065421" data-refresh-interval="80" data-speed="3000" data-comma="true"></span></div>
									<h5 class="nobottommargin">Total Downloads</h5>
								</div>

								<div class="col-lg-6 bottommargin-sm">
									<div class="counter counter-small"><span data-from="100" data-to="18465" data-refresh-interval="50" data-speed="2000" data-comma="true"></span></div>
									<h5 class="nobottommargin">Clients</h5>
								</div>

							</div>

						</div>

						<div class="widget subscribe-widget clearfix">
							<h5><strong>Subscribe</strong> to Our Newsletter to get Important News, Amazing Offers &amp; Inside Scoops:</h5>
							<div class="widget-subscribe-form-result"></div>
							<form id="widget-subscribe-form" action="include/subscribe.php" method="post" class="nobottommargin">
								<div class="input-group divcenter">
									<div class="input-group-prepend">
										<div class="input-group-text"><i class="icon-email2"></i></div>
									</div>
									<input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
									<div class="input-group-append">
										<button class="btn btn-success" type="submit">Subscribe</button>
									</div>
								</div>
							</form>
						</div>

						<div class="widget clearfix" style="margin-bottom: -20px;">

							<div class="row">

								<div class="col-lg-6 clearfix bottommargin-sm">
									<a href="#" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
										<i class="icon-facebook"></i>
										<i class="icon-facebook"></i>
									</a>
									<a href="#"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
								</div>
								<div class="col-lg-6 clearfix">
									<a href="#" class="social-icon si-dark si-colored si-rss nobottommargin" style="margin-right: 10px;">
										<i class="icon-rss"></i>
										<i class="icon-rss"></i>
									</a>
									<a href="#"><small style="display: block; margin-top: 3px;"><strong>Subscribe</strong><br>to RSS Feeds</small></a>
								</div>

							</div>

						</div>

					</div>

				</div><!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">

				<div class="container clearfix">

					<div class="col_half">
						Copyrights &copy; 2014 All Rights Reserved by Canvas Inc.<br>
						<div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
					</div>

					<div class="col_half col_last tright">
						<div class="fright clearfix">
							<a href="#" class="social-icon si-small si-borderless si-facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-gplus">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-pinterest">
								<i class="icon-pinterest"></i>
								<i class="icon-pinterest"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-vimeo">
								<i class="icon-vimeo"></i>
								<i class="icon-vimeo"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-github">
								<i class="icon-github"></i>
								<i class="icon-github"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-yahoo">
								<i class="icon-yahoo"></i>
								<i class="icon-yahoo"></i>
							</a>

							<a href="#" class="social-icon si-small si-borderless si-linkedin">
								<i class="icon-linkedin"></i>
								<i class="icon-linkedin"></i>
							</a>
						</div>

						<div class="clear"></div>

						<i class="icon-envelope2"></i> info@canvas.com <span class="middot">&middot;</span> <i class="icon-headphones"></i> +91-11-6541-6369 <span class="middot">&middot;</span> <i class="icon-skype2"></i> CanvasOnSkype
					</div>

				</div>

			</div><!-- #copyrights end -->

		</footer><!-- #footer end -->

	</div><!-- #wrapper end -->
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/plugins.js"></script>
	
	<!-- Date & Time Picker JS -->
	<script src="resources/js/components/moment.js"></script>
	<script src="resources/js/components/datepicker.js"></script>
	<script src="resources/js/components/timepicker.js"></script>

	<!-- Include Date Range Picker -->
	<script src="resources/js/components/daterangepicker.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="resources/js/functions.js"></script>
	<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
	<!-- Cal Scripts
	============================================= 
	<script src='resources/js/moment.min.js'></script>
	<script src='resources/js/jquery.min.js'></script>
	<script src='resources/js/fullcalendar.min.js'></script>
	<script src='resources/js/ko.js'></script>
	-->

</body>
</html>