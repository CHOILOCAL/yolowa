<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<link href='resources/css/fullcalendar.min.css' rel='stylesheet' />
<link href='resources/css/fullcalendar.print.min.css' rel='stylesheet'
	media='print' />
<script src='resources/js/moment.min.js'></script>
<script src='resources/js/jquery.min.js'></script>
<script src='resources/js/fullcalendar.min.js'></script>
<script src='resources/js/ko.js'></script>

<script>

$(document).ready(function() {
	$('#calendar').fullCalendar({
		editable: true,
		eventLimit: true,
		locale:"ko",
		header: { left: 'prev,next today', center: 'title', right: 'month,basicWeek,basicDay' }, 
		defaultDate: new Date(), 
		navLinks: true,  
		events: [  
			<%=(String) request.getAttribute("list")%>
		] 
	}); 
});
	
</script>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>
</head>
<body>
<div id='calendar'></div>
</body>
</html>