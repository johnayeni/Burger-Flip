<%Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@page import = "java.sql.*"%>
<%@page import = "javax.swing.*"%>
<%@page import = "java.util.Date"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- main stylesheet -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/home.css">
    <title>Burger Flip | Home</title>
</head>
<div id="mySidenav" class="sidenav">
    <a href="index.jsp" id="logout-side-nav">Logout</a>
</div>
<div class="container">
    <a href="index.jsp"><h3>Admin Panel</h3></a>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">Employees</a></li>
        <li><a data-toggle="tab" href="#menu1">Users</a></li>
        <li><a data-toggle="tab" href="#menu2">Burgers</a></li>
        <li><a data-toggle="tab" href="#menu3">Orders</a></li>
        <li><a data-toggle="tab" href="#menu4">Add Burger</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
            <h3>Employees</h3>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Date Registered</th>
                    </tr>
                    </thead>
                    <tbody>
<%
try{
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/burger", "root", "");
Statement st = (Statement) con.createStatement();
String select = "SELECT * FROM users WHERE role = 'employee'";
ResultSet rs = st.executeQuery(select);
while(rs.next())
{
    String id = rs.getString("id");
    String name = rs.getString("name");
    String email = rs.getString("email");
out.write("<tr>");
out.write("<td>"+ id +"</td>");
out.write("<td>"+ name +"</td>");
out.write("<td>"+ email +"</td>");
Date date = new Date();
date = rs.getDate("reg_date");
out.write("<td>"+ date +"</td>");
out.write("</tr>");
}
con.close();

}
catch(Exception ex){
out.write("Error 404");
}
%>
                   </tbody>
                </table>
            </div>
        </div>
        <div id="menu1" class="tab-pane fade">
            <h3>Users</h3>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Date Registered</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        try{
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/burger", "root", "");
                            Statement st = (Statement) con.createStatement();
                            String select = "SELECT * FROM users WHERE role = 'customer' ";
                            ResultSet rs = st.executeQuery(select);
                            while(rs.next())
                            {
                                String id = rs.getString("id");
                                String name = rs.getString("name");
                                String email = rs.getString("email");
                                out.write("<tr>");
                                out.write("<td>"+ id +"</td>");
                                out.write("<td>"+ name +"</td>");
                                out.write("<td>"+ email +"</td>");
                                Date date = new Date();
                                date = rs.getDate("reg_date");
                                out.write("<td>"+ date +"</td>");
                                out.write("</tr>");
                            }
                            con.close();

                        }
                        catch(Exception ex){
                            out.write("Error 404");
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="menu2" class="tab-pane fade">
            <h3>Burgers</h3>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Date Registered</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        try{
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/burger", "root", "");
                            Statement st = (Statement) con.createStatement();
                            String select = "SELECT * FROM burger";
                            ResultSet rs = st.executeQuery(select);
                            while(rs.next())
                            {
                                String id = rs.getString("id");
                                String name = rs.getString("burgerName");
                                String des = rs.getString("burgerDescription");
                                String price = rs.getString("burgerPrice");
                                out.write("<tr>");
                                out.write("<td>"+ id +"</td>");
                                out.write("<td>"+ name +"</td>");
                                out.write("<td>"+ des +"</td>");
                                out.write("<td>"+ price +"</td>");
                                Date date = new Date();
                                date = rs.getDate("reg_date");
                                out.write("<td>"+ date +"</td>");
                                out.write("</tr>");
                            }
                            con.close();

                        }
                        catch(Exception ex){
                            out.write("Error 404");
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="menu3" class="tab-pane fade">
            <h3>Orders</h3>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>user_id</th>
                        <th>Order Placed</th>
                        <th>No of Items</th>
                        <th>Delivery Address</th>
                        <th>Price</th>
                        <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        try{
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/burger", "root", "");
                            Statement st = (Statement) con.createStatement();
                            String select = "SELECT * FROM orders";
                            ResultSet rs = st.executeQuery(select);
                            while(rs.next())
                            {
                                String id = rs.getString("id");
                                String user_id = rs.getString("user_id");
                                String order = rs.getString("orderPlaced");
                                String count = rs.getString("itemCount");
                                String address = rs.getString("deliveryAddress");
                                String price = rs.getString("price");
                                out.write("<tr>");
                                out.write("<td>"+ id +"</td>");
                                out.write("<td>"+ user_id +"</td>");
                                out.write("<td>"+ order +"</td>");
                                out.write("<td>"+ count +"</td>");
                                out.write("<td>"+ address +"</td>");
                                out.write("<td>"+ price +"</td>");
                                Date date = new Date();
                            }
                            con.close();

                        }
                        catch(Exception ex){
                            out.write("Error 404");
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="menu4" class="tab-pane fade">
            <h3>Add New Burger</h3>
            <form action="add-burger.jsp" method="POST">
                <div class="form-group">
                    <label for="burger-name">Burger Name:</label>
                    <input type="text" class="form-control" name="burger-name" required autofocus>
                </div>
                <div class="form-group">
                    <label for="burger-description">Burger Description:</label>
                    <input type="text" class="form-control" name="burger-description" required>
                </div>
                <div class="form-group">
                    <label for="burger-price">Burger Price:</label>
                    <input type="text" class="form-control" name="burger-price" required>
                </div>
                <div class="form-group">
                    <label for="burger-picture">Burger Picture:</label>
                    <input type="file" class="form-control" name="burger-picture" required>
                </div>
                <button type="submit" class="btn btn-block btn-danger">Submit</button>
            </form>
        </div>
    </div>
</div>

<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/add-to-cart.js"></script>
</html>