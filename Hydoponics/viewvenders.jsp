<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Hydroponics</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/bg1.jpg);
}
.style1 {color: #FFFF00}

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

<p align="center">

  Venders details</p>
<table style="color:#FFFFFF;" width="1076" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
    <td width="142"><strong>Phone </strong></td>
    <td width="128"><strong>Gender</strong></td>
    
    <td width="94"><strong>Email</strong></td>
    <td width="141"><strong>Address</strong></td>
    <td width="148"><strong>password</strong></td>
    <td width="148">ID</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from venders");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
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


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update employee set name='"+request.getParameter("e1")+"',address='"+request.getParameter("e2")+"',qualification='"+request.getParameter("e3")+"',phone='"+request.getParameter("e4")+"',email='"+request.getParameter("e5")+"',password='"+request.getParameter("e6")+"' where email='"+request.getParameter("e5")+"' ");
if(x!=0)
{
response.sendRedirect("viewemployees.jsp");
%>
<script>
alert("Date Updated");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from employee where email='"+request.getParameter("e5")+"'");
if(x!=0){
response.sendRedirect("viewemployees.jsp");
%>
<script>
alert("Date Deleted successfully");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
