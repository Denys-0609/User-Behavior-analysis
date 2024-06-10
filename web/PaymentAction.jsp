<%-- 
    Document   : Increse
    Created on : 30 Nov, 2020, 10:53:58 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username=(String)session.getAttribute("username");
     String email=(String)session.getAttribute("email");
     String mobile=(String)session.getAttribute("mobile");
     
    

try{
      int r1=Queries.getExecuteUpdate("update p_order set status='Payment_Done' where email='"+email+"'and status='waiting'");


    if(r1>0){
         %>  
    <script type="text/javascript">
        window.alert("Order Confirmed and Payment Success..!!");
        window.location="ViewProducts.jsp";
    </script>
  <% 
   
         }else{
       %>  
    <script type="text/javascript">
        window.alert("Failed..!!");
        window.location="ViewProducts.jsp";
    </script>
  <%
    }

}catch(Exception e){
    out.println(e);
}



%>