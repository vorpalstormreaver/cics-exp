<!DOCTYPE HTML>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html dir="rtl">
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

			<!-- Banner -->
			<section id="banner">
				<h1>OLTP DEVOPS</h1>
				<p>לעבור לייצור בצורה המהירה והבטוחה!</p>
			</section>

		<!-- Three -->
			<section id="three" class="wrapper">
				<div class="inner">
					<%
								String reqDisplay = "Performance ";
								int request_length = 0;
								Enumeration<String> parameterNames = request.getParameterNames();

								while(parameterNames.hasMoreElements()) {
									request_length = request_length + 1;
									String paramName = (String)parameterNames.nextElement();
									reqDisplay = reqDisplay + "<b>" + paramName + ":</b> "+request.getParameter(paramName) + " <t></t>";
								}

								// Get request id. it must be numeric or it is ignored
								String reqidVal = request.getParameter("reqid");
								if (reqidVal==null) {reqidVal = "";}
								try {
									reqidVal = String.valueOf(Integer.parseInt(reqidVal));
								} catch (NumberFormatException ex) {
									reqidVal = "";
								}
					%>
					<p>
						<form action="create.jsp" method="POST">
							<table><tr>
								<td>מספר העברה ליצור</td>
								<td><input type="text" name="reqid" value="<%=reqidVal%>"></td>
								<td><input type="submit" value="הצג" /></td>
										</tr>
							<% if(request_length>0) {%><tr><td>סטאטוס הבקשה</td><td>ממתינה לאישור</td><td></td>
							<%} %><br />
						</table>
						</form>
					</p>


	<p><%
			if(request_length>0) {



					PreparedStatement ps = null;
					Connection con;
					String columnName;
					try {
						Class.forName("com.mysql.jdbc.Driver");
						con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "qwerty1234");
						ps=(PreparedStatement)con.prepareStatement("SELECT * FROM devops.requests where reqid = "+reqidVal);
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

					%>
					<section id="two" class="wrapper style1 special">
				    <div class="inner">
				      <header>
				        <p align-center><img src="images/lightgreen.png" alt="Person 1" /></p>
				        <h2>הטרנזקציות שלך נראות משגע</h2>
				        <p>בהצלחה בהעברה לייצור</p>
				      </header>

				    </div>
				  </section>
					<%
				}
	%></p>




					<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
					<div class="flex flex-2">
						<article>
							<div class="image fit">
								<img src="images/pic01.jpg" alt="Pic 01" />
							</div>
							<header>
								<h3>Praesent placerat magna</h3>
							</header>
							<p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor lorem ipsum.</p>
							<footer>
								<a href="#" class="button special">More</a>
							</footer>
						</article>
						<article>
							<div class="image fit">
								<img src="images/pic02.jpg" alt="Pic 02" />
							</div>
							<header>
								<h3>Fusce pellentesque tempus</h3>
							</header>
							<p>Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna non comodo sodales tempus.</p>
							<footer>
								<a href="#" class="button special">More</a>
							</footer>
						</article>
					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
						<div class="copyright">
							&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
						</div>
						<ul class="icons">
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-linkedin"><span class="label">linkedIn</span></a></li>
							<li><a href="#" class="icon fa-pinterest-p"><span class="label">Pinterest</span></a></li>
							<li><a href="#" class="icon fa-vimeo"><span class="label">Vimeo</span></a></li>
						</ul>
					</div>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
