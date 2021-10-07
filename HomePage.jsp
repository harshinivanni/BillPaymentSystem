<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
<style type="text/css">
body,html{
height:100%;
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;	
}

</style>
</head>
<body >
<center>
<div style="height: 20%;">
<%@ include file="Loginheader.jsp"%>
</div>


<div style="height:100%;">
 
      <center>
      <br><br><br>

<tr><td><class=txtpad colSpan=4 align=center>
<INPUT value="Vendor Registration" type="button" style="height: 75px; width: 250px"  
onclick="window.location.href='VendorRegistration.jsp'" /></td> 

<td><class=txtpad colSpan=4 align=center>
<INPUT value="Vendor Updation" type="button" style="height:75px; width: 250px" 
onclick="window.location.href='VendorUpdateLogin.jsp'" /></td> 
<br/><br/>
<td><class=txtpad colSpan=4 align=center>
<INPUT value="Customer Registration" type="button" style="height: 75px; width: 250px" 
onclick="window.location.href='CustomerRegistration.jsp'" /></td> </tr>
<tr><td><class=txtpad colSpan=4 align=center>
<INPUT value="Customer Updation" type="button" style="height: 75px; width: 250px" 
onclick="window.location.href='Customerupdate1.jsp'" /></td> </tr>
<br/><br/>
<tr><td><class=txtpad colSpan=4 align=center>
<INPUT value="Bill Payment" type="button" style="height: 75px; width: 250px" 
onclick="window.location.href='BillPayment.jsp'" /></td> </tr>
<br/><br/>

<td><class=txtpad colSpan=4 align=center>
<INPUT value="Logout" type="button" style="height: 75px; width: 250px" 
onclick="window.location.href='Login.jsp'" ></td></tr>
</tr>
</center>
</div>
<br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br>


</center>
</body>
</html>
