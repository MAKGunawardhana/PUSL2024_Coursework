<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "adminHeader.jsp" %>
<%@include file = "adminFooter.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Send Invoice</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;"><img src="../icon/messageusnew.png" alt="messageusnew">  Send Invoice</div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">Invoice successfully sent.</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="sendInvoiceAction.jsp" method="post">
<hr>
<input class="input-style" name="user_Email" type="text" placeholder="user email" required>
<hr>
<input class="input-style" name="name" type="text" placeholder="name" required>
<hr>
<textarea class="input-style" name="body" placeholder="Invoice" required></textarea>
<hr>
<button class="button" type="submit">Send  <img src = "../icon/send.png" alt = "send"></button>
</form>
<br><br><br>
</body>
</html>