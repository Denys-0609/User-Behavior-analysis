

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String username=(String)session.getAttribute("username");
     String email=(String)session.getAttribute("email");
     String mobile=(String)session.getAttribute("mobile");
     
    
String id=request.getParameter("id");


try{
    ResultSet r=Queries.getExecuteQuery("select count(*) from p_order where email='"+email+"'and p_id='"+id+"' and status!='Ordered'");
    int h=0;
    while(r.next()){
        h=r.getInt(1);
    }
    if(h==0){
    String query="insert into p_order values(null,'"+email+"','"+mobile+"','"+id+"',1,now(),'waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>  
    <script type="text/javascript">
        window.alert("Product Sucessfully Added");
        window.location="Cust_Home.jsp";
    </script>

  <%   
    }else{
        %>  
    <script type="text/javascript">
        window.alert("Product Failed");
        window.location="Cust_Home.jsp";
    </script>

  <%  
    }
}else{
ResultSet r1=Queries.getExecuteQuery("select * from p_order where email='"+email+"'and p_id='"+id+"'");
  int g=0;
while(r1.next()){
g=Integer.parseInt(r1.getString("p_count"));
g=g+1;
 String query="update p_order set p_count='"+g+"'where email='"+email+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>  
    <script type="text/javascript">
        window.alert("Product Sucessfully Added");
        window.location="Cust_Home.jsp";
    </script>

  <%   
    }else{
        %>  
    <script type="text/javascript">
        window.alert("Product Failed");
        window.location="Cust_Home.jsp";
    </script>

  <%  
    }

}
}
    
    
    
}catch(Exception e){
  out.println(e);  
}


%>