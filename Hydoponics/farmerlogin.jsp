<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Hydroponics</title>
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
	<br><br>
     <p style="margin-left:auto"> <h3><b><i>"Welcome back, dedicated farmers! Login to access your account and stay connected with the heartbeat of Indian agriculture.</i>"</b></h3>
	  <br>
      <p> <b>Operations performed</b></p>
	  <p>1) View profile</p>
	  <p> 2) Add crops</p>
	  <p>3) view tools added by vendor</p>
	  <p>4) view labs added by admin</p>
	  <p>5) view subsidies added by admin</p>
	  <p>6) Provide feedback</p>
	  <br>
</p>
    </div>
  </div>
  <div class="right">
    <h3>Farmer Login</h3>
    <form action="" method="post">
      <div class="inputs">
        <input type="text" name="username" placeholder="user name">
        <br>
        <div class="password-show-card">
          <input type="password" class="input-control"  name="password" >
          <i class="fa fa-eye password-show">show password</i> </div>
      </div>
      <br>
      <button type="submit" name="Submit">Farmer Login</button>
	  <a href="farmerReg.jsp" target="_self">Click her for Registration</a>
      <br>
    </form>
    <br>
    <br>
    <p> <a href="fergot.jsp" target="_self">Click here if you forgot password</a></p>
  </div>
</div>
<!-- partial -->
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from farmer where email='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",rst.getString(2));
session.setAttribute("fphone",rst.getString(2));
//response.sendRedirect("addshops.jsp");
%>	
					<script>
					
						alert("login Successfull");
						window.open("profile.jsp","_self");
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
