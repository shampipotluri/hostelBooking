<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
            String hname=request.getParameter("hname");
            String type=request.getParameter("type");
          //  String rollnumber=request.getParameter("rollnumber");
            String food=request.getParameter("food");
            String price=request.getParameter("price");
            String location=request.getParameter("location");
         //   session.setAttribute("username", username);
          
          
		try
		{
         co = databasecon.getconnection();
                    
         PreparedStatement pst2=co.prepareStatement("update hostel set type='"+type+"',food='"+food+"',price='"+price+"',location='"+location+"' where username='"+username+"' and hname='"+hname+"' ");
      
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("uphostel.jsp?m1=add_success"); 
      }
      else{
          response.sendRedirect("uphostel.jsp?m2=add_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
