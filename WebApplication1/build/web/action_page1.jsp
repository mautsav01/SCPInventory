<%@page import="java.io.OutputStream"%>
<%
String ip=request.getParameter("ip1");
String a="10.153.64.16";
  String command = "mstsc.exe /v:"+"";
    Process child = Runtime.getRuntime().exec(command);

    // Get output stream to write from it
   


%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.OutputStream"%>
<%
//String ip=request.getParameter("ip1");
%>
<center>
    <h1>Taking Remote login of <%=ip%></h1>
</center>
<%
try{
  //  String command = "C:\\Program Files\\RealVNC\\VNC Viewer\\vncviewer.exe "+ip;
  //  Process child = Runtime.getRuntime().exec(command);

    // Get output stream to write from it
   
} catch (Exception e) {
    System.out.println(""+e);
}

%>