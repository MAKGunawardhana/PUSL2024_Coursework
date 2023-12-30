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
    <%String email = session.getAttribute("email").toString(); %>
            <center><h2>GREEN Supermarket <img src="icon/cabbage.png" alt="logo"></h2></center>
            <h2><a href="loginAction.jsp"><img src="icon/profile.png" alt="profile">  <%out.println(email); %> <i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp"><img src="icon/home.png" alt="home">  Home</a>
            <a href="myCart.jsp"><img src="icon/cart.png" alt="mycart">  My Cart</a>
            <a href="myOrders.jsp"><img src="icon/order.png" alt="myorder">  My Orders</a>
            <a href="changeDetails.jsp"><img src="icon/details.png" alt="details">  Change Details</a>
            <a href="messageUs.jsp"><img src="icon/messageus.png" alt="messageus">  Message Us </a>
            <a href="aboutUs.jsp"><img src="icon/aboutus.png" alt="aboutus">  About Us</a>
            <a href="logout.jsp"><img src="icon/logout.png" alt="logout">  Logout</a>
            <div class="search-container">
             <form action = "searchHome.jsp" method = "post">
             <input type = "text" placeholder = "Search" name ="search">
             <button type = "submit"><img src="icon/search.png" alt="search"></button>
             </form>
            </div>
          </div>
           <br>
           <!--table-->
