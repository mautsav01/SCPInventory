
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%



int a = Integer.parseInt(request.getParameter("value"));


           Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  dbConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");

PreparedStatement preparedStatement=null;
String deleteSQL = "DELETE from reallandesk WHERE sn= "+a+"";

		try {
			//dbConnection = getDBConnection();
			preparedStatement = dbConnection.prepareStatement(deleteSQL);
			//preparedStatement.setInt(1, a);

			// execute delete SQL stetement
			preparedStatement.executeUpdate();

			%>

   <script>var r=confirm("Record Deleted!");
                     if(r===true){
                        window.location.replace("landesk.jsp");
                     }
               </script>


<%
		} catch (Exception e) {

			System.out.println(e.getMessage());

		} finally {

			if (preparedStatement != null) {
				preparedStatement.close();
			}

			if (dbConnection != null) {
				dbConnection.close();
			}


                }


















%>