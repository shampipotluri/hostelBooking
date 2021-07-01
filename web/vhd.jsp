<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
            String email=request.getParameter("email");
         
          
		try
		{
         co = databasecon.getconnection();
                    
         PreparedStatement pst2=co.prepareStatement("delete from host where username='"+username+"'");
      
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("vh.jsp?m1=Delete_success"); 
      }
      else{
          response.sendRedirect("vh.jsp?m2=Delete_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
