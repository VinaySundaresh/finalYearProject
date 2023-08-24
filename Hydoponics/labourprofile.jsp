<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<%@ include file="labourstabs.html" %> 
  <%@ include file="db.jsp" %> 
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {color: blue;}


-->
</style>
</head>

<body class="bg">

<br />
<p align="center" style="color:white">
 
  <strong>My  Profile </strong></p>


  
<center>

<% 





 rst=stmt.executeQuery("select * from labour where phone='"+session.getAttribute("lphone")+"' ");
  if(rst.next()){
  
   %>
<table  width="366" border="5" align="center" bgcolor="#000066" style=" border-radius: 14px; ">
  <tr style=" border-radius: 14px;" bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td align="center" width="auto"><p align="center" class="style1"><strong>Name </strong>:<%= rst.getString(1) %></p>
      <p align="center" class="style1"><strong>phone :</strong><%= rst.getString(2) %></p>
      <p align="center" class="style1"><strong>gender:</strong><%= rst.getString(3) %></p>
	  
      <p align="center" class="style1"><strong>Address</strong>:<%= rst.getString(4) %></p>
	
      </td>
  </tr>
  </table>
  
  
  <% }
  
  
   %>





</center>




</body>
</html>
