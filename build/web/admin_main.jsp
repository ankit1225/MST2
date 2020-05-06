<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
  <style>
      .content-table{
          border-collapse: collapse;
          margin: 25px 0;
          font-size: 0.9em;
          min-width: 400px;
          border-radius: 5px 5px 0 0;
          overflow: hidden;
          box-shadow: 0 0 20px rgba(0,0,0,0.15);
      }
      .content-table thead tr{
          background-color: #009879;
          color: #ffffff;
          text-align: left;
          font-weight: bold;
          
      }
      .content-table th,
      .content-table td{
          padding: 12px 15px;
      }
      .content-table tbody tr{
          border-bottom: 1px solid #dddddd;
      }
      .content-table tbody tr:nth-of-type(even){
          background-color: #f3f3f3;
      }
      .content-table tbody tr:last-of-type{
          border-bottom: 2px solid #009879;
      }
      
      </style>
    </head>
    <body>
     <nav class= "navbar navbar-expand-lg navbar-dark bg-dark">
  <h1 style="color: white">Covid Citizen Details</h1>
</nav>
<!---------------------------------nav bar ends------------>

    <center><br><br>
        <table class="content-table"  >
            <thead>
    <tr  style="">
        <th>S.No</th>
        <th>Name</th>
        <th>SSSM ID</th>
        <th>Mobile Number</th>
          <th>Address</th>
            <th>Members</th>
            <th>Needed Things</th>
    </tr>
            </thead>
<%@page import="java.sql.*" %>
          <%@page import="javax.sql.*" %>
         <%
             Connection con =null;
             Statement st=null;
             ResultSet rs=null;
   try{
   Class.forName("com.mysql.jdbc.Driver");
   con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
  st=con.createStatement();
  String qry="Select * from citizen_details";
  rs=st.executeQuery(qry);
  while(rs.next()){
  %>
  <tr>
      <td><%= rs.getString(1)%></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3)%></td>
      <td><%= rs.getString(4)%></td>
      <td><%= rs.getString(5) %></td>
      <td><%= rs.getString(6)%></td>
      <td><%= rs.getString(7)%></td>
  </tr>
  <%
  }
   }
   catch(Exception e)
   {
       
   }
         %>
</table></center>
</body>
</html>
