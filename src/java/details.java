import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/details")
public class details extends HttpServlet {     
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
   String name=request.getParameter("name");
   String sssm=request.getParameter("sssm");
   String mobile=request.getParameter("mobile");  
   String address=request.getParameter("address");
   String members=request.getParameter("members");  
   String things=request.getParameter("things");
      
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
              Statement st= conn.createStatement();
  ResultSet rt;
  int i =st.executeUpdate("insert into citizen_details(name,sssm,mobile,address,members,things) values ('"+name+"','"+sssm+"','"+mobile+"','"+address+"','"+members+"','"+things+"')");
  RequestDispatcher rs= request.getRequestDispatcher("/index.jsp");
             rs.forward(request, response);
             
        } catch (SQLException ex) {
           out.print("error");
        } 
    }
}