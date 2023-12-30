<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="New Mobile Number" required>
 <hr>
<h3>Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="*******" required>
<hr>
 <button class="button" type="submit"><img src="icon/save.png" alt="save">  Save </button>
</form>
</body>
<br><br><br>
</html>
