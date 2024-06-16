
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd"); 
   
   String query="select * from admin where username='"+uname+"'and password='"+pwd+"'";
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
     %>  
    <script type="text/javascript">
        window.alert("Admin Login Successfully..!!");
        window.location="AdminHome.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("Admin Login Failed..!!");
        window.location="AdminLogin.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>