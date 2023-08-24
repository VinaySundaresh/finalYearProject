<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="farmertabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>

    <form enctype="multipart/form-data" action="farmeraddcropcode.jsp" method="post">
        <br><br><br>
        <center>
            <table  style="color:#FFFFFF; border-radius:20px;"width="502" height="455" border="0" >
                <tr>
                  <td height="146" colspan="2"><div align="center"><strong><font size = "40">Add Crop Details</font> </strong></div></td>
                </tr>
                <tr>
                    <center>
                        <td colspan="2"><p align="center"><B>Upload File</B>
                    </td></center>
                </tr>
               
                <tr>
                    <td><b>Choose file:</b></td>
                    <td><INPUT NAME="c1" TYPE="file"></td>
                </tr>
                 
                <tr>
                    <td><b>Crop Name:</b></p></td>
                    <td><input name="c2" type="text" id="name"></td>
                </tr>
                <tr>
                  <td><b>Crop type:</b></td>
                  <td><input type="text" name="c3"></td>
                </tr>
                <tr>
                  <td><b>Price per Quintal</b> </td>
                  <td><p>
                    <label></label>
                    <input type="text" name="c4">
                    <br>
                  </p></td>
                </tr>
                <tr>
                  <td><b>Soil Required</b> </td>
                  <td> <input type="text" name="c5"></td>
                </tr>
                <tr>
                  <td colspan="2"><div align="center">
                    <input type="submit" name="Submit" value="Add Crop" >
                  </div></td>
                </tr>
          </table>
        </center>
       
    </form>
	
<p align="center" style="color:white; font-size:20px;font-weight:bold;" ><strong>Crop details</strong></p>
 
 
<table width="1076" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
    <td width="173"><div align="center"><strong>Crop name</strong></div></td>
    <td width="144"><div align="center"><strong>Crop type</strong></div></td>
    <td width="144"><div align="center"><strong>Price</strong></div></td>
    
    <td width="147"><div align="center"><strong>Soil Type</strong></div></td>
    <td width="147"><div align="center"><strong>ID</strong></div></td>
	<td width="91"><div align="center"><strong>Image</strong></div></td>
    <td width="117"><div align="center"><strong>Added By</strong></div></td>
    <td width="79">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from crop");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#005555">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><span class="style3 style1">
      <input name="e4" type="text" value="<%= rst.getString(5) %>"/>
    </span></td>
    <td><span class="style3 style1">
      <input name="e5" type="text" readonly="true" value="<%= rst.getString(6) %>"/>
    </span></td>
    <td><span class="style3 style1"><img src="uploads/<%= rst.getString(1) %>" height="90"/></span></td>
	 <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(7) %>"/></span></td>
    <td><input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update crop set cropname='"+request.getParameter("e1")+"',croptype='"+request.getParameter("e2")+"',price='"+request.getParameter("e3")+"',soil='"+request.getParameter("e4")+"' where id='"+request.getParameter("e5")+"' ");
if(x!=0)
{

%>
<script>
alert("Data Updated");
window.open("farmerAddCrop.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from crop where id='"+request.getParameter("e5")+"'");
if(x!=0){

%>
<script>
alert("Data Deleted successfully");
window.open("farmerAddCrop.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
	
	
	
</html>
