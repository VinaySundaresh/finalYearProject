<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/newcity.jpg);
}
body,td,th {
	color: white;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 18px;
}
.style1 {color: white;}
table{


background-image:none;
border-radius:20px;
border:0;
color:#FFFFFF;
}

-->
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('input[type="file"]').change(function(e){
            var fileName = e.target.files[0].name;
document.getElementById("txt").value = fileName;
            alert('The file "' + fileName +  '" has been selected.');
        });
    });
</script>
</head>

<body>
<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />

<div align="center" class="style4" style="font-size:25px;font-weight:bold;color:white;">Add Shop Details</div>
<br />

<p>&nbsp;</p>
<center>
<form  method="post" action="addlocationcode.jsp"  enctype="multipart/form-data" >
    <table  style="color:#FFFFFF; border-radius:20px; "width="550" height="300" border="0" >
         <tr>
      <td><b>Enter Shop name</b></td>
      <td><input name="s1" type="text" id="s1"  /></td>
    </tr>
    <tr>
      <td><b>Address</b></td>
      <td><input name="s2" type="text" id="s2" /></td>
    </tr>
    
    <tr>
      <td><b>Phone</b></td>
      <td><input name="s4" type="text" id="s4" pattern="[0-9]{10}" title=" 10 digit phone number "  required /></td>
    </tr>
    <tr>
      <td><b>Email</b></td>
	 
      <td><input name="s5" type="email" id="s5" required/></td>
    </tr>
    <tr>
      <td><b>Description</b></td>
      <td><input name="s6" type="text"  value="" /></td>
    </tr>
    <tr>
      <td><b>Choose image</b></td>
      <td><input type="file" name="s7" id="s7" /></td>
    </tr>
    <tr>
      <td><b>Add map Location</b></td>
      <td><textarea name="s8"></textarea>
      <a href="https://www.google.co.in/maps/" target="_blank"> google map</a></td>
    </tr>
    <tr>
      <td><span class="style1"></span></td>
      <td><input type="submit" name="Submit" value="Add location" /></td>
    </tr>
  </table>
  
</form>
</center>
<% 
if(request.getParameter("Submit")!=null){
try{
MultipartRequest m = new MultipartRequest(request, "D:/tomcat Installed Dont delete it/Tomcat 5.5/webapps/Sahyadri_Lodge/uploads");
String s1=(String)m.getParameter("s1");
String s2=(String)m.getParameter("s2");
String s3=(String)m.getParameter("s3");
String s4=(String)m.getParameter("s4");
String s5=(String)m.getParameter("s5");
String s6=(String)m.getParameter("s6");
String s7=(String)m.getOriginalFileName("s7");
String s8=(String)m.getParameter("s8");
int x=stmt.executeUpdate("insert into location values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
if(x!=0){

out.print("New location added Successfully");
}
}catch(Exception e){
out.print("this location already exist"+e);
}
}
 %>




 
 
 
</body>
</html>
