<%-- 
    Document   : AddEmployee
    Created on : 28 Feb, 2024, 6:07:47 PM
    Author     : Sujeet's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <div>
            <h2 style="color: brown; font-style: normal">Add New Employee</h2><br>
            <form action="AddEmolyee">
                <table width="800" border="1" cellpadding="10">
                 <tr><td width="400">Employee Code</td><td><input type="number" name="code" ></td></tr>
                 <tr><td width="400">Password</td><td><input type="password" name="pswd" ></td></tr>
                 <tr><td width="400">Employee Name</td><td><input type="text" name="name" ></td></tr>
                 <tr><td width="400">Gender</td><td><input type="radio" name="gen" value="Male">Male
                 <input type="radio" name="gen" value="Female">Female</td></tr>
                 <tr><td width="400">Date Of Birth</td><td><input type="date" name="dob" ></td></tr>
                 <tr><td width="400">Post</td><td><input type="text" name="post" ></td></tr>
                 <tr><td width="400">Address</td><td><input type="text" name="addr" ></td></tr>
                 <tr><td width="400">City</td><td><input type="text" name="city" ></td></tr>
                 <tr><td width="400">Contact</td><td><input type="number" name="cont" ></td></tr>
                 <tr><td width="400">Email</td><td><input type="email" name="email" ></td></tr>
                 <tr><td width="400">Id Name</td><td><input type="text" name="id_name" ></td></tr>
                 <tr><td width="400">Id Number</td><td><input type="number" name="id_number" ></td></tr>
                 <tr><td width="400"><input type="submit" value="Register"></td><td><input type="reset" value="Reset" ></td></tr>
                              
                </table>
            </form>
        </div>
    </center>
    </body>
</html>
