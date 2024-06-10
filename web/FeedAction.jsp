<%-- 
    Document   : FeedAction
    Created on : 29 Nov, 2020, 3:36:40 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>

<%
try{
   String email=request.getParameter("email");
   String mobile=request.getParameter("mobile"); 
      String feedback=request.getParameter("feedback"); 
      
      
   String query="insert into feedback values(null,'"+email+"','"+mobile+"','"+feedback+"',now())";
   int r=Queries.getExecuteUpdate(query);
   if(r>0){
     %>  
    <script type="text/javascript">
        window.alert("FeedBack Submitted Successfully..!!");
        window.location="FeedBack1.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("Feedback Failed to submitted..!!");
        window.location="FeedBack1.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>