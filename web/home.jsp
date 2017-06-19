<%Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@page import = "java.sql.*"%>
<%@page import = "javax.swing.*"%>
<%@page import = "java.util.*"%>
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
    <a href="index.jsp"><h3>Burger Flip</h3></a>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">Order</a></li>
        <li><a data-toggle="tab" href="#menu1">Check Out: Ordered Items <span class="badge" id="count">0</span></a></li>
        <li><a data-toggle="tab" href="#menu2">Help</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
            <h3 class="text-center">AVAILABLE BURGERS</h3>
<%
    try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/burger", "root", "");
        Statement st = (Statement) con.createStatement();
        String select = "SELECT * FROM burger";
        ResultSet rs = st.executeQuery(select);
        while(rs.next())
        {
            String pic = rs.getString("burgerPicture");
            out.write("<div class='card' style='width: 70%;height: 90%;margin: 20px;align-content: center;'>");
                out.write("<img src=\""+pic+"\" alt='Burger picture' class='img-thumbnail' style='width:100%;height: 60%;'>");
                out.write("<div class='container'>");
                    out.write("<h4><b id='burger-name'>"+rs.getString("burgerName")+"</b></h4>");
                    out.write("<p id='burger-price'>Item Price: $"+rs.getInt("burgerPrice")+"</p>");
                    out.write("<button class='btn btn-default btn-success add'>Add To Cart</button>");
                out.write("</div>");
            out.write("</div>");

        }
        con.close();

    }
    catch(Exception ex){
        out.write("Error 404");
    }
%>
        </div>
        <div id="menu1" class="tab-pane fade">
            <h3>Check Out</h3>
            <form action="order.jsp" method="POST">
                <div class="form-group">
                    <label for="order">Items: </label>
                    <input class="form-control"  type="text" name="order"  id="order"  disabled required>
                </div>
                <div class="form-group">
                    <label for="totalprice">Total Price: </label>
                    <input class="form-control" type="text" name="totalprice" id="totalprice" value="0" disabled required>
                </div>
                <div class="form-group">
                    <label for="address">Delivery Address: </label>
                    <textarea class="form-control" rows="5" name="address" id="address" required></textarea>
                </div>
                <button type="submit" class="btn btn-block btn-success" id="checkout">Check Out</button>
            </form>
        </div>
        <div id="menu2" class="tab-pane fade">
            <h3>How to use this platform</h3>
            <p></p>
        </div>
    </div>
</div>


<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid" style="background-color: #434956;color: white !important;margin-top: 100px;">
    <h2 class="text-center" style="color: white !important">CONTACT US</h2>
    <div class="row">
        <div class="col-sm-5">
            <p>Contact us and we'll get back to you within 24 hours.</p>
            <p><span class="glyphicon glyphicon-map-marker"></span> Lagos, NG</p>
            <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
            <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
        </div>
    </div>
</div>
<footer class="container-fluid text-center" style="background-color: black;">
    <p>&copy 2017 Burger Flip</p>
</footer>

<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/add-to-cart.js"></script>
</html>