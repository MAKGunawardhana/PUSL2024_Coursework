<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Sign up</title>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;"><img src="icon/web.png" alt="web">  Sign Up </div>

	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">
			<div class="form-group">
					<label>Name</label> <input type="text" name="name"
						class="form-control" placeholder="Enter Your Name" Required>
				</div>
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
					<label>Password</label> <input type="password"
						name="password" class="form-control"
						placeholder="*********************" Required>
				</div>
				<div class="button">
					<button type="submit" class="btn">Sign Up</button>
				</div>
				<h4>Already have an account<br><a href ="login.jsp"> Login</a></h4>
			</form>

		</div>
		<div class='whysign'>
		<h3>Welcome New User! </h3> <img src ="icon/hwet.png" alt = "hwet">
		<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)){
			
		%>
		<h4>Successfully Registered!</h4>
		<%} %>
		<%
		if("invalid".equals(msg)){
		
		%>
		<h4>Something Went Wrong! <br>Please Try Again Later!</h4>
		<%} %>
		
<div>
<img src ="icon/signup.png" alt = "signup">
</div>
			
		</div>
	</div>

</body>
</html>