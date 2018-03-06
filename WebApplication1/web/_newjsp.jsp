
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Map"%>
<%@page import="java.net.Socket"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>



<%

String department=request.getParameter("department");

String hostname=request.getParameter("hostname");

String ip=request.getParameter("ip");

String username=request.getParameter("username");

String password=request.getParameter("password");

String mail=request.getParameter("mail");

String mailpassword=request.getParameter("mailpassword");

    try{
    

           Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
     PreparedStatement pst=cn.prepareStatement ("Insert into reallandesk(department,hostname,ip,username,password,mail,mailpassword) values (?,?,?,?,?,?,?)");
      pst.setString(1, department);
      pst.setString(2, hostname);
      pst.setString(3,ip );
    //  pst.setString(4, mobile);
      pst.setString(4, username);
      pst.setString(5, password);
    pst.setString(6, mail);
    pst.setString(7, mailpassword);
     
      
      
      int rs=pst.executeUpdate();
            if(rs>0){
                 %>
 
                 <script>var r=confirm("User Added!");
                     if(r===true){
                        window.location.replace("landesk.jsp");
                     }
               </script>

                 
               
<%      
            }
            else{
  out.print("Sorry Some error occured");
%>
<% 

             
                
            }
     
     
    }catch(Exception ex){
out.print(ex);
}

%>  
