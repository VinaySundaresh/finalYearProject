<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@ include file="db.jsp" %>
<%  
//MultipartRequest m = new MultipartRequest(request, "C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/uploadfileSuccessfully/uploads"); 
String path="D:/tomcat Installed Dont delete it/Tomcat 5.5/webapps/SmartFarmerDVS" ;
MultipartRequest m = new MultipartRequest(request, path+"/uploads");  
String s1=(String)m.getOriginalFileName("c1");
String s2=m.getParameter("c2");
String s3=m.getParameter("c3");
String s4=m.getParameter("c4");
 
try{
int x=stmt.executeUpdate("insert into tools(toolname,tooltype,price,image,venderphone) values('"+s2+"','"+s3+"','"+s4+"','"+s1+"','"+session.getAttribute("vphone")+"')");
if(x!=0){
%>

<script>
alert("data uploaded successfully");
window.open("addtools.jsp","_self");

</script>

<%
}
}catch(Exception e){
%>

<script>
alert("Duplicate crop name found");
window.open("addcrop.jsp","_self");

</script>

<%
}
  
%>