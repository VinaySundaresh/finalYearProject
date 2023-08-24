<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@ include file="db.jsp" %>
<%   
MultipartRequest m = new MultipartRequest(request, "C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/Hydoponics/uploads");  
String s1=(String)m.getOriginalFileName("c1");
String s2=m.getParameter("c2");
String s3=m.getParameter("c3");
String s4=m.getParameter("c4");
String s5=m.getParameter("c5");  
String s6=(String)session.getAttribute("user");
try{
int x=stmt.executeUpdate("insert into crop(filename,cropname,croptype,price,soil) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>

<script>
alert("data uploaded successfully");
window.open("farmerAddCrop.jsp","_self");

</script>

<%
}
}catch(Exception e){
out.print(e);

}
  
%>