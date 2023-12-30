<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "adminHeader.jsp" %>
<%@include file = "adminFooter.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<style>
body {
  background-color:  rgb(192, 192, 192);
  color: black;
}
table {
  width: 100%;
  border-collapse: collapse;
}
table, th, td {
  border: 1px solid white;
}
th, td {
  padding: 15px;
  text-align: left;
}
tr:nth-child(even) {
  background-color: #1d1d1d;
}
tr:nth-child(odd) {
  background-color: #2b2b2b;
}
</style>
<title>Add New Product</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;"><img src="../icon/addproductnew.png" alt="addproductnew"> Add New Products</div>

<%
String msg = request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Product Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg)){
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id = 1;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from product");
	while(rs.next()){
		id = rs.getInt(1);
		id = id+1;
		
%>
 
<form action = "addNewProductAction.jsp" method = "post">
<h3 style="color: yellow;">Product ID: <%out.println(id); %></h3>
<input type = "hidden" name = "id" value = "<%out.println(id);%>"> 

<div class="left-div">
 <h3>Product Name</h3>
 <input class = "input-style" type = "text" name = "name" placeholder = "Product Name" required>
 
<hr>
</div>

<div class="right-div">
<h3>Product Category</h3>
 <input class = "input-style" type = "text" name = "category" placeholder = "Product Category" required>
<hr>
</div>

<div class="left-div">
<h3>Product Price</h3>
  <input class = "input-style" type = "number" name = "price" placeholder = "Product Price" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
  <select class = "input-style" name = "active">
  <option value = "Yes">In Stocks</option>
  <option value = "No">Out of Stocks</option>
  </select> 
<hr>
</div>
<center><button class="buton" style="width:150px; height:50px;" ><img src="../icon/save.png" alt="save">  Save </button></center>

</form>

<% 	}
}catch(Exception e){
	System.out.println(e);
}

%>
</body>
<br><br><br>
</body>
</html>