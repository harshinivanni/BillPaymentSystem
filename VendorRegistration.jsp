<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="mfrp.bps.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VENDOR REGISTRATION</title>

<style type="text/css">
body,html{
background: url(99.jpg) no-repeat;
background-size:cover;
background-repeat: no-repeat;		
}
</style>
<script type="text/javascript">
var country_arr = new Array("India","USA","UK","Australia","Pakistan","Newzealand","KSA" );
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
function vendorName(){
    var x=document.getElementById("VendorName").value;
    if (x.match("[A-Z]{1}[a-zA-Z ]+")) {    
    }else
          {
          alert("Start with Uppercase");            
          }
    }
function vendortype(){
    var y= document.getElementById("Vendtype").value ;
  if(y=="select")
     {
     alert( "Please provide your vendor type!" );
  }
}

function country(){
    var z= document.getElementById("Country").value ;
 if(z=="Select Country")
     {
    alert( "Please select a country" );
 }
}
function email()
{
      var x=document.getElementById("EmailAddress").value;
      if (!(x.match("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"))) {
            alert("invalid email id");
                        }
}
 function contact()
    {
          var x=document.getElementById("ContactNumber").value;
          if ((x.match("[1-9]{1}[0-9]{9}")) &&(x.length()==10))  {
                
     }
          else
          {
                alert("Contact must be 10 digits");
          }
                
                }
function web()
    {
          var x=document.getElementById("WebAddress").value;
          if (!x.match("[www]{3}[.]{1}[a-zA-Z0-9]{3,10}[.]{1}[c]{1}[o]{1}[m]{1}")) {
                
                      alert("Invalid web address");
          }
    }
function employeeCount(){
        
    	var x=document.getElementById("EmployeeCount").value;

    	    if(x<30)  {
    	          alert("Employee count must be above 30");
    	    }
    	    }
function yearofest()
    {
          var x=document.getElementById("YearOfEstab").value;
          if (x < 1900 || x > 2015) {

                alert("InValid Year Of Establishment");
    }
    }
</script>


</head>
<body>
	<form method="post" action="VendorRegisterController">
	<center>
	
		<h1>VENDOR REGISTRATION</h1>
	<h4>	<a href="HomePage.jsp">Home Page</a>
       <a href="Login.jsp">logout</a></h4>
		<hr/>
	
		<font face="Times New Roman" size="4">
		<h2>

			<table align="center">
			
			<br>
				<tr>
					<td>Vendor Name :</td>
					<td><input type="text" id="VendorName" required="required" name="VendorName" onblur="vendorName()" />
					</td>
				</tr>
				
				<tr>
					<td width="40%">Vendor type  :</td>
					<td width="60%">
					<select name="VendorType" id="Vendtype" required="required" onblur="vendortype()">
					<option value="select">------select--------</option>
  					<option value="Telephone">Telephone</option>
  					<option value="Electricity">Electricity</option>
  					<option value="Insurance">Insurance</option>
  					<option value="Tax">Tax</option>
					</select>
					</td>
					</tr>
                    

				<tr>
					<td>Address :</td>
					<td><textarea rows="3" cols="15" name="Address" required="required" onmousedown="scrollbars"></textarea>
					</td>
				</tr>
				<tr>
					<td>Country :</td>
					<td><select name="Country" id="country" required="required" onblur="country()"></select>
					State:<select name="State" id="state"></select>
				</tr>
				<script language="javascript">
            populateCountries("country", "state");
            </script>

				<tr>
					<td>Email Address :</td>
					<td><input type="text" name="EmailAddress" required="required" id="EmailAddress" onblur="email()"/>
					</td>
				</tr>
				<tr>
					<td>Contact Number :</td>
					<td><input type="text" name="ContactNumber" id="ContactNumber" required="required" onblur="contact()" />
					</td>
				</tr>
				<tr>
					<td>Web Address :</td>
					<td><input type="text" name="WebAddress" id="WebAddress" required="required" onblur="web()"/>
					</td>
				</tr>
				<tr>
					<td>Certificate Issue Date :</td>
					<td>
						<%
							Date d = new Date();
							SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
							String a = sdf.format(d);
						%> <input type="text" name="CertIssueDate" required="required" value=<%=a%>  />
					</td>
				</tr>
				<tr>
					<td>Certificate Validity Date :</td>
					<td>
						<%
							StringTokenizer str = new StringTokenizer(a, "/");
							String x = str.nextToken();
							String y = str.nextToken();
							String yr = str.nextToken();
							int yr1 = Integer.parseInt(yr);
							int yr2 = yr1 + 15;
							String year = x + "/" + y + "/" + yr2;
						%> <input type="text" name="CertValidDate" required="required" value=<%=year%> />
					</td>

				</tr>
				<tr>
					<td>Employee Count :</td>
					<td><input type="text" name="EmployeeCount" id="EmployeeCount" required="required" onblur="employeeCount()" />
					</td>
				</tr>
				<tr>
					<td>Customer Count :</td>
					<td><input type="text" name="CustomerCount" required="required" />
					</td>
				</tr>
				<tr>
					<td>Year Of Establishment :</td>
					<td><input type="text"  name="YearOfEstab" id="YearOfEstab" required="required" onblur="yearofest()"/>
					</td>
				</tr>
				
			</table>
			<br><br><br> <input type="submit" name="submit" value="REGISTER" style="height: 50px; width: 100px" onsubmit="return validReg();" /> <input
				type="reset" name="reset" value="RESET" style="height: 50px; width: 100px"  /></h2>
				</font>
				</center>
				<br><br><br>	
	
		</form>
	
	
</body>
</html>