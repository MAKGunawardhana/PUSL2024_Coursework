<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file = "footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<% String msg = request.getParameter("msg");
if("done".equals(msg)){
	%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%}%>
<% 
if("wrong".equals(msg)){
	%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>

<form action = "changeSecurityQuestionAction.jsp" method = "post" >

<h3>Select New Security Question</h3>
 <select class="input-style" name="securityQuestion">
				<option value="What is your first car?">What is your first car?</option>
				<option value="What is the name of your first pet?">What is the name of your first pet?</option>
				<option value="What is the name of the town where you born?">What is the name of the town where you born?</option>
				<option value="What is your first school name?">What is your first school name?</option>
				</select> 
 <hr>
 <h3>New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder ="New Answer" required> 
<hr>
<h3>Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder ="***********" required>
<hr>
 <button class="button" type="submit"><img src="icon/save.png" alt="save">  Save </button>
</form>
</body>
<br><br><br>
</html>
