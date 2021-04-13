<%-- 
    Document   : CompanyJ
    Created on : Jul 18, 2019, 6:35:39 PM
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
          
             String cname=request.getParameter("c_name");
             String est=request.getParameter("establish");
             String em=request.getParameter("email");
             String cont=request.getParameter("contact");
             String hrn=request.getParameter("hr_name");
             String user=request.getParameter("user");
             String pass=request.getParameter("pass");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/company","root","root");
             
             st = c1.createStatement();
             q="insert into companyd(c_name,establish,email,contact,hr_name,user,pass) values('"+ cname +"','"+ est +"','"+ em +"','"+ cont +"','"+ hrn +"','"+ user +"','"+ pass +"')";
             
             st.executeUpdate(q);
             out.println("Add New Company Details Successfully...");
                   out.println("<a href='CompanyLogin.jsp'>Click Here To Continue</a>");
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='CompanyRegister.jsp'>Try Again</a>");
    }        
            
   %>
                        
                    </div>                            
                </div>
            </div>
        </div>
    </body>
</html>
