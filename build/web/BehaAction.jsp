<%-- 
    Document   : BehaAction
    Created on : 1 Dec, 2020, 12:06:02 AM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email=request.getParameter("user");
if(email!=null){
    session.setAttribute("email",email);
    response.sendRedirect("ViewBehavior");
}else{
    response.sendRedirect("Behavior.jsp"); 
}

%>
