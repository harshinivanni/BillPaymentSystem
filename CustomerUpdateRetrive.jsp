<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="mfrp.bps.vo.CustomerUpdateVo"%>
   <%@ page import="mfrp.bps.dao.CustomerUpdateDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customerupdate2</title>
<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}
</style>
<script type="text/javascript">
var country_arr = new Array("India","USA","UK","Australia","Pakistan","NewZealand","KSA" );
var s_a = new Array();
s_a[0] = "";
s_a[1] = "Andhra Pradesh|Karnataka|Kerala|Tamil Nadu";
s_a[2] = "New Jersey|Floria|Newyork|California";
s_a[3] = "Scotland";
s_a[4] = "Melborne|sydney|perth";
s_a[5]="Islamabad|Peshvar|karachi|Punjab";
s_a[6]="Auckland|Wellington|Napier";
s_a[7]="Abudabhi|Jeddah|Qatar";
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

    // Assigned all countries. Now assign event listener for the states.

    if (stateElementId) {
        countryElement.onchange = function () {
            populateStates(countryElementId, stateElementId);
        };
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
function card()
{
	var x=document.getElementById("cardno").value;
	if(x.match("[0-9]{16}"))
		{
		
		}
	else
		{
		alert("card no should be of 16 digits");
		}
	}
function mail()
{
	//Validates Email-Id
      var x=document.getElementById("EmailAddress").value;
      if (!(x.match("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"))) 
      {
            alert("invalid email id");
      }
}


</script>

</head>
<body>
<%
	CustomerUpdateVo bv1= new CustomerUpdateVo();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
bv1=(CustomerUpdateVo)request.getAttribute("bv1");
%>
<form action="CustomerUpdateController" method="post">

		<div style="height:70%;">
<center>
<h2>
<table align="center"> 
                
                <tbody> 
                   <tr> 
                        <td>Customer ID</td> 
                        <td><input type="text" name="custid" value="<%=bv1.getCustid()%>" readonly="readonly"></td> 
                    </tr>
                   
                    <tr> 
                        <td>User Name</td> 
                        <td><input type="text" name="name" value="<%=bv1.getName()%>"readonly="readonly"></td> 
                    </tr> 
                    <tr> 
                        <td>Customer Name</td> 
                        <td><input type="text" name="custname" value="<%=bv1.getCustname()%>"readonly="readonly"></td> 
                    </tr>
                    <tr> 
                        <td>Address</td> 
                        <td><textarea rows=4 cols=16 name="address" > <%=bv1.getAddr()%></textarea>
                        </td> 
                    </tr> 
                    <tr> 
                       <td>Contact</td> 
                        <td><input type="text" name="contact" id="contact"  value="<%=bv1.getContactno()%>" onblur="Ucontact()" ></td>                     
                    </tr>
                    <tr> 
                        <td>Country</td>
                        <td><input type="text"  value="<%=bv1.getCountry() %>"readonly="readonly"></td>
                        </tr> 
			
			
			<tr> 
                        <td>State</td> 
                        <td><input type="text" value="<%=bv1.getState()%>"readonly="readonly"/></td> 
                    </tr>
                    
                    
                    <tr>
					<td>New Country :</td>
					<td><select name="country" id="country"></select>
					<td> New State:</td><td><select name="state" id="state"></select></td>
				</tr>
				<script language="javascript">
            populateCountries("country", "state");
            </script>
                    
                    
                     <tr> 
                        <td>Email</td> 
                        <td><input type="text" name="email" id="EmailAddress" value="<%=bv1.getEmail() %>" onblur="mail()"/></td> 
                    </tr> 
                    <tr> 
                        <td>ID Document</td> 
                        <td><input type="text" value="<%=bv1.getIddoc()%>"readonly="readonly" /></td> 
                    </tr>
                    
                    <tr>
                    <td >ID document  :</td>
					<td >
					<select name="iddoc">
					<option value="select">------select--------</option>
  					<option value="PAN CARD">PAN CARD</option>
  					<option value="VOTER-ID CARD">VOTER-ID CARD</option>
  					<option value="DRIVING LICENCE">DRIVING LICENCE</option>
  					<option value="PASSPORT">PASSPORT</option>
					</select>
					</td>
					</tr>
					
					
                    <tr> 
                        <td>ID Document No.</td> 
                        <td><input type="text" name="iddocno" value="<%=bv1.getIdno() %>" ></td> 
                    </tr>
                    <tr> 
                        <td>Registration date</td> 
                        <td><input type="text" name="regdate" value="<%=bv1.getRegdate() %>" readonly="readonly" ></td> 
                    </tr>
                    
                    <tr> 
                        <td>Vendor type</td> 
                        <td><input type="text"  value="<%=bv1.getVentype() %>" readonly="readonly" ></td> 
                    </tr>
                    <tr>
					<td>New Vendor type</td>
			<td>
					<select name="ventype">
					<option value="select">------select--------</option>
  					<option value="Telephone">Telephone</option>
  					<option value="Electricity">Electricity</option>
  					<option value="Insurance">Insurance</option>
  					<option value="Tax">Tax</option>
					</select>
					</td>
					</tr>  
                    
                    <tr> 
                        <td>Current Balance</td> 
                        <td><input type="text" name="bal" value="<%=bv1.getBal() %>" ></td> 
                    </tr>
                     <tr> 
                        <td>Card Number</td> 
                        <td><input type="text" name="cardno" id="cardno" value="<%=bv1.getCardno() %>"onblur="card()" ></td> 
                    </tr>
                     
                     <tr>
                    <td >
                    
            
       <td>      <input type="submit" value="Submit"style="height: 50px; width: 100px" /></td>
           
                    </td>
                 
                    </tr> 
            
                    
                    
                </tbody> 
            </table> </h2>

</center>
</div><br>


</form>


</body>
</html>