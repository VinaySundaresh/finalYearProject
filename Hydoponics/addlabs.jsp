<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Hydroponics</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/newcity.jpg);
}
body,td,th {
	color:white;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 18px;
}
.style1 {color: white;}
table{

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



<p>&nbsp;</p>

<div align="center" class="style4" style="font-size:25px;font-weight:bold;color:white;">Add Laboratory Details</div>
<br/>
<div align="center">
<form  method="post" action=""   >
 <table  style="color:#FFFFFF; border-radius:20px;"width="502" height="300" border="0" >
         <tr>
      <td >Enter Lab name </td>
      <td width="189"><input name="s1" type="text" id="s1"  /></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><input name="s2" type="text" id="s2" /></td>
    </tr>
    
    <tr>
      <td>Phone</td>
      <td><input name="s3" type="text" id="s4" pattern="[0-9]{10}" title=" 10 digit phone number "  required /></td>
    </tr>
    <tr>
      <td>Email</td>
	 
      <td><input name="s4" type="email" id="s5" required/></td>
    </tr>
    <tr>
      <td>Description</td>
      <td><input name="s5" type="text"  value="" /></td>
    </tr>
    
    <tr>
      <td><span class="style1"></span></td>
      <td><input type="submit" name="Submit" value="Add lab" /></td>
    </tr>
  </table>
  
</form>
</div>
<% 
if(request.getParameter("Submit")!=null){
try{

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");

int x=stmt.executeUpdate("insert into labs(name,address,phone,email,description) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){

out.print("New lab added Successfully");
}
}catch(Exception e){
out.print("this location already exist"+e);
}
}
 %>




 
 
 
</body>
</html>
