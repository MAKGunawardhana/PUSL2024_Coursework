<%@page errorPage = "error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
   <%String email = session.getAttribute("email").toString(); %>
             <center><h2>GREEN Supermarket <img src="../icon/cabbage.png" alt="logo"></h2></center>
            <a href="addNewProduct.jsp"><img src="../icon/addproduct.png" alt="addproduct">  Add New Product</a>
            <a href="allProductEditProduct.jsp"><img src="../icon/editproduct.png" alt="editproduct">  All Products and Edit Products </a>
            <a href="messagesReceived.jsp"><img src="../icon/messagesr.png" alt="messagesr">  Messages Received</a>
            <a href="ordersReceived.jsp"><img src="../icon/orderr.png" alt="orderr">  Orders Received</a>
            <a href="cancelOrders.jsp"><img src="../icon/cancelo.png" alt="cancelo">  Cancel Orders</a>
            <a href="deliveredOrders.jsp"><img src="../icon/orderdelivered.png" alt="orderdelivered">  Delivered Orders</a>
            <a href="sendInvoice.jsp"><img src="../icon/invo.png" alt="invo">  Send Invoice</a>
            <a href="../logout.jsp"><img src="../icon/logout.png" alt="logout">  Logout</a>
          </div>
           <br>
           <!--table-->
