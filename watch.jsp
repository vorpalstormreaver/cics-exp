<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>OLTP DEVOPS Portal</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="index.html" class="logo">CICS</a>
					<nav id="nav">
						<a href="index.html">Home</a>
						<a href="create.jsp">Create</a>
						<a href="watch.jsp">Watch</a>
						<a href="approve.jsp">Approve</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Three -->
			<section id="three" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Nunc Dignissim</h2>
						<p>Aliquam erat volutpat nam dui </p>
					</header>
					 <P>
<%
PreparedStatement ps = null;
Connection con;
String columnName;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "qwerty1234");
	ps=(PreparedStatement)con.prepareStatement("SELECT * from world.country where 								      region='Middle East'");
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rsmd = rs.getMetaData();
	int fieldsCount = rsmd.getColumnCount();
	if (fieldsCount > 0)
	{
		out.println("<table>");
	        for (int i = 1; i <= fieldsCount; i++)
		{
			columnName = rsmd.getColumnName(i);
			out.println("<TH>" + columnName + "</TH>");	
		}
	}
	while(rs.next())
	{
	        out.println("<TR>");
		for (int i = 1; i <= fieldsCount; i++) {
			columnName = rsmd.getColumnName(i);		
   	        	int type = rsmd.getColumnType(i);
			if (type == Types.VARCHAR || type == Types.CHAR) {
				out.println("<TD>"+rs.getString(columnName)+"</TD>");
			}
			else if (type == Types.INTEGER) {
				out.println("<TD>"+rs.getInt(columnName)+"</TD>");
			}
			else out.println("<TD>"+rs.getString(columnName)+"</TD>");
	        }
		out.println("</TR>");
        }
	out.println("</table>");
} catch (SQLException e ) {
        out.println(e);
} finally {
        if (ps != null) {
		ps.close();	
	}
}
  
%></p>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>