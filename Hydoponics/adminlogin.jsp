<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

</head>
<body><br>
<br>
<br>
<br>
<br>

<!-- partial:index.partial.html -->
<div class="box-form">
  <div class="left">
    <div class="overlay">
	<br>
      <h3><b><i>"Admin, your gateway to efficient management! Login to oversee and streamline<br> the dynamic ecosystem between farmers and vendors, ensuring smooth operations <br>and fostering growth in the vibrant world of Indian agriculture."</i></b></h3><br>
      <p><p style="font-weight:bold"><b>Operations Performed by Admin<b></p><br>
	  
	 1.View all the users <br/> 2.Add Crops <br/> 3.Add Subsidies <br/>  4.Add Shops <br/> 5.Add Laboratories<br/> 6. View feedbacks</p>
    </div>
  </div>
  <div class="right">
    <h3>Admin Login</h3>
    <form action="" method="post">
      <div class="inputs">
        <input type="text" name="username" placeholder="user name">
        <br>
        <div class="password-show-card">
          <input type="password" class="input-control"  name="password" >
          <i class="fa fa-eye password-show">show password</i> </div>
      </div>
      <br>
      <button type="submit" name="Submit">Admin Login</button>
      <br>
    </form>
    <br>
    <br>
    <p>Admin Login page for the admin users of the System</p>
  </div>
</div>
<!-- partial -->
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from login where username='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
//response.sendRedirect("addshops.jsp");
%>	
					<script>
					
						alert("login Successfull");
						window.open("viewfarmers.jsp","_self");
					</script>	
						
	<%

	}else{
				
				%>	
					<script>
					
						alert("login failed");
					</script>	
						
	<%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>
<script src="js/jquery-latest.min.js"></script>
<script>
	$(function(){
		$(".password-show").click(function(event) {
			$(this).toggleClass('fa-eye-slash');
			var x = $(".input-control").attr("type"); //getting attribute in variable
			if (x == "password") 
			{
				$(".input-control").attr("type","text"); //setting attribute on condition
			}
			else
			{
				$(".input-control").attr("type","password");
			}
		});
	})
</script>

</body>
</html>
