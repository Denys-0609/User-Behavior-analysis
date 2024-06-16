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
      ResultSet r1=Queries.getExecuteQuery("select * from p_order where email='"+email+"'and id='"+id+"'");
  int g=0;
while(r1.next()){
g=Integer.parseInt(r1.getString("p_count"));
g=g+1;
 String query="update p_order set p_count='"+g+"'where email='"+email+"'and id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        response.sendRedirect("My_Orders.jsp?msg=s");
         }else{
       response.sendRedirect("My_Orders.jsp?msg=f");
    }
}
}catch(Exception e){
    out.println(e);
}



%>