<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #C9D7E5;
	background-image: url(images/t3.jpg);
}
.style1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style></head>

<body>
<%@ include file="hometabs.html" %>

<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />

<div align="center">
  <p>Fergot Password </p>
</div>
<% 

if(request.getParameter("check")==null){
%>
<form  method="get" action="">
  <table width="480" border="1" align="center">
    <tr>
      <td width="150">enter your Email ID </td>
      <td width="257"><input name="email" type="text"  /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="check" value="Get My password" /></td>
    </tr>
  </table>
</form>
<% } %>

<% 

if(request.getParameter("check")!=null){

rst=stmt.executeQuery("select password from vender where email='"+request.getParameter("email")+"' ");
if(rst.next()){
//----------------------
  String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("email");

    final String subject = "this is email is regaurding the forgot password ";

    final String messg = "your password is : "+rst.getString(1);

 

    // Sender's email ID and password needs to be mentioned

  final String from = "agrotechdvs@gmail.com";

    final String pass = "xjhhdudguprpergj";

 // final String from = "onlineawardssibm@gmail.com";

   // final String pass = "rzgmcdufzuuqwxmm";

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        //result = "Your mail sent successfully....";
		 %>
<script>alert("Your password has sent to your email  successfully....");
window.open("venderlogin.jsp","_self");
</script>
<%

    } catch (MessagingException mex) {

        mex.printStackTrace();

       // result = "Error: unable to send mail....";
		%>
<script>alert("Error: unable to send mail....");
window.open("venderlogin.jsp","_self");
</script>
<%

    }


//----------------------------------------
}else{
  %>
<script>alert("No such Registered email exist");
window.open("venderlogin.jsp","_self");
</script>
<%
}




}
 %>









</body>
</html>
