<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/bill.css">
<title>Bill</title>
</head>
<body>
<%
String email = session.getAttribute("email").toString();
try {
  int total = 0;
  int sno = 0;
  Connection con = ConnectionProvider.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select sum(total) from cart where email= '"+email+"' and status='bill'");
  while(rs.next()) {
    total = rs.getInt(1);
  }
  ResultSet rs2 = st.executeQuery("select * from users inner join cart where cart.email='"+email+"' and cart.status='bill'");
  while(rs2.next()) {
%>
<h3>GREEN Supermarket Bill  <img src="icon/bill.png" alt="bill">   </h3>
<hr>
<div class="left-div"><h3>Name:  <%=rs2.getString("name") %></h3></div>
<div class="right-div-right"><h3>Email: <%out.println(email); %> </h3></div>
<div class="right-div"><h3>Mobile Number:  <%=rs2.getString("mobileNumber") %></h3></div>  

<div class="left-div"><h3>Order Date: <%=rs2.getString("orderDate") %> </h3></div>
<div class="right-div-right"><h3>Payment Method:  <%=rs2.getString("paymentMethod") %></h3></div>
<div class="right-div"><h3>Expected Delivery:  <%=rs2.getString("deliveryDate") %></h3></div> 

<div class="left-div"><h3>Transaction Id:  <%=rs2.getString("transactionId") %></h3></div>
<div class="right-div-right"><h3>City:  <%=rs2.getString("city") %></h3></div> 
<div class="right-div"><h3>Address:  <%=rs2.getString("address") %></h3></div> 

<hr>
<%break;}  %>

	
	<br>
	
<table id="customers">
  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>Category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
  <%
  ResultSet rs1 = st.executeQuery("select * from cart inner join product where cart.product_id = product.id and cart.email = '"+email+"' and cart.status = 'bill'");
  while(rs1.next())
  {
    sno = sno+1;
  %>
  <tr>
    <td><%out.println(sno); %></td>
    <td><%=rs1.getString("name") %></td>
    <td><%=rs1.getString("category") %></td>
    <td><%=rs1.getString("price") %></td>
    <td><%=rs1.getString("quantity") %></td>
    <td><%=rs1.getString("total") %></td> 
  </tr>
  <%
  }
  %>
</table>
<h3>Total: <%out.println(total); %></h3>
<a href="continueShopping.jsp"><button class="button" type="submit">Continue Shopping  <img src="icon/shco.png" alt="shco">  </button></a>
<a onclick="window.print();"><button class="button" type="submit">  Print Bill  <img src="icon/print.png" alt="print"></button></a>
<br><br><br><br>
<% 

} catch(Exception e) {
 System.out.println(e);
}%>
</body>
</html>