<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor update </title>
<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}

</style>
</head>
<body>


		<div style="height:70%;">
<center>
<form action="VendorUpdateController" method="post">


             
       <table align="center">
       <br>
                 <tr>  
                        <td><h2> Vendor Id</h2></td> 
                        <td><input type="text" name="ven_id" required="required"  /></td> 
                    </tr>
                        <tr> 
                        <td><h2>Password</h2></td> 
                        <td><input type="password" name="password" required="required" /></td> 
                        </tr>
                       
                        </table> 
                                       
            
         
</center>
</div>



<div>
<center>
<table>
<tr>

<td>

<input type="submit"  value="Submit"style="height: 50px; width: 100px" />

</td>

<td>

<input type="submit"  value="Cancel" style="height: 50px; width: 100px"onclick="window.location.href='VendorUpdateSecondID.jsp'" />

</td>
</tr>
</table>
</center>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</body>
</html>