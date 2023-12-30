<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String mobileNumber=request.getParameter("mobileNumber");
String password=request.getParameter("password");

int check=0;
try
{
	Connection con=ConnectionProvider.getCon();
	String query = "select * from users where email=? and password=?";
	PreparedStatement pst = con.prepareStatement(query);
	pst.setString(1, email);
	pst.setString(2, password);
	ResultSet rs = pst.executeQuery();
	while(rs.next())
	{
		check=1;
		query = "update users set mobileNumber=? where email=?";
		pst = con.prepareStatement(query);
		pst.setString(1, mobileNumber);
		pst.setString(2, email);
		pst.executeUpdate();
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	if(check==0)
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
}
catch(Exception e)
{
	System.out.println(e);
}
%>
