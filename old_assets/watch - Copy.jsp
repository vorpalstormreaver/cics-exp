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
     <!--<TABLE BORDER=1 BGCOLOR="C0C0C0"> WIDTH=100 BGCOLOR="white"> -->
     <TABLE>
     <TH> <I>Name</I> </TH>
     <TH> <I>Code</I> </TH>
<%
PreparedStatement ps = null;
Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "qwerty1234");
	ps=(PreparedStatement)con.prepareStatement("SELECT * from world.country where 								      region='Middle East'");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		out.println("<TR> <TD ALIGN=LEFT>"+rs.getString("name")+"</TD>");
		out.println("<TD ALIGN=LEFT>"+rs.getString("code")+"</TD></TR>");
	}
} catch (SQLException e ) {
        out.println(e);
    } finally {
        if (ps != null) { ps.close(); }
    }
  
%></p>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>