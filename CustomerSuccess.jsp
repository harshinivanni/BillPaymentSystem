<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Successfully</title>
<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}

</style>
</head>
<%
	String customerid = (String)session.getAttribute("CustomerID");
%>
<body>
<div style=" height: 20%;">
			<%@ include file="CustRegHeader.jsp"%>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<div style="height:70%;">
		<center>
<h2>Customer registered successfully & Your Generated customer ID is <%=customerid %></h2></center>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
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

</body>
</html>