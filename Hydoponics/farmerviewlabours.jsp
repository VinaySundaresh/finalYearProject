<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="farmertabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>

  <br>
<br>
<br>

	
	


	<p align="center">
 
  Labour details</p>
<table width="1076" border="0" align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Labour name</strong></td>
    <td width="142"><strong>Phone Number</strong></td>
    <td width="128"><strong>Gender</strong></td>
    
    
    <td width="141"><strong>Address</strong></td>
	
  
 
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from labour ");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
    
   
   
  </tr>
  </form>
  <% } %>
</table>
<%
if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from toolrequests where id='"+request.getParameter("e6")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("farmerviewtools.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
	
	
</html>