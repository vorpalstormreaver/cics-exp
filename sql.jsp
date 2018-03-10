<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con;
Class.forName("com.mysql.jdbc.Driver");
con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "qwerty1234");
PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * from world.country");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String s1=rs.getString("name");
	String s2=rs.getString("code");
	out.println("Name "+s1+" Code "+s2+"<hr>");
}
%>
</body>
</html>