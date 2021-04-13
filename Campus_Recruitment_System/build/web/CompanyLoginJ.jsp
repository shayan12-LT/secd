<%-- 
    Document   : CompanyLoginJ
    Created on : Jul 21, 2019, 1:49:59 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
         <link href="cstyle.css" rel="stylesheet"/>
        <title>Campus Recruitment System</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">                                            
                    <div class="sidebarContent"><img src="image/campus.png" class="img-fluid" ></div>                        
                </div>                
            </div>
            <div class="row">
                <div class="col-lg-3">                    
                          <div class="mainContent">
                              <br>
                              <br>
                              <a href="index.html">Login</a><br>
                              <a href="About.jsp">About</a></div>                                              
                </div>
                <div class="col-lg-9">
                    <div class="col-lg-5 offset-3">             
                        
                        <%
                     Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
        try {
         String lgnm=request.getParameter("inputName");
        String ps1=request.getParameter("inputPass");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/company","root","root");
             
             
             st=c1.createStatement();
             q="select * from companyd where user='"+lgnm+"' and pass='"+ps1+"'";
            rs1=st.executeQuery(q);
           if(rs1.next())
          {
              
              
                out.print("<h3>Welcome " + lgnm+"</h3>");
            out.println("<br><a href='HomeCompany.jsp'>Click Here to Continoue..</a>");
           
          }
           else
          {
              out.println("Invalid Login<br>");
              
              out.println("<a href='CompanyLogin.jsp'>Try Again</a>");
             }
            
             }
    catch(Exception e)
    {
                    out.println("Invalid Insertion<br>");
                    out.println(e);
                     out.println("<a href='CompanyLogin.jsp'>Try Again</a>");
    }        
                    %>
                        
                    </div>                            
                </div>
            </div>
        </div>
    </body>
</html>
