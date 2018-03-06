
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

int a = Integer.parseInt(request.getParameter("value"));
//out.print(a);

 Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
   PreparedStatement pst=cn.prepareStatement("select * from reallandesk where sn="+a+"");
ResultSet re=pst.executeQuery();
while(re.next()){

%>

<html lang="en">
<head>
  <title>System Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  
    <br><br><br><br>
    <center>
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" margin-down="100">Click Here to Edit</button>
</center>
    
    <br><br>
  
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">System</h4>
        </div>
        <div class="modal-body">
          <form action="_edit.jsp" method="post">
   
   
              <div class="form-group">
      <label for="text">Sn.no:</label>
      <input type="text" class="form-control"  placeholder="Enter Department Name" name="sn" value="<%=re.getInt("sn")%>" readonly>
    </div>
   
              
   <div class="form-group">
      <label for="text">Department:</label>
      <input type="text" class="form-control"  placeholder="Enter Department Name" name="department" value="<%=re.getString("department")%>">
    </div>
   
   <div class="form-group">
      <label for="text">Hostname:</label>
      <input type="text" class="form-control"  placeholder="Enter Computer name" name="hostname" value="<%=re.getString("hostname")%>">
    </div>
   
   <div class="form-group">
      <label for="text">IPV4 Address:</label>
      <input type="text" class="form-control"  placeholder="Enter IPv4 ddress" name="ip" value="<%=re.getString("ip")%>">
    </div>
    
    <div class="form-group">
      <label for="text">Enter Username:</label>
      <input type="text" class="form-control"  placeholder="Username" name="username" value="<%=re.getString("username")%>">
    </div>

              <div class="form-group">
      <label for="text">User Password:</label>
      <input type="text" class="form-control"  placeholder="Users Password you use while logging in the computer" name="password"value="<%=re.getString("password")%>">
    </div>
    
              <div class="form-group">
      <label for="text">Email Address:</label>
      <input type="text" class="form-control"  placeholder="Users Password you use while logging in the computer" name="mail"value="<%=re.getString("mail")%>">
    </div>
    
              <div class="form-group">
      <label for="text">Email Password:</label>
      <input type="text" class="form-control"  placeholder="Users Password you use while logging in the computer" name="mailpassword"value="<%=re.getString("mailpassword")%>">
    </div>
    
              
            
   
   
   <button type="submit" class="btn btn-info btn-lg">Submit</button>
  </form>
       </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
  
<%}%>
</body>
</html>