
package DB;

import java.sql.*;

public class DBConnection {
    public Connection con;
    public PreparedStatement pstmt;
    public Statement stmt;
    public ResultSet rst;
    
    public DBConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office_manager","root","root");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
}
