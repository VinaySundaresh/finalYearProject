<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="farmertabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>

  <br>
<br>
<br>

	
	<p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>Tool details</strong></p>
 
<table width="1076" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
    <td width="193"><strong>Tool name</strong></td>
    <td width="142"><strong>Tool type</strong></td>
    <td width="128"><strong>Price per hour</strong></td>
    
    
    <td width="141"><strong>ID</strong></td>
	 <td width="141"><strong>Vender phone</strong></td>
	<td width="94"><strong>Image</strong></td>
  
    <td width="148">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from tools");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#0055555">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(6) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(5) %>"/></span></td>
    <td><span class="style3 style1"><img src="uploads/<%= rst.getString(4) %>" height="90"/></span></td>
    <td><input name="request" type="submit" id="update" value="Request" />      </td>
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("request")!=null){
try{
String s1=request.getParameter("e1");
String s2=request.getParameter("e4");
String s3=request.getParameter("e5");
String s4=(String)session.getAttribute("fphone");

int x=stmt.executeUpdate("insert into toolrequests(toolname,toolid,vendernumber,farmernumber) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"') ");
if(x!=0)
{

%>
<script>
alert("request sent successfully");
window.open("farmerviewtools.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
%>


&nbsp;&nbsp;&nbsp;

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
  
  rst=stmt.executeQuery("select * from toolrequests where farmernumber='"+session.getAttribute("fphone")+"'");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" value="<%= rst.getString(5) %>"/></span></td>
	 <td><span class="style3 style1"><input name="e6" type="text" value="<%= rst.getString(6) %>"/></span></td>
   
    <td><input name="delete" type="submit"  value="Cancel" />      </td>
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