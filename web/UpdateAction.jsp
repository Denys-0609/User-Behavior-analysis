
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
String desc=request.getParameter("desc");
try{
    String query="update products set description='"+desc+"' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
         %>  
    <script type="text/javascript">
        window.alert("Update Successfully..!!");
        window.location="Marchadise_Info.jsp";
    </script>
     
  <% 
    }else{
  %>  
    <script type="text/javascript">
        window.alert("Updating Failed..!!");
        window.location="Marchadise_Info.jsp";
    </script>
     
  <% 
}
    
}catch(Exception e){
 out.println(e);   
}


%>