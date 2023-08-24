<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>ViewUsers</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/bg1.jpg);
}

-->
</style>
</head>

<body>
  <%@ include file="db.jsp" %> 
    <%@ include file="admintabs.html" %> 
	
	<br />
<br />
<br />
<br />
<br />

<p align="center" style="color:white; font-weight:bold;"> 

  Farmers details</p>
<table style="color:black;" width="1076" border="0" align="center">
  <tr bgcolor="#65D6CF">
    <td width="193"><div align="center"><strong>Name</strong></div></td>
    <td width="142"><div align="center"><strong>Phone </strong></div></td>
    <td width="128"><div align="center"><strong>Gender</strong></div></td>
    
    <td width="94"><div align="center"><strong>Email</strong></div></td>
    <td width="141"><div align="center"><strong>Address</strong></div></td>
    <td width="148"><div align="center"><strong>password</strong></div></td>
    <td width="148"><div align="center"><strong>ID</strong></div></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from farmer");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#005555"  style="color:white; text-align:center;">
    <td><%= rst.getString(1) %></td>
	 <td><%= rst.getString(2) %></td>
	  <td><%= rst.getString(3) %></td>
	   <td><%= rst.getString(4) %></td>
	    <td><%= rst.getString(5) %></td>
		 <td><%= rst.getString(6) %></td>
		 	 <td><%= rst.getString(7) %></td>
    
  </tr>
  </form>
  <% } %>
</table>

<p align="center" style="color:white; font-weight:bold;"> Vender details</p>

 
<table style="color:black;" width="1076" border="0" align="center">
  <tr bgcolor="#65D6CF">
    <td width="193"><div align="center"><strong>Name</strong></div></td>
    <td width="142"><div align="center"><strong>Phone </strong></div></td>
    <td width="128"><div align="center"><strong>Gender</strong></div></td>
    
    <td width="94"><div align="center"><strong>Email</strong></div></td>
    <td width="141"><div align="center"><strong>Address</strong></div></td>
    <td width="148"><div align="center"><strong>password</strong></div></td>
    <td width="148"><div align="center"><strong>ID</strong></div></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from Vender");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#005555"  style="color:white; text-align:center;">
    <td><%= rst.getString(1) %></td>
	 <td><%= rst.getString(2) %></td>
	  <td><%= rst.getString(3) %></td>
	   <td><%= rst.getString(4) %></td>
	    <td><%= rst.getString(5) %></td>
		 <td><%= rst.getString(6) %></td>
		 	 <td><%= rst.getString(7) %></td>
    
  </tr>
  </form>
  <% } %>
</table>


<p align="center" style="color:white; font-weight:bold;"> Labour details</p>

 
<table style="color:black;" width="622" border="0" align="center">
  <tr bgcolor="#65D6CF">
    <td width="193"><div align="center"><strong>Name</strong></div></td>
    <td width="142"><div align="center"><strong>Phone </strong></div></td>
    <td width="128"><div align="center"><strong>Gender</strong></div></td>
    
    <td width="141"><div align="center"><strong>Address</strong></div></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from Labour");
  while(rst.next()){
  
   %>
  
  <form action="" method="get" >
  <tr bgcolor="#005555"  style="color:white; text-align:center;">
    <td><%= rst.getString(1) %></td>
	 <td><%= rst.getString(2) %></td>
	  <td><%= rst.getString(3) %></td>
	   <td><%= rst.getString(4) %></td>
    </tr>
  </form>
  <% } %>
</table>



</body>
</html>
