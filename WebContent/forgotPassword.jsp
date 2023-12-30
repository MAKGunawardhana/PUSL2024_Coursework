<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Forgot Password</title>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;"><img src="icon/fpas.png" alt="fpas">  Forgot Password </div>

<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
				<div class="form-group">
					<label>Email Address</label> <input type="email" name="email"
						class="form-control" placeholder="Enter Your E-mail" Required>
				</div>
				
				<div class="form-group">
					<label>Mobile Number</label> <input type="number" name="mobileNumber"
						class="form-control" placeholder="Enter Your Mobile Number" Required>
				</div>
				<select name="securityQuestion" required>
				<option value="What is your first car?">What is your first car?</option>
				<option value="What is the name of your first pet?">What is the name of your first pet?</option>
				<option value="What is the name of the town where you born?">What is the name of the town where you born?</option>
				<option value="What is your first school name?">What is your first school name?</option>
				</select>
				<div class="form-group">
					<label>Answer</label> <input type="text" name="answer"
						class="form-control" placeholder="Enter Your Answer" Required>
				</div>
				<div class="form-group">
					<label>New Password</label> <input type="password"
						name="newPassword" class="form-control"
						placeholder="*********************" Required>
				</div>
				<input type= "submit" value = "Save">
				
			</form>
			<br>
			<h4><a href="login.jsp">Login</a></h4>
  </div>
  <div class='whyforgotPassword'>
  <%
		String msg = request.getParameter("msg");
		if ("done".equals(msg)){
			
		%>
		<h4>Password Changed Successfully!</h4>
		<%} %>
		<%
		if("invalid".equals(msg)){
		
		%>
		<h4>Something Went Wrong! <br>Please Try Again Later!</h4>
		<%} %>
		<br>
		<br>
<div>
<img src ="icon/fopas.png" alt = "fopas">
</div>
  </div>
</div>
</body>
</html>