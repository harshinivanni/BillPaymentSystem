<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>error</title>
<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}
</style>
</head>
<body>
	<center>
		<h1 style="color: red;">
			<%
				String msg = (String) request.getAttribute("error");
				if (msg != null) {
					out.println(msg);
				}
			%>
		</h1>
		<div style="height: 20%;">
			<h1>Vendor Registration</h1>
		</div>
		<hr/>
		<div style="height: 70%;">
		<br><br><br>
			<font color=""><h2>Registration UnSuccessfull!</h2>
			<br><br><br>
			</font>
			<form action="VendorRegistration.jsp"><br><br><br><br><br><br><br>
				<input type="submit" value="TRY AGAIN" style="height: 50px; width: 100px"/>
			</form>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
		
	</center>
</body>
</html>