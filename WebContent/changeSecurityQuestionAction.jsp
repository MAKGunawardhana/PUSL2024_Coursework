<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<% 
String email = session.getAttribute("email").toString();
String securityQuestion = request.getParameter("securityQuestion");
String newAnswer = request.getParameter("newAnswer");
String password = request.getParameter("password");

int check=0;
try{
	Connection con = ConnectionProvider.getCon();
	String query = "select * from users where email=? and password=?";
	PreparedStatement pst = con.prepareStatement(query);
	pst.setString(1, email);
	pst.setString(2, password);
	ResultSet rs = pst.executeQuery();
	while(rs.next()){
		check=1;
		query = "update users set securityQuestion=?, answer=? where email=?";
		pst = con.prepareStatement(query);
		pst.setString(1, securityQuestion);
		pst.setString(2, newAnswer);
		pst.setString(3, email);
		pst.executeUpdate();
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}if (check==0){
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
	}
	
}catch(Exception e){
	System.out.println(e);
}
%>
