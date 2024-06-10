
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd"); 
   
   String query="select * from customer where username='"+uname+"'and password='"+pwd+"'";
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
       session.setAttribute("username",r.getString("username"));
        session.setAttribute("email",r.getString("email"));
         session.setAttribute("mobile",r.getString("mobile"));
     %>  
    <script type="text/javascript">
        window.alert("User Login Successfully..!!");
        window.location="Cust_Home.jsp";
    </script>
        
  <% }else{
%>
    <script type="text/javascript">
        window.alert("User Login Failed..!!");
        window.location="Cust_Login.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>