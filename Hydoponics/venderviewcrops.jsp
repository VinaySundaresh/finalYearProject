<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="vendertabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>

<head><style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
</head>
<body>
<p align="center">

<div align="center">
  <p>&nbsp;</p>
   <p>&nbsp;</p>
  <p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>Crop details</strong></p>
   </p>
</div>
 <p>&nbsp;</p>
<table width="720" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
    <td width="193"><strong>Crop name</strong></td>
    <td width="142"><strong>Crop type</strong></td>
    <td width="128"><strong>Price</strong></td>
    
    <td width="141"><strong>ID</strong></td>
	<td width="94"><strong>Image</strong></td>
	<td width="94"><strong>Added by</strong></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from crop");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#005555">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(6) %>"/></span></td>
     <td><span class="style3 style1"><img src="uploads/<%= rst.getString(1) %>" height="90"/></span></td>
	 <td><span class="style3 style1">
	   <input name="e32" type="text" value="<%= rst.getString(7) %>"/>
	 </span></td>
    </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update crop set cropname='"+request.getParameter("e1")+"',croptype='"+request.getParameter("e2")+"',price='"+request.getParameter("e3")+"',soil='"+request.getParameter("e4")+"' where id='"+request.getParameter("e5")+"' ");
if(x!=0)
{

%>
<script>
alert("Date Updated");
window.open("addcrop.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from crop where id='"+request.getParameter("e5")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("addcrop.jsp","_self");
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