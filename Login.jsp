<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
<style type="text/css">
body,html{
height:100%;
background-size:100%;
}
</style>
<style>
.mandatory {
	color: red;
}
</style>
 <%
String message=""; 
if(request.getAttribute("message")!=null){
	message=request.getAttribute("message").toString();
}
%>
</head>
<body background="99.jpg">

<form action="Loginverification" method="post">
<div style=" height: 20%;">
<%@ include file="Loginheader.jsp"%>
</div>
<div style="height:70%;">
<span style="color:red" ><%=message %></span>		
<center>
<font face="Times New Roman" size="5">

<br>
<br>
<br><br><br><br>
<tr>
<td>User name</td> 
<td> <input type="text" name="username" required="required" placeholder="Enter the username"><br /><br />
</td> 
</tr>
<tr>
<td>Password</td> 
<td> <input type="password" name="password" required="required" placeholder="Enter the password"><br /></td> 
</tr>
<br><br><br>
<tr><td><input type="submit" value="Login" style="height: 50px; width: 100px" /></td>
<td><input type="reset"  value="Reset" style="height: 50px; width: 100px" /></td>
</tr>
</font>
</div>
<br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>

</form>
</body>
</html>