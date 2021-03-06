<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- dichiarazione ed istanziazione di una variabile -->
<jsp:useBean id="loginBean" scope="request" class="logic.LoginBean" />

<!--  mappare gli attributi di un oggetto sui campi del form -->
<jsp:setProperty name="loginBean" property="*" />

<!--  dove inviamo i dati di login -->
<%
if (request.getParameter("login") != null) {
	if (loginBean.validate()) {
%>
<jsp:forward page="Profilo.jsp" />
<%
} else {
%>
<div class="container mt-auto py-3">
	<span class="text-muted">Dati Errati</span>
</div>
<%
}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- versioni "minimizzate" di bootstrap -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/style.css" rel="stylesheet">
<style>
.half-top-buffer {
	margin-top: 50px;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

.center-block {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<!--  navbar -->
	<nav class="navbar navbar-expand navbar-dark bg-success"
		aria-label="PanLoginNavbar">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="../pictures/logo.png"
				width="30" height="30" alt=""> Pan
			</a>
		</div>
	</nav>

	<main
		class="d-flex justify-content-center align-items-center form-signin">
		<form action="Welcome.jsp" name="loginForm" method="POST">
			<img class="img-fluid center-block" src="../pictures/logo.png"
				alt="Responsive image" width="72" height="72">
			<h1 class="h3 mb-3 fw-normal text-center">Login</h1>

			<input type="text" id="username" name="username" class="form-control"
				placeholder="Username" required autofocus> <input
				type="password" id="password" name="password" class="form-control"
				placeholder="Password" required>

			<!-- La classe loginBean viene invocata quando viene ricevuto value="login" -->
			<button class="w-100 btn btn-lg btn-primary half-top-buffer"
				type="submit" name="login" value="login">Login</button>
		</form>
	</main>

</body>
</html>