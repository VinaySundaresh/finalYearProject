<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="vendertabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>

    <form enctype="multipart/form-data" action="addtoolscode.jsp" method="post">
        <br><br><br>
        <center>
            <table  style=" color:#FFFFFF; border-radius:20px;"width="502" height="345" border="0" >
                <tr>
                  <td colspan="2"><div align="center"><strong>Add Tools Details </strong></div></td>
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
                    <td><b>Tool Name</b></td>
                    <td><input name="c2" type="text" id="name"></td>
                </tr>
                <tr>
                  <td><b>Tool type</b> </td>
                  <td><input type="text" name="c3"></td>
                </tr>
                <tr>
                  <td><b>Price per hour</b> </td>
                  <td><p>
                    <label></label>
                    <input type="text" name="c4">
                    <br>
                  </p></td>
                </tr>
               
                <tr>
                  <td colspan="2"><div align="center">
                    <input type="submit" name="Submit" value="Add tools" >
                  </div></td>
                </tr>
            </table>
        </center>
       
    </form>
	
	<p align="center">
 
  Crop details</p>
<table width="1076" border="0" align="center"  style="color:black">
  <tr bgcolor="#65D6CF">
    <td width="193"><strong>Tool name</strong></td>
    <td width="142"><strong>Tool type</strong></td>
    <td width="128"><strong>Price per hour</strong></td>
    
    
    <td width="141"><strong>ID</strong></td>
	 <td width="141"><strong>Vender phone</strong></td>
	<td width="94"><strong>Image</strong></td>
  
    <td width="148">&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from tools");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">

  <tr bgcolor="#005555">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(6) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(5) %>"/></span></td>
    <td><span class="style3 style1"><img src="uploads/<%= rst.getString(4) %>" height="90"/></span></td>
    <td><input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update tools set toolname='"+request.getParameter("e1")+"',tooltype='"+request.getParameter("e2")+"',price='"+request.getParameter("e3")+"' where id='"+request.getParameter("e4")+"' ");
if(x!=0)
{

%>
<script>
alert("Date Updated");
window.open("addtools.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from tools where id='"+request.getParameter("e4")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("addtools.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
	
	
	
</html>