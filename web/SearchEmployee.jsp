

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
        <span style="font-size: 30px; color: brown; font-style: normal">Search Employee</span><br><br>
        
        <%
            if(request.getParameter("code")==null)
            {
        %>
        
       <form accept-charset="#">
        <table width="600" border="1" cellpadding="20">
        <tr><td>Enter Employee Code</td><td><input type="number" name="code"></td></tr>
       <tr><td><input type="submit" value="Search"></td><td><input type="reset" value="Reset"></td></tr>
         </table>
      </form>
       <%
        }
         else
            {
          String code=request.getParameter("code");
          DB.DBConnection db=new DB.DBConnection();
         db.pstmt=db.con.prepareStatement("select * from emp_mstr where ecode=?");
         db.pstmt.setString(1, code);
        
         db.rst=db.pstmt.executeQuery();
        
        if(db.rst.next())
        {
            String v1=db.rst.getString(1);
            out.println("<form action=UpdateEmployee>"
                    + "<table width='600' border='1' cellpadding = '10'>"
                    + "<tr><td width='400'>Employee Code</td><td><input type='text' name='code' value="+db.rst.getString(1)+"></td></tr>"
                    + "<tr><td width='400'>Employee Name</td><td><input type='text' name='name' value="+db.rst.getString(2)+"></td></tr>"
                    + "<tr><td width='400'>Gender</td><td><input type='text' name='gen' value="+db.rst.getString(4)+"></td></tr>"
                    + "<tr><td width='400'>Date Of Birth</td><td><input type='text' name='dob' value="+db.rst.getString(3)+"></td></tr>"
                    + "<tr><td width='400'>post</td><td><input type='text' name='post' value="+db.rst.getString(5)+"></td></tr>"
                    + "<tr><td width='400'>Address</td><td><input type='text' name='addr' value="+db.rst.getString(6)+"></td></tr>"
                    + "<tr><td width='400'>City</td><td><input type='text' name='city' value="+db.rst.getString(7)+"></td></tr>"
                    + "<tr><td width='400'>Contact</td><td><input type='number' name='cont' value="+db.rst.getString(8)+"></td></tr>"
                    + "<tr><td width='400'>Email</td><td><input type='email' name='mail' value="+db.rst.getString(9)+"></td></tr>"
                    + "<tr><td width='400'>Id Name</td><td><input type='text' name='id_name' value="+db.rst.getString(10)+"></td></tr>"
                    + "<tr><td width='400'>Id Number</td><td><input type='number' name='id_number' value="+db.rst.getString(11)+"></td></tr>");
                    out.println("<tr><td><input type='submit' value='Update'></td><td><input type='reset' value='Reset'></td></tr>");
                   out.println("</table></form>");
                   
        }
        else
        {
          out.println("<h1>Record dose not Match</h1>");  
        }
        
        }
            
        %>
     </center>
    </body>
</html>
