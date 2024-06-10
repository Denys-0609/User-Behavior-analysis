
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
      <title>Use_Behavior</title>
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
    
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
<!--<div class="loader"><img src="images/loading.gif" alt="#" /></div>-->
      </div>
     <%
     String username=(String)session.getAttribute("username");
     String email=(String)session.getAttribute("email");
     String mobile=(String)session.getAttribute("mobile");
     
     %>
      <header>
          <style>
          table tr th{
             width:200px;
              background: MediumSeaGreen;
              color:whitesmoke;
              border:1px solid white;
             
          }
          table tr td{
            
              background: whitesmoke;
              border:1px solid white;
          }
          </style>
         <!-- header inner -->
         <div class="header">
         <div class="container">
            <div class="row">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo"> <a href="#">Behavior</a> 
                        
                            <h4>Welcome : <font color='gold'><%=email%></font></h4>
                        </div>
                        
                     </div>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu" style="width:900px;">
                           <ul class="menu-area-main">
                              <li> <a href="Cust_Home.jsp">Home</a> </li>
                              <li> <a href="ViewProducts.jsp">View Products</a> </li>
                             
                              <li> <a href="My_Orders.jsp">Cart</a> </li>
                                  <li> <a href="FeedBack1.jsp">FeedBack</a> </li>
                                         <li class="active"> <a href="user_MyOrdes.jsp">Orders</a> </li>
                              <li> <a href="Cust_Login.jsp">Logout</a> </li>
                               </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
      </header>
    
      <section class="slider_section">
         <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
             <center>
                  
             
           
              <h2>My Oder Details</h2>
          
                   <table>
                  <tr>
                      <th>Sr.No</tH>
                      <th>Order Date</tH>
                      <th>Product Name</tH>
                        <th>Product Price</tH>
                      <th>No.Of Products</tH>
                      <th>Total price</tH>
                     
                     
                  </tr>
                  <%
                  try{
                      String query="select * from products p,p_order o where o.email='"+email+"' and o.p_id=p.id and o.status!='waiting'";
                      
                      ResultSet r=Queries.getExecuteQuery(query);
                      int c=0;
                      while(r.next()){
                          c=c+1;
                          float pp=Float.parseFloat(r.getString("p.price"))*Float.parseFloat(r.getString("o.p_count"));
                        %>
                        <tR>
                             <td><%=c%></tD>
                            <td><%=r.getString("o.date")%></tD>
                              <td><input type="text" name="pname" value="<%=r.getString("p.pname")%>" style="border:none;background:none;width:100px;"></tD>
                              <td><input type="text" name="price" value="<%=r.getString("p.price")%>"  style="border:none;background:none;width:100px;"> </tD>
                                <td><input type="text" name="pcount" value="<%=r.getString("o.p_count")%>" style="border:none;background:none;width:50px;"> </tD>
                                
                                <td><%=pp%></td>
                                
                               
                        </tr>
                        
                        <%
                      }
                      
                      
                      
                  }catch(Exception e){
                  out.println(e);    
                  }
                  
                  
                  
                  %>
                
                  </table>
              
             </center>
                      </center>
 </div>
             </center>
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