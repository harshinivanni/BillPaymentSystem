<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CustomerUpdateLogin</title>
<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}

</style>
</head>
<body>



		<div>
<form action="CustomerUpdateController" method="post">		
<center>


<table>
                <tr> 
                        <td><h2>Customer Id</h2></td> 
                        <td><input type="text" name="custid" required="required" /></td> 
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
<th colspan="2"/></th>
<td>

<input type="submit"  value="Submit"style="height: 50px; width: 100px"/>

</td>

<td>
<form action="HomePage.jsp">
<input type="submit"  value="Cancel"style="height: 50px; width: 100px" />
</form>
</td>
</tr>
</table>
</center>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br>
<div style=" height: 50%">

		</div>



</body>
</html>