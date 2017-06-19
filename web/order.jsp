<script>
    $(document).ready(function () {
        alert("Your Order was Successful!");
    });
</script>
<%Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@page import = "java.sql.*"%>

<%
    String order, price, address;

    order = request.getParameter("order");
    price = request.getParameter("totalprice");
    address = request.getParameter("address");
//    double p = Double.parseDouble(price);
//    int count = Integer.parseInt(price)/10;

    String sql = "INSERT INTO orders (orderPlaced, deliveryAddress, price)VALUES ('"+order+"','"+address+"', '"+price+"')";
    try{
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/burger" , "root", "");
        Statement st = (Statement) con.createStatement();
        st.executeUpdate(sql);
        con.setAutoCommit(true);
        response.sendRedirect("home.jsp");
    }
    catch (Exception ex){
        out.write(ex.getMessage());
    }
%>