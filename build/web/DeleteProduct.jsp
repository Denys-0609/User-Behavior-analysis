

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");

try{
    String query="update products set status='Deleted' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
         %>  
    <script type="text/javascript">
        window.alert("Product Deleted Successfully..!!");
        window.location="Marchadise_Info.jsp";
    </script>
     
  <% 
    }else{
  %>  
    <script type="text/javascript">
        window.alert("Product Delete Failed..!!");
        window.location="Marchadise_Info.jsp";
    </script>
     
  <% 
}
    
}catch(Exception e){
 out.println(e);   
}


%>