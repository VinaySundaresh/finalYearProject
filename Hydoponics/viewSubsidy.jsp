<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="farmertabs.html" %>
<title>Hydroponics</title>



<script>
function validateCat(){
var x=document.forms["form3"]["category"].value;

if(x==""){
alert("category name  cannot be blank");
return false;
}else{
return true;
}

}


function validateAdd(){
var x=document.forms["form2"]["productname"].value;
var y=document.forms["form2"]["productprice"].value;
var z=document.forms["form2"]["quantity"].value;
var a=document.forms["form2"]["desc"].value;

if(x==""){
alert("product name  cannot be blank");
return false;
}if(y==""){
alert("Product Price  cannot be blank");
return false;
}if(z==""){
alert("Quantity  cannot be blank");
return false;
}if(a==""){
alert("Description  cannot be blank");
return false;
}else{
return true;
}

}

</script>
<style type="text/css">
<!--
body {
	background-color: white;
}
body,td,th {
	color: blue;
}
.style1 {color: #000000}
.style2 {color: white}
.style3 {color: #CCCCCC; }
-->
</style></head>

<body>
<%@ include file="db.jsp" %>
<br />
<br />

<p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>Subsidy details</strong></p>


&nbsp;

<table width="1076" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
     <td><pre class="style1"><b>Crop Name </b> </pre></td>
     <td><span class="style1"><b>Scheme Name</b></span></td>
     <td><span class="style1"><b>Maximum Amount</b></span></td>
     <td><span class="style1"><b>Documents Required</b></span></td>
   
    
   </tr>
    <% rst=stmt.executeQuery("select * from subsidy");
	  while(rst.next()){ %>
   <tr bgcolor="#005555">
     <td><span class="style2"><%= rst.getString(1) %></span></td>
     <td><span class="style2"><%= rst.getString(2) %></span></td>
     <td><span class="style2"><%= rst.getString(3) %></span></td>
     <td><span class="style2"><%= rst.getString(4) %></span></td>
     
    
   </tr>
   <% } %>
 </table>
 <p align="center">&nbsp;  </p>
</body>
</html>
