<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%@include file = "header.jsp"%>
<%@include file = "footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Orders</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;"><img src="icon/ordernew.png" alt="ordernew"> My Orders</div>
<table>
  <thead>
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Product Name</th>
      <th scope="col">Category</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Sub Total</th>
      <th scope="col">Order Date</th>
      <th scope="col">Expected Delivery Date</th>
      <th scope="col">Payment Method</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
<%
int sno=0;
try {
  Connection con = ConnectionProvider.getCon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
  while(rs.next()) {
    sno=sno+1;
%>
    <tr>
      <td><%out.println(sno); %></td>
      <td><%=rs.getString("name") %></td> 
      <td><%=rs.getString("category") %></td>
      <td><%=rs.getString("price") %></td> 
      <td><%=rs.getString("quantity") %></td> 
      <td><%=rs.getString("total") %></td> 
      <td><%=rs.getString("orderDate") %></td> 
      <td><%=rs.getString("deliveryDate") %></td> 
      <td><%=rs.getString("paymentMethod") %></td>
      <td><%=rs.getString("status") %></td> 
    </tr>
<%
  }
} catch(Exception e) {
  out.println(e);
}%>          
  </tbody>
</table>
<br>
<br>
<br>

</body>
</html>