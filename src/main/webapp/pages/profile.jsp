<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import = "com.model.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index!!</title>
<script src="https://kit.fontawesome.com/eed335ca78.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/profile.css">
</head>
<body>

<!-- accessing user session through login  -->
<%
User user = (User)session.getAttribute("user");
%>



	<header>
		<div class="navbar">
			<div class="logo">
				<div class="img">
					<i class="fa-solid fa-graduation-cap"></i>
				</div>
				<div class="text">
					<a href="index.jsp">ENotes</a>
				</div>
			</div>
			<div class="navlinks">
				<a href="Home.jsp">
					<div class="img">
						<i class="fa-solid fa-house"></i>
					</div>
					<div class="text">
						<h3>Home</h3>
					</div>
				</a> <a href="AddNotes.jsp">
					<div class="img">
						<i class="fa-solid fa-cart-plus"></i>
					</div>
					<div class="text">
						<h3>AddNotes</h3>
					</div>
				</a> <a href="ShowNotes.jsp">
					<div class="img">
						<i class="fa-solid fa-folder-open"></i>
					</div>
					<div class="text">
						<h3>ShowNotes</h3>
					</div>
				</a>
			</div>
			<div class="btn">
				</a> <a href="profile.jsp">
					<div class="img">
						<i class="fa-solid fa-folder-open"></i>
					</div>
					<div class="text">
						<h3><%=user.getName() %></h3>
					</div>
				</a>
				
				<form action="../LogOutServlet" method="post">
					<input type="submit" value = "LogOut">
				</form>
			</div>
		</div>
	</header>
	
	<div class="body">
	
	<!-- Displaying logined user information -->
		
		ID:<label><%=user.getId() %></label><br>
		Name:<label><%=user.getName() %></label><br>
		Email:<label><%=user.getEmail() %></label>
		
	</div>



</body>
</html>