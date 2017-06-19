<%Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" import="java.sql.*" errorPage=""%>
<%@page import = "java.sql.*"%>
<%

Connection con;
PreparedStatement st;
ResultSet rs;

try{

	String email = request.getParameter("email").trim();
	String pwd = request.getParameter("pwd").trim();

	String sql = "SELECT * FROM users WHERE email = '"+ email+"' AND password = '"+ pwd+"'";

	boolean verify = false;
	String msg;

	con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/burger" , "root", "");
	st = (PreparedStatement) con.prepareStatement(sql);
	rs = st.executeQuery();
	boolean recordExits = rs.absolute(1);

	if(recordExits == true){
		verify = true;
	}

	if (verify == true){
		response.sendRedirect("home.jsp");
	}
	else{
	    msg = "Invalid Login";
		response.sendRedirect("index.jsp?msg");
	}
	con.close();

} 
catch(Exception ex){
	out.write("An error occured: " + ex.getMessage());
}
%>