<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String name = request.getParameter("name");
String body = request.getParameter("body");

try {
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into invoice(email, name,body) values(,?,?,?)");
	ps.setString(1, email);
	ps.setString(2,name);
	ps.setString(3,body);
	ps.executeUpdate();
	response.sendRedirect("sendInvoice.jsp?msg=valid");
} catch(Exception e) {
	System.out.println(e);
	response.sendRedirect("sendInvoice.jsp?msg=invalid");
}
%>