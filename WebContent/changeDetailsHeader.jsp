<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
            <center><h2><img src="icon/cdetail.png" alt="cdetail">  Change Details</h2></center>
             <%String email = session.getAttribute("email").toString(); %>
            <h2><a href="home.jsp"><img src="icon/back.png" alt="back">  Back</a></h2>
             <h2><a href="loginAction.jsp"><img src="icon/profile.png" alt="profile">  <%out.println(email); %></a></h2>
            <a href="changePassword.jsp"><img src="icon/changep.png" alt="changep">  Change Password </a>
            <a href="addChangeAddress.jsp"><img src="icon/changeadd.png" alt="changeadd">  Add or change Address </a>
            <a href="changeSecurityQuestion.jsp"><img src="icon/changequ.png" alt="changequ">  Change Security Question </a>
            <a href="changeMobileNumber.jsp"><img src="icon/changemob.png" alt="changemob">  Change Mobile Number </a>
          </div>
           <br>
           <!--table-->
