<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />


<title>Hydroponics</title>
<style type="text/css">
<!--
.style1 {color: blue;}
body,td,th {
	font-size: 18px;
}
.style2 {color: #FF0000}


-->
</style>
</head>

<body class="bg">
<%@ include file="farmertabs.html" %> 
  <%@ include file="db.jsp" %> 
<br /><br />
<br />
<br />

<p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>Lab details</strong></p>


  
<center>

<% 





 rst=stmt.executeQuery("select * from labs  ");
while(rst.next()){
  
   %>
<table  width="496" height="242" border="5" align="center" bgcolor="#000066" style=" border-radius: 14px; ">
  <tr style=" border-radius: 14px;" bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td align="center" width="auto"><p align="center" class="style2"><strong>Name </strong>:</p>
      <p align="center" class="style2"><strong>address :</strong></p>
      <p align="center" class="style2"><strong>phone:</strong></p>
	   <p align="center" class="style2"><strong>Email:</strong></p>
      <p align="center" class="style2"><strong>Description</strong>:</p>      </td>
    <td align="center" width="auto"><p><span class="style1"><%= rst.getString(1) %></span></p>
      <p><span class="style1">
        <%= rst.getString(2) %></span></p>
      <p><span class="style1"><%= rst.getString(3) %></span></p>
      <p><span class="style1"><%= rst.getString(4) %></span></p>
      <p><span class="style1"><%= rst.getString(5) %></span></p></td>
  </tr>
  </table>
  
  
  <% }
  
  
   %>





</center>




</body>
</html>
