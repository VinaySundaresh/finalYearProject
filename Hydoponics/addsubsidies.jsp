<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Subsidies</title>




<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {font-weight: bold}
.style3 {font-weight: bold}
-->
</style>
</head>

<body>
<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />


<center>

<div align="center" class="style4" style="font-size:25px;font-weight:bold;color:white;">Add Subsidy Details</div>
<br />
<form  method="post" action="" >
 
       <p>&nbsp;</p>
       <table  style="color:#FFFFFF; border-radius:20px;"width="502" height="300" border="0" >
         <tr>
           <td><b>Enter  Crop Name</b></td>
           <td><input type="text" name="s1">                    </td>
         </tr>
         <tr>
           <td><b>Scheme type</b> </td>
           <td><textarea name="s2"></textarea></td>
         </tr>
         <tr>
           <td><b>Maximum Amount</b> </td>
           <td><input type="text" name="s3" /></td>
         </tr>
         <tr>
           <td><b>Documents Required for Getting Subsidy </b></td>
           <td><textarea name="s4"></textarea></td>
         </tr>
         <tr>
           <td>&nbsp;</td>
           <td><input type="submit" name="Submit" value="Add"  onclick="return validateAdd()"/>
           <input type="reset" name="Submit2" value="Reset" /></td>
         </tr>
       </table>
      
</form>

</center>

<% 
if(request.getParameter("Submit")!=null){
try
{
String path="images/";
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");



int x=stmt.executeUpdate("insert into subsidy(cropname,scheme,amount,documents) values('"+s1 +"','"+s2 +"','"+s3 +"','"+s4 +"')");

if(x!=0){
%>
<script>
alert("New Subsidy added seccuessfilly");
</script>
<%
}
			
}catch(Exception e){
out.println(e);
}
}

 %>
 
 <% if(request.getParameter("addCat")!=null){

 %>
 <form action="" method="get" name="form3" id="form3">
 <p align="center" class="style3">Add Category </p>
 <p align="center" class="style1">
Enter Category name </div>
    <input type="text" name="category" />
 
   <input type="submit" name="cat" value="Submit"  onclick="return validateCat()"/>
 </p>
</form>

 <p>
   <% } %>
   
   
    <% if(request.getParameter("cat")!=null){

String cat=request.getParameter("category");
int x=stmt.executeUpdate("insert into category (categoryname) values('"+cat+"')");
if(x!=0){
out.print("category added successfully");
}
}
 %>
</p>

 <p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>All Subsidy Details </strong></p>
 <table width="1076" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
     <td><div align="center">       <strong>Crop Name  </strong></div></td>
     <td><span class="style1">
     <div align="center"><strong>Scheme Name</strong></div></td>
     <td><div align="center"><span class="style1">Maximum Amount</span></div></td>
     <td><div align="center"><span class="style1">Documents Required</span></div></td>
   
    
   </tr>
    <% rst=stmt.executeQuery("select * from subsidy");
	  while(rst.next()){ %>
   <tr style="color:white"; bgcolor="#005555"; align="center">
     <td><span class="style2"><%= rst.getString(1) %></span></td>
     <td><span class="style2"><%= rst.getString(2) %></span></td>
     <td><span class="style2"><%= rst.getString(3) %></span></td>
     <td><span class="style2"><%= rst.getString(4) %></span></td>
     
    
   </tr>
   <% } %>
 </table>

 <p align="center">&nbsp;  </p>
</body>
</html>
