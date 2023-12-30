<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "cancel";
try
{ 
 Connection con = ConnectionProvider.getCon();
 String query = ("update cart set status = ? where product_id = ? and email = ? and address is not NULL");
 PreparedStatement pst = con.prepareStatement(query);
 pst.setString(1, status);
 pst.setString(2, id);
 pst.setString(3, email);
 int rowCount = pst.executeUpdate();
 if(rowCount > 0){
     response.sendRedirect("ordersReceived.jsp?msg=cancel1");
 } else {
     response.sendRedirect("ordersReceived.jsp?msg=wrong");
 }
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>
