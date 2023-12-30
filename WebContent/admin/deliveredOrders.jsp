<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file = "adminFooter.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Delivered Orders</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;"><img src="../icon/delornew.png" alt="delornew">  Delivered Orders </div>

<table id="customers">
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
              <th scope="col">Status</th>
          </tr>
        <%
        try
        {
        	Connection con = ConnectionProvider.getCon();
        	String query = "select * from cart inner join product where cart.product_id = product.id and cart.orderDate is not NULL and cart.status = ?";
        	PreparedStatement pst = con.prepareStatement(query);
        	pst.setString(1, "Delivered");
        	ResultSet rs = pst.executeQuery();
        	while(rs.next())
        	{

         %>
       
          <tr>
          <td><%=rs.getString("mobileNumber") %></td>
            <td><%=rs.getString("name") %></td>
            <td><%=rs.getString("quantity")%></td>
            <td><%=rs.getString("total") %>  </td>
                <td><%=rs.getString("address") %></td>
               <td><%=rs.getString("city") %></td>
             <td><%=rs.getString("orderDate") %></td>
              <td><%=rs.getString("deliveryDate") %></td>
               <td><%=rs.getString("paymentMethod") %></td>
               <td><%=rs.getString("transactionId") %></td>
               <td><%=rs.getString("status") %></td>
              </tr>
         <%}
        }
        	catch(Exception e)
        	{
        		
        		System.out.println(e);
        	}%>
        </table>
      <br>
      <br>
      <br>

</body>
</html>
