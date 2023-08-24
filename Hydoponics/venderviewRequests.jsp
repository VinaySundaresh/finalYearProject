<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="vendertabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>

  <br>
<br>
<br>

	
	

	<p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>Request details</strong></p>
<table width="1076" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
    <td width="193"><strong>Tool name</strong></td>
    <td width="142"><strong>Tool id</strong></td>
    <td width="128"><strong>vender Number</strong></td>
    
    
    <td width="141"><strong>farmer Number</strong></td>
	 <td width="141"><strong>Status</strong></td>
	<td width="94"><strong>id</strong></td>
  
    <td width="148">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from toolrequests where vendernumber='"+session.getAttribute("vphone")+"'");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#005555">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" value="<%= rst.getString(5) %>"/></span></td>
	 <td><span class="style3 style1"><input name="e6" type="text" value="<%= rst.getString(6) %>"/></span></td>
   
    <td><input name="Accept" type="submit"  value="Accept" /> <input name="Reject" type="submit"  value="Reject" />     </td>
  </tr>
  </form>
  <% } %>
</table>
<%
if(request.getParameter("Accept")!=null){
try{
int x=stmt.executeUpdate("update   toolrequests set status='Accepted' where id='"+request.getParameter("e6")+"'");
if(x!=0){

%>
<script>
alert("Accepted successfully");
window.open("venderviewRequests.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
	
	
	<%
if(request.getParameter("Reject")!=null){
try{
int x=stmt.executeUpdate("update   toolrequests set status='Rejected' where id='"+request.getParameter("e6")+"'");
if(x!=0){

%>
<script>
alert("Rejected successfully");
window.open("venderviewRequests.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
	
	
</html>