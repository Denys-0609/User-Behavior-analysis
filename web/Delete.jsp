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
     
    
String id=request.getParameter("id");
try{
      int r1=Queries.getExecuteUpdate("delete from p_order where id='"+id+"'");


    if(r1>0){
        response.sendRedirect("My_Orders.jsp?msg=s");
         }else{
       response.sendRedirect("My_Orders.jsp?msg=f");
    }

}catch(Exception e){
    out.println(e);
}



%>