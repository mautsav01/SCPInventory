<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Landesk</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">SCP Inventory</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index1.jsp">Add Records</a></li>
      <li><a href="Router.jsp">Landesk Installation</a></li>
      <li><a href="Guest.jsp">Scp Guest Detail Book</a></li>
       </ul>
  </div>
</nav>
<br><br>
  
  
  
<div class="container">
 
  <form action="landesk1.jsp" method="get">
    <div class="input-group input-group-lg ">
      <input type="text" class="form-control" placeholder="Search by Ip or Department or Hostname " name="searchitem">
      <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </div>
    </div>
  </form>
  <br>
</div>
 
  
  
  
  
  <table class="table" border="1">
      
      
      
    <thead>
      <tr>
   
        <th style="width:50px">Room</th>
        <th style="width:130px">Status</th>
        <th style="width:150px">MAC</th>
        <th style="width:130px">IPV4 Address</th>
   <th style="width:130px">Remarks</th>
   
      </tr>
   
  <%
    Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
  Statement stmt=cn.createStatement();

ResultSet res=stmt.executeQuery("select * from router");
  
while(res.next())
{
    
    %>
  

      <tr>
   
         
        <td> <%=res.getString("room")%></td>
        <td> <%=res.getString("ip")%></td>
        
        <td><%=res.getString("MAC")%></td>
        <td><%=res.getString("Status")%></td>
        <td><%=res.getString("remarks")%></td>
        
            
   
<%}%>
 </tbody>
 
 </table>
</body>
</html>
