
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
    
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
<div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader --> 
      <!-- header -->
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
                              <li> <a href="index.html">Home</a> </li>
                              <li> <a href="AdminLogin.jsp">Admin</a> </li>
                              <li> <a href="Cust_Login.jsp">User Login</a> </li>
                              <li class="active"> <a href="Cust_Register.jsp">User Register</a> </li>
                               </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end header inner --> 
      </header>
    
      <!-- about  -->
      <div id="about" class="about top_layer">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Registration</h2>
                     <center>
             <form action='CustomerReg.jsp' method='post'>
                <table>
                    <tR><th>Full Name</tH><td><input type='text' name='fname'  placeholder="Full Name" required=''></td></tR>
                     <tR><th>Email</tH><td><input type='email' name='email'  placeholder="Email ID" required=''></td></tR>
                 <tR><th>Mobile</tH><td><input type='number' name='mobile'  placeholder="Mobile Number" required=''></td></tR>
                 <tR><th>Address</tH><td><textarea cols='18' rows='5' name='address' required='' placeholder="Address "></textarea></td></tR>
             <tr><th>Gender</th><td><input type="radio" name="gender" value="Male"> Male
<input type="radio" name="gender" value="Female"> Female
</tD></tr>
                    <tr><th>UserName</th><td><input type='text' name='uname' required='' placeholder="UserName"></td><tr/>
                
                    <tr><th>Password</th><td><input type='password' name='pwd' required='' placeholder="Password"></td><tr/>
           
                    <tr><th><input type='submit' value='Register'></th><td><input type='reset' value='Reset'></td>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                       <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                       <tr><tH></tH><td>Already Have An Account ? <a href='Cust_Login.jsp'>Login</a></td></tr>
                    </table>
            </form>   
            
        </center>
                     
                     
                     
                  </div>
               </div>
            </div>
        
         </div>
      </div>
      <!-- end abouts -->
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