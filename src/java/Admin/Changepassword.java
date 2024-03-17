

package Admin;

import DB.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Changepassword extends HttpServlet {

    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
                String opswd = request.getParameter("opswd");
                String npswd = request.getParameter("npswd");
                String cpswd = request.getParameter("cpswd");
                HttpSession session = request.getSession();
                String user = session.getAttribute("user").toString();
                
                DB.DBConnection db = new DB.DBConnection();
                db.pstmt=db.con.prepareStatement(" select *from login where user=? and pswd=?");
                db.pstmt.setString(1, user);
                 db.pstmt.setString(2, opswd);
                 db.rst=db.pstmt.executeQuery();
                 if(db.rst.next())
                 {
                   if(npswd.equals(cpswd))
                   {
                    db.pstmt=db.con.prepareStatement("update login set pswd=? where user=?");
                     db.pstmt.setString(1,npswd);
                      db.pstmt.setString(2, user);
                      int i=db.pstmt.executeUpdate();
                      if(i>0)
                             {
                          response.sendRedirect("AdminHome.jsp?msg=Password Updated Successfully");
                      }
                   }
                      
                   else{
                       out.println("<h1> New and Confirm Password Does Not Matched</h1>");
                   }
                 }
                 else{
                     out.println("<h1> Old password Does Not Matched </h1>");
                 }
              
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
        }
    }
