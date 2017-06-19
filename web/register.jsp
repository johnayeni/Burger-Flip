<%Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@page import = "java.sql.*"%>

<%
    String name, email, password;

    name = request.getParameter("name");
    email = request.getParameter("email");
    password = request.getParameter("pwd");

    String sql = "INSERT INTO users (name, email, password, role)VALUES ('"+name+"', '"+email+"', '"+password+"', 'customer')";
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