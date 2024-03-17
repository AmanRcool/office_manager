<%-- 
    Document   : attendancereport
    Created on : 6 Mar, 2024, 5:41:15 PM
    Author     : ar799
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<center>
    <h2>Attendance Report</h2>
    <table width="1000" cellpadding ="5" border="1" bgcolor= "lightpink">
        <tr><td>Sr.no</td><td>Employee Code</td><td>Employee Name</td><td>Employee Gender</td>
            <td>E-mail Address</td><td>Attendance Data</td> <td>Time-In</td><td>Time-Out</td></tr>
        <%
    String user=session.getAttribute("user").toString();
    DB.DBConnection db = new DB.DBConnection();
    db.pstmt=db.con.prepareStatement("SELECT emp_mstr.ecode,emp_mstr.ename,emp_mstr.egender,emp_mstr.email,emp_attendance.atnd_date,emp_attendance.time_in,emp_attendance.time_out FROM emp_mstr,emp_attendance WHERE emp_mstr.ecode=emp_attendance.ecode and emp_attendance.ecode=?");
    db.pstmt.setString(1, user);
    db.rst=db.pstmt.executeQuery();
    int count = 1;
    while(db.rst.next()){
        out.println("<tr><td bgcolor= dodgerblue >"+count+"</td><td>"+db.rst.getString(1)+"</td>"
                +"<td>"+db.rst.getString(2)+"</td>"
                
                +"<td>"+db.rst.getString(3)+"</td>"
                +"<td>"+db.rst.getString(4)+"</td>"
                +"<td>"+db.rst.getString(5)+"</td>"
                +"<td>"+db.rst.getString(6)+"</td>"
                +"<td>"+db.rst.getString(7)+"</td></tr>");
        count++;
        
      
    }
            
        
        
        
        %>
        
    </table>
           
    
    
    
</center>