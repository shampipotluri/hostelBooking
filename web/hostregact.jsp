<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
          //  String rollnumber=request.getParameter("rollnumber");
            String address=request.getParameter("address");
            String mobile=request.getParameter("mobile");
         //   session.setAttribute("username", username);
          
          
		try
		{
         co = databasecon.getconnection();
                    
        PreparedStatement pst2=co.prepareStatement("insert into host(username,password,email,address,mobile) values(?,?,?,?,?)");
        pst2.setString(1,username);
	pst2.setString(2,password);
        pst2.setString(3,email); 
        pst2.setString(4,address);
        pst2.setString(5,mobile); 
      
	int i= pst2.executeUpdate();
      
      if(i>0){
       response.sendRedirect("rest.jsp?m1=reg_success"); 
      }
      else{
          response.sendRedirect("hostreg.jsp?m2=reg_failed"); 
      }
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>
