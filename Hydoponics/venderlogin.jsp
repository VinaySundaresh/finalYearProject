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
	<br>
      <h3><b><i>"Hello esteemed vendors! Login to connect with our hardworking farmers <br>and explore a wide variety of high-quality vegetables for your business needs.<br>
	   Together, let's strengthen the bond between farmers and vendors<br> in the realm of Indian agriculture."</i></b></h3><br>
	   
      <p><strong>Operations performed by vendor<strong></p><br>
	  <p>1) View profile</p>
	  <p>2) View crops added by farmer</p>
	  <p>3) Add tools</p>
	  <p>4) View request by farmer</p>
	  <p>5) Give feedback</p>
    </div>
  </div>
  <div class="right">
    <h3>Vendor Login</h3>
    <form action="" method="post">
      <div class="inputs">
        <input type="text" name="username" placeholder="user name">
        <br>
        <div class="password-show-card">
          <input type="password" class="input-control"  name="password" >
          <i class="fa fa-eye password-show">show password</i> </div>
      </div>
      <br>
      <button type="submit" name="Submit">Vender Login</button>
	  <a href="venderReg.jsp" target="_self">Click her for Registration</a>
      <br>
    </form>
    <br>
    <br>
   <p> <a href="vfergot.jsp" target="_self">Click here if you forgot password</a></p>
  </div>
</div>
<!-- partial -->
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from vender where email='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("vuser",un);
session.setAttribute("vphone",rst.getString(2));
//response.sendRedirect("addshops.jsp");
%>	
					<script>
					
						alert("login Successfull");
						window.open("venderprofile.jsp","_self");
					</script>	
						
	<%

	}else{
				
				%>	
					<script>
					
						alert("login failured");
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
