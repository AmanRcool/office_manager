
package Admin;

import DB.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddEmolyee extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
          //code=&pswd=&name=&gen=&post=&addr=&city=&cont=&email=&id_name=&id_number=
            
            String code=request.getParameter("code");
            String pswd=request.getParameter("pswd");
            String name=request.getParameter("name");
            String gen=request.getParameter("gen");
            String dob=request.getParameter("dob");
            String post=request.getParameter("post");
            String addr=request.getParameter("addr");
            String city=request.getParameter("city");
            String cont=request.getParameter("cont");
            String email=request.getParameter("email");
            String id_name=request.getParameter("id_name");
            String id_number=request.getParameter("id_number");
            
            DBConnection db=new DBConnection();
            
             db.pstmt=db.con.prepareStatement("insert into emp_mstr(ecode,ename,edob,egender,epost,eaddr,ecity,ecount,email,id_name,id_no) values(?,?,?,?,?,?,?,?,?,?,?);");
             db.pstmt.setString(1, code);
             db.pstmt.setString(2, name);
             db.pstmt.setString(3, dob);
             db.pstmt.setString(4, gen);
             db.pstmt.setString(5, post);
             db.pstmt.setString(6, addr);
             db.pstmt.setString(7, city);
             db.pstmt.setString(8, cont);
             db.pstmt.setString(9, email);
             db.pstmt.setString(10, id_name);
             db.pstmt.setString(11, id_number);
             
             int i1=db.pstmt.executeUpdate();
            
            db.pstmt=db.con.prepareStatement("insert into login(user,pswd,user_type,ac_status) values(?,?,'Employee','1')");
            db.pstmt.setString(1, code);
            db.pstmt.setString(2, pswd);
            
            int i2=db.pstmt.executeUpdate();
            
            db.pstmt=db.con.prepareStatement("insert into emp_status(ecode,join_date,emp_status) values(?,curdate(),'working')");
            db.pstmt.setString(1,code);
            
            int i3=db.pstmt.executeUpdate();
            
            if(i1>0 && i2>0 && i3>0)
            {
                out.println("Register Successfully");
                response.sendRedirect("AddEmployee.jsp?msg=Employee Added Successfully");
            }
            
           
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
