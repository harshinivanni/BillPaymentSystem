<%@page import="mfrp.bps.vo.VendorVo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>

<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}

</style>
</head>
<%
	String vendorid = (String)session.getAttribute("VendorID");
%>
<body>
	<center>
		<div style="height: 20%;">
			<h1>Vendor Registration</h1>
			<br><hr/>
		</div>
		<div style="height: 70%;">
		<font face="Times New Roman" size="4" color=""><br>
			<h2>Successfully Register the Vendor & Your Generated Vendor ID is <%=vendorid %></h2>
			</font>
			<br><br><br><br><br><br><br><br><br><br><br><br>
			<form action="HomePage.jsp">
				<input type="submit" value="Home" style="height: 50px; width: 100px" />
			</form>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
			
	</center>
</body>
</html>