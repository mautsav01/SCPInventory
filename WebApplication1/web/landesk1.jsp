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

  
  <h2>Ip Details Table</h2>
<center><h1> <a href="index.jsp">Add Users</a><h1></center> 
  
  
  <br><br>
  
<center><h1> <a href="landesk.jsp">Go back to table</a><h1></center> 
  
  
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
      try{
      String msg=request.getParameter("searchitem");
     
    Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
     
     String sql = "SELECT * FROM reallandesk WHERE department LIKE ? OR ip LIKE ? OR hostname LIKE ? ";
// ...
PreparedStatement  preparedStatement = cn.prepareStatement(sql);
preparedStatement.setString(1, "%" + msg + "%");
preparedStatement.setString(2, "%" + msg + "%");
preparedStatement.setString(3, "%" + msg + "%");


ResultSet resultSet = preparedStatement.executeQuery();
while (resultSet.next()){
    %>
    
    
    <tr>
         <td><%=resultSet.getString("sn")%>
    
    <td><%=resultSet.getString("department")%>
    </td>
            
        <td><%=resultSet.getString("hostname")%></td>
        <td><%=resultSet.getString("ip")%>
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
        
        <td><%=resultSet.getString("username")%> </td>
    <td> <a href="edit.jsp?value=<%=resultSet.getInt("sn")%>">Update</a><br><br><a href="delete.jsp?value=<%=resultSet.getInt("sn")%>">Delete</a>
        </td>
    </tr>
    
    
    <%}%>
   
<%
cn.close();
    }catch(Exception ex){
  out.print(ex);

  }
%> 
 </tbody>
 
 </table>
</body>
</html>
