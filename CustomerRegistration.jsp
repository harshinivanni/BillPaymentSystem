<%@page import="org.w3c.dom.Document"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="mfrp.bps.dao.*" %>
    <%@page import="java.util.*" %>
   
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CustomerRegistration</title>
<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}

</style>

<script type="text/javascript">

var country_arr = new Array("India","USA","UK","Australia","Pakisthan","Newzeland","KSA" );
var s_a = new Array();
s_a[0] = "";
s_a[1] = "Andhra Pradesh|Karnataka|Kerala|Tamil Nadu|Delhi";
s_a[2] = "New Jersey|Floria|Newyork|California";
s_a[3] = "Scotland|Wales|Ireland|England";
s_a[4] = "Melborne|sydney|perth|Queensland|Canberra";
s_a[5]="Islamabad|Peshvar|karachi|Lahore";
s_a[6]="Auckland|Wellington|Napier|Waikato";
s_a[7]="Abudabhi|Jeddah|Qatar|Habala|Khaybar";

function populateStates(countryElementId, stateElementId) {

    var selectedCountryIndex = document.getElementById(countryElementId).selectedIndex;

    var stateElement = document.getElementById(stateElementId);

    stateElement.length = 0; 
    stateElement.options[0] = new Option('Select State','');
    stateElement.selectedIndex = 0;

    var state_arr = s_a[selectedCountryIndex].split("|");

    for (var i = 0; i < state_arr.length; i++) {
        stateElement.options[stateElement.length] = new Option(state_arr[i], state_arr[i]);
    }
}

function populateCountries(countryElementId, stateElementId) {
    // given the id of the <select> tag as function argument, it inserts <option> tags
    var countryElement = document.getElementById(countryElementId);
    countryElement.length = 0;
    countryElement.options[0] = new Option('---Select Country---', '-1');
    countryElement.selectedIndex = 0;
    for (var i = 0; i < country_arr.length; i++) {
        countryElement.options[countryElement.length] = new Option(country_arr[i], country_arr[i]);
    }

   

    if (stateElementId) {
        countryElement.onchange = function () {
            populateStates(countryElementId, stateElementId);
        };
    }
}
</script>
<script type="text/javascript">


function Uname()
{
	var x=document.getElementById("name").value;

	if (x.match("[A-Z]{1}[a-zA-Z ]+")) {
	
	}else
		{
		alert("Start with Uppercase");		
		}
	
}
function Cname()
{
	var x=document.getElementById("cname").value;

	if (x.match("[A-Z]{1}[a-zA-Z ]+")) {
	
	}else
		{
		alert("Start with Uppercase");		
		}
	
}
function email()
{
      var x=document.getElementById("EmailAddress").value;
      if (!(x.match("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"))) {
            alert("invalid email id");
                        }
}
function Ucontact()
{
	var x=document.getElementById("contact").value;

	if (x.match("[0-9]{10}")) {
	
	}else
		{
		alert("Enter numbers or Enter only 10 digits");		
		}
	
}

function cust_check(){
		if(document.getElementById("cname").value==""||document.getElementById("name").value==""||
				document.getElementById("address").value==""||document.getElementById("contact").value==""
					||document.getElementById("country").value==""||document.getElementById("state").value==""
						||document.getElementById("email").value==""||document.getElementById("id_doc").value==""
							||document.getElementById("id_doc_no").value==""||document.getElementById("reg_date").value==""
								||document.getElementById("ven_type").value==""||document.getElementById("card_no").value==""
									||document.getElementById("bal").value==""){
			alert("All fields are Mandatory");
			return false;
		  		}
}



</script>

</head>


<body>

<form method="post" action="CustomerRegistrationController">

<center>
	
		<h1>CUSTOMER  REGISTRATION</h1>
		<br><hr/>
	
		<font face="Times New Roman" size="4">
		<h2>

			<table align="center">
		
			<br>
               
                  <tr> 
                        <td>User Name:</td> 
                        <td><input type="text" name="name" id="name" onblur="Uname()"/></td> 
                    </tr> 
                    <tr> 
    
                        <td>Customer Name:</td> 
                        <td><input type="text" name="cust_name" id="cname" onblur="Cname()" /></td>
                       
                    </tr>                  
                    <tr> 
                        <td>Address:</td> 
                        <td><textarea rows=4 cols=25 name="address" id="address" /></textarea></td> 
                    </tr> 
                    <tr> 
                        <td>Contact:</td> 
                        <td><input type="text" name="contact" id="contact" onblur="Ucontact()"/></td> 
                    </tr>

                    
                    <tr>
					<td>Country :</td>
					<td><select name="Country" id="country"></select>
					State:<select name="State" id="state"></select>
				</tr>
				<script language="javascript">
            populateCountries("country", "state");
            </script>

                     <tr> 
                        <td>Email:</td> 
                        <td><input type="text" name="email" id="email" onblur="email()" /></td> 
                    </tr> 
                   
                    
                    <tr>
                    <td width="40%">ID document  :</td>
					<td width="60%">
					<select name="id_doc" id="id_doc">
					<option value="select">------select--------</option>
  					<option value="PAN CARD">PAN CARD</option>
  					<option value="VOTER-ID CARD">VOTER-ID CARD</option>
  					<option value="DRIVING LICENCE">DRIVING LICENCE</option>
  					<option value="PASSPORT">PASSPORT</option>
					</select>
					</td>
					</tr>
                     <tr> 
                        <td>ID document number: </td> 
                        <td><input type="text" name="id_doc_no" id="id_doc_no"/></td> 
                    </tr>
                    <tr> 
                        <td>Registration date:</td> 
                        <td><input type="date" name="reg_date"  id="reg_date"/></td> 
                    </tr>                   
                   <tr>
					<td width="40%">Vendor type  :</td>
					<td width="60%">
					<select name="ven_type" id="ven_type">
					<option value="select">------select--------</option>
  					<option value="Airtel">Airtel</option>
  					<option value="Aircel">Aircel</option>
  					<option value="Bajaj Alliance">Bajaj Alliance</option>
  					<option value="TNEB">TNEB</option>
  					<option value="LIC">LIC</option>
					</select>
					</td>
					</tr>                                                         
                        <td>Current Balance:</td> 
                        <td><input type="text" name="bal" id="bal" /></td> 
                    </tr>
                    <td colspan="2">
                    <tr> 
                        <td>Card number:</td> 
                        <td><input type="text" name="card_no" id="card_no"/></td> 
                    </tr> 
                    
                   </table>
                   <br> <br><input type="submit" name="submit" value="REGISTER" style="height: 50px; width: 100px" onclick  ="return cust_check()"; />
                    <input type="reset" name="reset" value="RESET" style="height: 50px; width: 100px"/></h2>

</font>
</center>
</form>


<br><br><br>


		

</body>
</html>