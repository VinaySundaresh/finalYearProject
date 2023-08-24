<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<%@ include file="db.jsp"%>
<%@ include file="hometabs.html"%>
<br />
<br />
<br />
<br />
<br />
<br />

<div align="center" class="style1">Labour Registration page</div>
<form id="form1" name="form1" method="post" action="">
  <table width="200" border="1" align="center">
    <tr>
      <td>Name</td>
      <td><input type="text" name="f1" /></td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input type="number" name="f2" /></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><p>
        <label>
          <input type="radio" name="f3" value="Male" />
          Male</label>
        <br />
        <label>
          <input type="radio" name="f3" value="Female" />
          Female</label>
        <br />
      </p></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><textarea name="f4"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Register" /></td>
    </tr>
  </table>
</form>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("f1");
String s2=request.getParameter("f2");
String s3=request.getParameter("f3");
String s4=request.getParameter("f4");

try{
int x=stmt.executeUpdate("insert into labour value('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
if(x!=0){
%>
<script>
alert("Labour Register Successfully");
</script>
<%
}
}catch(Exception e){
out.print(e);
}

}
 %>
</body>
</html>
