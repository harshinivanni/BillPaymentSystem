<%@page import="java.sql.ResultSet"%>

<%@page import="mfrp.bps.vo.VendorUpdateVo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendor Updation</title>
<style type="text/css">
body,html{
height:100%;
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;	
}

</style>
<script type="text/javascript">
var country_arr = new Array("India","USA","UK","Australia","Pakisthan","Newzealand","KSA" );
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
function web()
{
	//Validates WebAddress
      var x=document.getElementById("WebAddress").value;
      if (!x.match("[www]{3}[.]{1}[a-zA-Z0-9]{3,10}[.]{1}[c]{1}[o]{1}[m]{1}")) {
            
                  alert("Invalid web address");
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
<%
String message="";
if(request.getAttribute("message")!=null){
	message=request.getAttribute("message").toString();
}
%>
</head>
<body>

<%
	VendorUpdateVo v1 = (VendorUpdateVo)request.getAttribute("v1");
%>

<form action="VendorUpdateController2" method="get">

		<div style="height:70%;">
		
 <h2>
<table align="center">
 
    
                
                   <tr> 
                  
                    <h2>    <td>Vendor Id</td> </h2>
                        <td><input type="text" name="ven_id" id="vendorname" value="<%=v1.getVendorId()%>" readonly="readonly" /></td> 
                    </tr>
                   
                    <tr> 
                        <td>Company Registration no</td> 
                        <td><input type="text" name="comp_regno" value="<%=v1.getCompRegno()%>" readonly="readonly"/></td> 
                    </tr> 
                    <tr> 
                        <td>Vendor Name<span class="mandatory" style="color:red">*</span></td> 
                        <td><input type="text" name="vend_name" id="vendorname" value="<%=v1.getVendorName()%>" /></td> 
                    </tr> 
                    <tr> 
                        <td>Vendor Type</td> 
                        <td><input type="text" name="vend_type"  value="<%=v1.getVendorType()%>" readonly="readonly"/></td> 
                    </tr>
                    
                    <tr>
					<td>New Vendor type <span class="mandatory" style="color:red">*</span></td>
			<td>
					<select name="VendorType" id="VendorType">
					<option value="select">------select--------</option>
  					<option value="Telephone">Telephone</option>
  					<option value="Electricity">Electricity</option>
  					<option value="Insurance">Insurance</option>
  					<option value="Tax">Tax</option>
					</select>
					</td>
					</tr>          
                    <tr> 
                        <td>Certificate</td> 
                        <td><input type="text" name="certificate" value="<%=v1.getCertificate()%>" readonly="readonly"/></td>
                    </tr>
                     <tr> 
                        <td>Certificate Issue Date</td> 
                        <td><input type="text" name="cerissuedate"  id="datepicker" value="<%=v1.getCertIssuDate()%>" readonly="readonly" /></td> 
                    </tr> 
                    <tr> 
                        <td>Certificate Validity date</td> 
                        <td><input type="text" name="cervaliddate" value="<%=v1.getCertValidDate()%>" readonly="readonly"/></td> 
                    </tr>
                    <tr> 
                        <td>Year of Establishment</td>
                        <td><input type="text" name="yoe" id="yoe" value="<%=v1.getYoe()%>" readonly="readonly"/></td> 
                    </tr>
                    <tr> 
                        <td>Country</td>
                         <td>
                        <input type="text" name="country"  value="<%=v1.getCountry() %>"readonly="readonly">
</td>
                    </tr>
                    
                    <tr> 
                        <td>State</td>
                        <td>
                         <input type="text" name="state" value="<%=v1.getState() %>"readonly="readonly"> </td>
                        
                    </tr>
                    <tr>
					<td>New Country : <span class="mandatory" style="color:red">*</span></td>
					<td><select name="Country" id="country" ></select>
					<td> New State:</td><td><select name="State" id="state"></select></td>
				</tr>
				<script language="javascript">
            populateCountries("country", "state");
            </script>
                    
                    
                    <tr> 
                        <td>Address <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="text" name="address" required="required" value="<%=v1.getAddress()%>" /></td> 
                    </tr> 
                    <tr> 
                        <td>Email <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="text" name="email" required="required" value="<%=v1.getEmail()%> "onblur="mail()"/></td> 
                    </tr>
                    <tr> 
                        <td>Contact <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="text" name="contact" required="required" value="<%=v1.getContact()%>" onblur="Ucontact()"/></td> 
                    </tr>
                    <tr> 
                        <td>Website <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="text" name="website" required="required" value="<%=v1.getWebsite()%>"  onblur="web()"/></td> 
                    </tr>
                    <tr> 
                        <td>Employee Count <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="text" name="ecount" required="required" value="<%=v1.getEmpcount()%>"/></td> 
                    </tr>
                    <tr> 
                        <td>Customer Count <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="text" name="cuscount"  required="required" value="<%=v1.getCustcount()%>"/></td> 
                    </tr>
                    
				<tr>  
                        <td>Password <span class="mandatory" style="color:red">*</span></td>
                        <td><input type="password" name="pass" required="required" /></td> 
                    </tr>
                    <tr>
                    <td>
                    
            <center>   
            <input type="submit" value="Submit" style="height: 50px; width: 100px"/></center>
                    </td>
                    </tr>      
            </table> </h2>
            </font>

</center>
</h2>
</div>

</form>
</body>
</html>