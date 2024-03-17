
 

<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@include file="EmployeeHeader.jsp" %>
 <center><h2><u>Employee Profile</u></h2>
 <% 
     String user = session.getAttribute("user").toString();
 DBConnection db= new DBConnection();
 db.pstmt=db.con.prepareStatement("select * from emp_mstr where ecode=?");
 db.pstmt.setString(1, user);
 db.rst=db.pstmt.executeQuery();
 if(db.rst.next())
 {
     out.println("<form action=editprofile.jsp>");
 out.println("<table width='600' border='1' cellpadding='10' bgcolor=white>");
 out.println("<tr><td width='300'>Employee Code(User)</td><td>"+db.rst.getString(1)+"</td></tr>");
out.println("<tr><td width='300'>Employee Name</td><td>"+db.rst.getString(2)+"</td></tr>");
out.println(" <tr><td width='300'>Date of Birth</td><td>"+db.rst.getString(3)+"</td></tr>");
out.println("<tr><td width='300'>Gender</td><td>"+db.rst.getString(4)+" </td></tr>");
out.println("<tr><td width='300'>Post</td><td>"+db.rst.getString(5)+"</td></tr> ");
out.println("<tr><td width='300'>Address</td><td>"+db.rst.getString(6)+"</td></tr> ");
out.println("<tr><td width='300'>City</td><td>"+db.rst.getString(7)+"</td></tr> ");
out.println("<tr><td width='300'>Contact</td><td>"+db.rst.getString(8)+"</td></tr> ");
out.println("<tr><td width='300'>Email</td><td>"+db.rst.getString(9)+"</td></tr>");
out.println("<tr><td width='300'>Id Name</td><td>"+db.rst.getString(10)+"</td></tr>");
 out.println("<tr><td width='300'>Id Number</td><td>"+db.rst.getString(11)+"</td></tr>");
 out.println("<tr><td width='300'> <input type='submit' value='Edit'></td><td><input type='reset'value='Reset'></td></tr>");

 out.println(" </table></form>");
 }
 
 
 else
 {
 out.println("<h1>Please Login First</h1>");
  }
 
 
 %>
 </center>

