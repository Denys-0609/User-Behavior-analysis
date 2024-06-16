
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
     String fname=request.getParameter("fname");
   String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
   String address=request.getParameter("address");
    String gender=request.getParameter("gender");
   
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd"); 
   
   String query="select count(*) from customer where email='"+email+"'or mobile='"+mobile+"'";
   int c=0;
   ResultSet r=Queries.getExecuteQuery(query);
   while(r.next()){
      c=r.getInt(1); 
   }
   
   if(c==0){
       int i=Queries.getExecuteUpdate("insert into customer values(null,'"+fname+"','"+email+"','"+mobile+"','"+address+"','"+gender+"','"+uname+"','"+pwd+"')");
       if(i>0){
     %>  
    <script type="text/javascript">
        window.alert("User Registration Successfully..!!");
        window.location="Cust_Login.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("User Registration Failed..!!");
        window.location="Cust_Register.jsp";
    </script>
    <%
}
}else{
%>
    <script type="text/javascript">
        window.alert("Email or Mobile Number Already Exist");
        window.location="Cust_Register.jsp";
    </script>
    <%
}
}catch(Exception e){
   out.println(e); 
}
%>