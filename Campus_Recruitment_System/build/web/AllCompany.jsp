<%-- 
    Document   : AllCompany
    Created on : Jul 18, 2019, 3:33:30 PM
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
                              <a href="SearchVacancy.jsp">Search Vacancy</a><br>
                              <a href="AllCompany.jsp">All Company</a></div>  
                    <a href="index.html">Logout</a>
                </div>
                <div class="col-lg-9">
                     <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/company","root","root");
           
             st = c1.createStatement();
             q="select c_id,c_name,establish,email,contact,hr_name from companyd";
             rs1=st.executeQuery(q);
             out.println("<table>");
              out.println("<tr><th>Id</th><th>Company Name</th><th>Establishment</th><th>Email</th><th>Contact</th><th>HR Name</th></tr>");
             while(rs1.next())
             {
                 int id=rs1.getInt("c_id");
                 String cname=rs1.getString("c_name");
                 String establish=rs1.getString("establish");                 
                 String email=rs1.getString("email");
                 String contact=rs1.getString("contact");
                 String hr_name=rs1.getString("hr_name");
                 out.println("<tr><td>"+id+"</td><td>"+cname+"</td><td>"+establish+"</td><td>"+email+"</td><td>"+contact+"</td><td>"+hr_name+"</td></tr>");
                 out.println("</div>");
             }   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
                </div>
            </div>
        </div>
    </body>
</html>
