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
      <li><a href="router.jsp">Asus Router Details</a></li>
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
   
        <th style="width:50px">S.No.</th>
        <th style="width:130px">Department</th>
        <th style="width:150px">HostName/Computer Name</th>
        <th style="width:130px">IP Address</th><th style="width:130px">username</th>
   <th style="width:130px">Edit/Delete</th>
   
      </tr>
   
  <%
    Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
  Statement stmt=cn.createStatement();

ResultSet res=stmt.executeQuery("select * from reallandesk");
  
while(res.next())
{
    
    %>
  

      <tr>
   
          <TD>
            <%=res.getInt("sn")%>
        </td>
        <td> <%=res.getString("department")%></td>
        <td> <%=res.getString("hostname")%></td>
        
        <td><%=res.getString("ip")%>
            <br>
        
          <script type="text/javascript">
        function runProgram()
        {
            var shell = new ActiveXObject("WScript.Shell");                 
            var appITunes = "\"C:\\Program Files\\RealVNC\\VNC Viewer\\vncviewer.exe\" ";
            shell.Run(appITunes);
        }        
        </script>

    </head>




        <a href="javascript:runProgram()">Run program</a>

       

        </td>
        <td> <%=res.getString("username")%><br>
        <td> <a href="edit.jsp?value=<%=res.getInt("sn")%>">Update</a>
            <br><br>
            <a href="delete.jsp?value=<%=res.getInt("sn")%>">Delete</a>
        </td>
      
      </tr>
    
   
<%}%>
 </tbody>
 
 </table>
</body>
</html>
