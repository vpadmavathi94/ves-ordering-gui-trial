<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>JQuery, Ajax and Servlet</title>


<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></SCRIPT>
<SCRIPT>
	$(document).ready(function(){
		$('#userName').blur(function(){
			alert( $('#userName').val());
			$.ajax({
				url : 'GetUserServlet',
				data : {
					userName : $('#userName').val()
				},
				success: function(responseText){
					$('#ajaxGetUserServletResponse').text(responseText);
				}
			});
		});
	});
</script>


</head>
<body>
	<form>
		Enter your Name : <input type="text" id="userName"/>
	</form>
	<br>
	<br>
	
	<strong>Ajax Response:</strong>
	<div id="ajaxGetUserServletResponse"></div>
</body>
</html>