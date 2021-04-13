<%-- 
    Document   : CompanyRegister
    Created on : Jul 18, 2019, 3:31:46 PM
    Author     : dell
--%>

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
                        <h3 class="text-primary">Add Company</h3><br />
                   <form action="CompanyJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Company Name</label>
                        <input class="form-control" type="text" name="cname" placeholder="Enter Company Name" />
                    </div>
                     <div class="form-group">
                        <label for="inputName">Established</label>
                        <input class="form-control" type="text" name="est" placeholder="Enter Established Year" />
                    </div>                        
                        <div class="form-group">
                        <label for="inputName">Email Id</label>
                        <input class="form-control" type="email" name="email" placeholder="Enter Email" />
                    </div>
                       
                        <div class="form-group">
                        <label for="inputName">Contact</label>
                        <input class="form-control" type="text" name="contact" placeholder="Enter Contact" />
                    </div>                
                        <div class="form-group">
                        <label for="inputName">HR Name</label>
                        <input class="form-control" type="text" name="hrname" placeholder="Enter HR Name" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control" type="text" name="user" placeholder="Enter Username" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Password</label>
                        <input class="form-control" type="text" name="pass" placeholder="Enter Password" />
                    </div>
                    <button type="submit" class="btn btn-primary">Add Company</button>
                </form>                
                    </div>                            
                </div>
            </div>
        </div>
    </body>
</html>
