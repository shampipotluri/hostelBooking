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
            String rating=request.getParameter("rating");
          //  String rollnumber=request.getParameter("rollnumber");
            String comment=request.getParameter("comment");
         
           String guest=session.getAttribute("username").toString();
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into fb(host,hname,rating,comment,guest) values(?,?,?,?,?)");
        pst2.setString(1,host);
	pst2.setString(2,hname);
        pst2.setString(3,rating); 
        pst2.setString(4,comment);
        pst2.setString(5,guest);
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("status.jsp?m1=Feedback_success"); 
      }
      else{
          response.sendRedirect("status.jsp?m2=book_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
