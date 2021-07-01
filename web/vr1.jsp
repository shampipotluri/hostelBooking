<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String host=request.getParameter("host");
            String hname=request.getParameter("hname");
            String guest=request.getParameter("guest");
          
          
		try
		{
         co = databasecon.getconnection();
                    
         PreparedStatement pst2=co.prepareStatement("update book set status='accepted' where host='"+host+"' and hname='"+hname+"' and guest='"+guest+"' ");
      
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("vr.jsp?m1=respond_success"); 
      }
      else{
          response.sendRedirect("vr.jsp?m2=respond_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
