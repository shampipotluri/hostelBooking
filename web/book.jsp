<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String host=request.getParameter("username");
            String hname=request.getParameter("hname");
            String type=request.getParameter("type");
          //  String rollnumber=request.getParameter("rollnumber");
            String food=request.getParameter("food");
            String price=request.getParameter("price");
            String location=request.getParameter("location");
         //   session.setAttribute("username", username);
           String guest=session.getAttribute("username").toString();
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into book(host,hname,type,food,price,location,guest,status) values(?,?,?,?,?,?,?,?)");
        pst2.setString(1,host);
	pst2.setString(2,hname);
        pst2.setString(3,type); 
        pst2.setString(4,food);
        pst2.setString(5,price); 
         pst2.setString(6,location);
          pst2.setString(7,guest);
           pst2.setString(8,"pending");
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("search.jsp?m1=book_success"); 
      }
      else{
          response.sendRedirect("search.jsp?m2=book_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
