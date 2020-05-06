<!DOCTYPE html>
<html>
<head>
<body>
<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql" , "root","root");    
        PreparedStatement pst = conn.prepareStatement("Select username,password from admin_details where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
       %>
<script>
        function pageredirect(){
                window.location.replace("admin_main.jsp");      
                }
                setTimeout("pageredirect()",3);
                </script>
      <%
   }
   catch(Exception e){ 
   }   
%>
</body>
</html>