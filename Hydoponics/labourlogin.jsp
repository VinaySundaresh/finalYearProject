<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
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
      <h3>Login For Labour.</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Curabitur et est sed felis aliquet sollicitudin</p>
    </div>
  </div>
  <div class="right">
    <h3>Labour Login</h3>
    <form action="" method="post">
      <div class="inputs">
        <input type="text" name="username" placeholder="Enter Name" pattern="[a-zA-Z][a-zA-Z ]{2,}"  title="name with space "   required>
        <br>
        <div class="password-show-card">
          <input type="text" class="input-control"  name="password" placeholder="Enter phone number"  pattern="[0-9]{10}" title=" 10 digit phone number "  required>
           </div>
      </div>
      <br>
      <button type="submit" name="Submit">Labour Login</button>
	  <a href="labourlogin.jsp" target="_self">Click her for Registration</a>
      <br>
    </form>
    <br>
    <br>
 
  </div>
</div>
<!-- partial -->
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from labour where name='"+un+"' and phone='"+pw+"'");
if(rst.next()){

session.setAttribute("lphone",rst.getString(2));
//response.sendRedirect("addshops.jsp");
%>	
					<script>
					
						alert("login Successfull");
						window.open("labourprofile.jsp","_self");
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
