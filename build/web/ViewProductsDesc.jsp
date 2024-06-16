
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
              width:150px;
              background: MediumSeaGreen;
              color:whitesmoke;
              border:1px solid white;
              height:100px;
          }
          table tr td{
              width:200px;
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
                              <li class="active"> <a href="ViewProducts.jsp">View Products</a> </li>
                             
                              <li> <a href="My_Orders.jsp">View Cart</a> </li>
                                  <li> <a href="FeedBack1.jsp">Add FeedBack</a> </li>
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
                  
             
             <div id="right" style="width:400px;height:400px;border:none;">
     <%String id=request.getParameter("id");
     if(id!=null){
         try{
             ResultSet r=Queries.getExecuteQuery("select * from products where id='"+id+"'");
             while(r.next()){
              %>
              <table style="margin:50px;" >
                  <h3>Product Description</h3>
                  <tr><th>Product</tH><td><image src="view.jsp?id=<%=r.getString("id")%>" width="100" height="100"/></tD></tr>
                  <tR><th>Name: </th><td><%=r.getString("pname")%></td></tr> 
                  <tR><th>Price: </th><td><%=r.getString("price")%> Rs/-</td></tr> 
                  <tR><th>Description: </th><td><%=r.getString("description")%></td></tr> 
                  <tr><th> <a href="Order.jsp?id=<%=id%>"><input type="button" value="Add to Cart"></a></tH></tr>
              </table>
              <%
             }
         }catch(Exception e){
             out.println(e);
         }
  
}%>
     
                      
                      
                      
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