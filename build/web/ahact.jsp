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
             String cn=request.getParameter("cn");
         //   session.setAttribute("username", username);
          
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into hostel(username,hname,type,food,price,location,cn) values(?,?,?,?,?,?,?)");
        pst2.setString(1,username);
	pst2.setString(2,hname);
        pst2.setString(3,type); 
        pst2.setString(4,food);
        pst2.setString(5,price); 
         pst2.setString(6,location);
       pst2.setString(7,cn);
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("addhostel.jsp?m1=add_success"); 
      }
      else{
          response.sendRedirect("addhostel.jsp?m2=add_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
