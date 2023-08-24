<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>contactus</title>
<style type="text/css">
<!--

.style1 {
	color: #CCCCCC;
	font-weight: bold;
	font-size: 24px;
	font-family: "Times New Roman", Times, serif;
}
body,td,th {
	color: #000033;
	font-family: Arial, Helvetica, sans-serif;
}
.style3 {
	color: grey;
	font-size: 36px;
}
.style4 {
	font-size: 24px;
	font-weight: bold;
	color: #FFFFFF;
}
.style5 {color: #FFFFFF}
-->
</style>
<script language="javascript">
function validationForm()
{
 var x= document.forms["form1"]["username"].value;
 var y= document.forms["form1"]["password"].value;
 if(x=="")
 {
 alert("username must be filled out");
 return false;
 }
 else if(y=="")
 {
 alert(" password must be filled out");
 return false;
 }else{
 return true;
 }
 }</script>
</head>

<body>
<%@ include file="hometabs.html" %>
<div align="center" class="style1">
  <p>&nbsp;</p>
  <br /><br /><p>-------</p>
  <p align="center" class="style3" style="color:black">Contact US </p>
</div>
<form id="form1" name="form1" method="post" action="logincode.jsp">
  <p>&nbsp;</p>
  <table width="400" height="184" border="0" align="center" bgcolor="#339999" style="border-radius:20px;">
    <tr>
      <td colspan="2"><p align="center" class="style4">College name :PESITM,</p>
      <p align="center" class="style5">Shivamogga </p>
      <p align="center" class="style5">Name : Vinay.S</p>
      <p align="center" class="style5">Phno:9620689808</p>
      <p align="center" class="style5"><strong>Email: vinaysundresh2001@gmail.com  </strong></p></td>
    </tr>
  </table>
  <br />
</form>
   <div align="right">
    
     <strong></strong><br />
     <br />
     <br />
   </div>
   <p>&nbsp;</p>
</body>
</html>
