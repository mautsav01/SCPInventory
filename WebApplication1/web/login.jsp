<%

String username=request.getParameter("uname");
String password=request.getParameter("pwd");

if(username.equals("s")&&password.equals("s") ){
    response.sendRedirect("landesk.jsp");
}else{
    %>
    <script>
        
        alert("invalid Username or Password");
          window.location.replace("index.jsp");
        
    </script>

<%
}



%>