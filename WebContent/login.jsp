<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;"><img src="icon/web.png" alt="web">  Login </div>

	<div id = "container">
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
			
				<div class="form-group">
					<label>Email Address</label> <input type="email" name="email"
						class="form-control" placeholder=" Your email" Required>
				</div>
				
				<div class="form-group">
					<label>Password</label> <input type="password"
						name="password" class="form-control"
						placeholder="*********************" Required>
				</div>
				<input type= "submit" class="btn" value = "Login">
				
				<h4>If you don't have an account, Please <a href="signup.jsp">Sign Up</a></h4>
       <h4><a href="forgotPassword.jsp">Forgot Password?</a></h4>
			</form>

		</div>
		</div>
		<div class='whysignLogin'>
		<%
		String msg = request.getParameter("msg");
		if ("notexist".equals(msg)){
			
		%>
		<h4>Incorrect Email or Password!</h4>
		<%} %>
		<%
		if("invalid".equals(msg)){
		
		%>
		<h4>Something Went Wrong! <br>Please Try Again Later!</h4>
		<%} %>
	<div>
<img src ="icon/log.png" alt = "log">
</div>
	</div>

</body>

</html>
