
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>User_Behavior</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <style>
          table tr th{
              width:150px;
              background: MediumSeaGreen;
              color:whitesmoke;
              border:1px solid white;
          }
          table tr td{
              background: whitesmoke;
              border:1px solid white;
          }
          </style>
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
<!--<div class="loader"><img src="images/loading.gif" alt="#" /></div>-->
      </div>
     
      <header>
         <!-- header inner -->
         <div class="header">
         <div class="container">
            <div class="row">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo"> <a href="#">Online User</a>
                            <h5>Behavior analysis on graphical model</h5></div>
                        
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu">
                           <ul class="menu-area-main">
                               <li> <a href="AdminHome.jsp">Home</a> </li>
                              <li> <a href="Cust_Info.jsp">View Users</a> </li>
                              <li class="active"> <a href="Marchadise_Info.jsp">View Products</a> </li>
                              <li> <a href="AdminLogin.jsp">Logout</a> </li>
                               </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end header inner --> 
      </header>
      <!-- end header -->
      <section class="slider_section">
         <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <div class="carousel-inner" style='width:400px;height:500px;border:1px solid red;float:right;background: MediumSeaGreen;  box-shadow: 5px 5px #888888;'>
                <centeR>
                <table style="margin: 40px;">
                    <tr><td style="background: none;border:none;"><a href="Upload.jsp"><h4   style="color:white;">--> Add Products</h4></a></td></tr>
                      <tr><td style="background: none;border:none;"><a href="ViewBehavior.jsp"><h4   style="color:white;">--> User Behavior in graphical format</h4></a></td></tr>
                  
                      <tr><td style="background: none;border:none;"><a href="FeedBack.jsp"><h4   style="color:white;">-->View FeedBack</h4></a></td></tr>
               </table>
                        
                </center>
            </div>
          <div class="carousel-inner" style='width:auto;height:auto;border:none;'>
              <center>
              <h3>Product Information Update</h3>
              <form action="UpdateAction.jsp" method="post">
              <table>
               
                  <%
                      String id=request.getParameter("id");
                  try{
                      String query="select * from products where id='"+id+"'";
                      
                      ResultSet r=Queries.getExecuteQuery(query);
                      int c=0;
                      while(r.next()){
                          c=c+1;
                        %>
                       
                        <tr><th>Description</tH><td><textarea cols="20" rows="5" name="desc"><%=r.getString("description")%></textarea></tD></tr>
                                   
                        <tr><th></th><td><input type="hidden" name="id" value="<%=r.getString("id")%>"></td></tr>
                        <tr><th></th><td><input type="submit" value="Update"></td></tr>
                        <%
                      }
                      
                      
                      
                  }catch(Exception e){
                  out.println(e);    
                  }
                  
                  
                  
                  %>
                  
                  
                  </table>
              </form>
                      </center>
            </div>
         </div>
      </section>
     
      <!-- service --> 
      
      <!-- end footer -->
      <!-- Javascript files--> 
      <script src="js/jquery.min.js"></script> 
      <script src="js/popper.min.js"></script> 
      <script src="js/bootstrap.bundle.min.js"></script> 
      <script src="js/jquery-3.0.0.min.js"></script> 
      <script src="js/plugin.js"></script> 
      <!-- sidebar --> 
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
      <script src="js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         
      </script> 
   </body>
</html>