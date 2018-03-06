<%@page import="java.net.InetAddress"%>
<!DOCTYPE html>
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

    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SCP Inventory</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="router.jsp">Asus Router Placement</a></li>
      <li><a href="landesk.jsp">Landesk Installation</a></li>
      <li><a href="SCP Guest Detail log Book">Scp Guest Detail BOOk</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>

    
    
<div class="container">
  
    <br><br><br><br>
    <center>
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" margin-down="100">Click Here to Fill the Form</button>
</center>
    
    <br><br><center>
        
        <h1>
            FYI: You can share this page to fill form to other Department Staffs</h1> 
        <br><br><br><h1><a href="landesk.jsp">Back to table</a>
        </h1>
        
    </center>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">System</h4>
        </div>
        <div class="modal-body">
          <form action="_newjsp.jsp" method="post">
   
   
   <div class="form-group">
      <label for="text">Department:</label>
      <input type="text" class="form-control"  placeholder="Enter Department Name" name="department" required>
    </div>
   
   <div class="form-group">
      <label for="text">Hostname:</label>
      <input type="text" class="form-control"  placeholder="Enter Computer name" name="hostname" required>
    </div>
   
   <div class="form-group">
      <label for="text">IPV4 Address:</label>
      <input type="text" class="form-control"  placeholder="Enter IPv4 ddress" name="ip" required>
    </div>
    
    <div class="form-group">
      <label for="text">Enter Username:</label>
      <input type="text" class="form-control"  placeholder="Username" name="username" required>
    </div>

              <div class="form-group">
      <label for="text">User Password:</label>
      <input type="text" class="form-control"  placeholder="Users Password you use while logging in the computer" name="password">
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
  

</body>
</html>