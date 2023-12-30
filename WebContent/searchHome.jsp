<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "header.jsp" %>
<%@include file = "footer.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;"><img src="icon/homenew.png" alt="homenew">  Home </div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Price</th>
            <th scope="col">Add to cart</th>
          </tr>
        </thead>
        <tbody>
          <%
          int z=0;
          try{
            String search = request.getParameter("search");
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from product where name like '%"+search+"%' or Category like '%"+search+"%' active='Yes' ");
                        while(rs.next())
          {
            z=1;
          %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(3) %>">Add to cart </a></td>
              </tr>
              <%
            }
          }
          catch(Exception e)
          {
        System.out.println(e);
          }  %>
        </tbody>
      </table>
<%if(z==0) {%>   
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
  <%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved by BTech Days</p>
      </div>

</body>
</html>