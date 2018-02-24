<%@page import="java.sql.*"%>
<%
int a = Integer.parseInt(request.getParameter("sn"));

String department=request.getParameter("department");

String hostname=request.getParameter("hostname");

String ip=request.getParameter("ip");

String username=request.getParameter("username");

String password=request.getParameter("password");

String mobile=request.getParameter("mobile");

String extension=request.getParameter("extension");
//out.print(a+department+hostname+ip+username+password+mobile);
    try{
    

           Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
     
     PreparedStatement preparedStatement=null;
     String updateTableSQL = "UPDATE reallandesk SET department=?,hostname=?,ip = ?,wannacry=?,username=?,password=?,landesk=? "
				                  + " WHERE sn = "+a+"";

		try {
	 preparedStatement = cn.prepareStatement(updateTableSQL);
   
         //preparedStatement.setInt(1, a);

    preparedStatement.setString(1, department);
      preparedStatement.setString(2, hostname);
      preparedStatement.setString(3,ip );
      preparedStatement.setString(4, mobile);
     preparedStatement.setString(5, username);
      preparedStatement.setString(6, password);
      preparedStatement.setString(7, extension);
     

			// execute update SQL stetement
			preparedStatement.executeUpdate();
%>
                 <script>var r=confirm("User Updated!");
                     if(r===true){
                        window.location.replace("landesk.jsp");
                     }
               </script>
<%
		} catch (SQLException e) {

			System.out.println(e.getMessage());

		} finally {

			if (preparedStatement != null) {
				preparedStatement.close();
			}

			if (cn != null) {
				cn.close();
			}

		}
     
     
     
     
     
  
    }catch(Exception ex){
out.println(ex);
}

%>  







