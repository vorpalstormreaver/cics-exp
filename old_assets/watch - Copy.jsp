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
					<p>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="cics" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306"
     user="cics"  password="qwerty1234"/>
 
<sql:query dataSource="${cics}" var="result">
select Code,Name from world.country 
where Region = "Middle East"
</sql:query>
 
<table>
<tr>
   <th>Code</th>
   <th>Name</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.code}"/></td>
   <td><c:out value="${row.name}"/></td>
</tr>
</c:forEach>
</table>

					</p>
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