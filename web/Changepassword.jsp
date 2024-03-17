<%-- 
    Document   : Changepassword
    Created on : 1 Mar, 2024, 6:37:43 PM
    Author     : ar799
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<center>
 <span style="font-size: 30px; color: brown; font-style: normal">Change Password</span><br><br>
 
 <form action="Changepassword">
        <table width="600" border="1" cellpadding="20">
        <tr><td>Enter Old Password</td><td><input type="password" name="opswd"></td></tr>
         <tr><td>Enter New Password</td><td><input type="password" name="npswd"></td></tr>
          <tr><td>Confirm  Password</td><td><input type="password" name="cpswd"></td></tr>
       <tr><td><input type="submit" value="Update"></td><td><input type="reset" value="Reset"></td></tr>
         </table>
      </form>
 </center>