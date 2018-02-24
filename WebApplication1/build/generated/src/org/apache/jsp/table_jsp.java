package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class table_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Bootstrap Example</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <h2>Ip Details Table</h2>\n");
      out.write("  <p>This Table Contains Basic Information of Users ip and resources that they have been Using!!</p>            \n");
      out.write("  <br><br>\n");
      out.write("   <table class=\"table\" border=\"1\">\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("    <thead>\n");
      out.write("      <tr>\n");
      out.write("   \n");
      out.write("        <th>Full Name</th>\n");
      out.write("        <th>Department</th>\n");
      out.write("        <th>Designation</th>\n");
      out.write("<th>Phone Number</th><th>IP Address</th><th>Computer Password</th><th>Printer</th><th>Scanner</th>\n");
      out.write("    </tr>\n");
      out.write("   \n");
      out.write("  ");

    Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
  Statement stmt=cn.createStatement();

ResultSet res=stmt.executeQuery("select * from landesk1");
  
while(res.next())
{
    
    
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("      <tr>\n");
      out.write("   \n");
      out.write("          <TD>\n");
      out.write("            ");
      out.print(res.getString("fullname"));
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td> ");
      out.print(res.getString("department"));
      out.write("</td>\n");
      out.write("        <td> ");
      out.print(res.getString("degination"));
      out.write("</td>\n");
      out.write("        <td> ");
      out.print(res.getString("phonenumber"));
      out.write("</td>\n");
      out.write("        <td>");
      out.print(res.getString("ip"));
      out.write("\n");
      out.write("            <br>\n");
      out.write("        \n");
      out.write("               \n");
      out.write("               <a href = \"C:\\\\Program Files\\\\RealVNC\\\\VNC Viewer\\\\vncviewer.exe\">\n");
      out.write("                   VNC</a>\n");
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td> ");
      out.print(res.getString("password"));
      out.write("</td>\n");
      out.write("        <td> ");
      out.print(res.getString("printer1"));
      out.write("<br>");
      out.print(res.getString("printer2"));
      out.write("</td>\n");
      out.write("        \n");
      out.write("        <td> ");
      out.print(res.getString("scanner1"));
      out.write("<br>");
      out.print(res.getString("scanner2"));
      out.write("</td>\n");
      out.write("      \n");
      out.write("        \n");
      out.write("      \n");
      out.write("      </tr>\n");
      out.write("    \n");
      out.write("   \n");
}
      out.write("\n");
      out.write(" </tbody>\n");
      out.write(" \n");
      out.write(" </table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
