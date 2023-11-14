<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login and Register</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
	<div class="container">

		<h1>Welcome to My Book Club!</h1>

	<h2 class="txr">Register</h2>

		<div class="container formrow-cont">
			<form:form action="/register" modelAttribute="newUser" class="form">

				<div class="form-row">
					<form:errors path="firstName" />
					<form:label for="firstName" path="firstName">First Name:</form:label>
					<form:input type="text" path="firstName" class="form-control text-input" />
				</div>
				
				<div class="form-row">
					<form:errors path="lastName" />
					<form:label for="lastName" path="lastName">Last Name:</form:label>
					<form:input type="text" path="lastName" class="form-control text-input" />
				</div>

				<div class="form-row">
					<form:errors path="email" />
					<form:label for="email" path="email">Email:</form:label>
					<form:input type="text" path="email" class="form-control text-input" />
				</div>

				<div class="form-row">
					<form:errors path="password" />
					<form:label for="password" path="password">Password:</form:label>
					<form:input type="password" path="password" class="form-control text-input" />
				</div>

				<div class="form-row">
					<form:errors path="confirm" />
					<form:label for="" path="confirm">Confirm:</form:label>
					<form:input type="password" path="confirm" class="form-control text-input" />
				</div>

				<div class="form-row">
					<p><input type="submit" value="Register" class="btn-primary styled-input" /></p>
				</div>

			</form:form>
		</div>

		<h2 class="txr">LogIn</h2>
		<p class="txr">(if already registered)</p>
		<div class="container formrow-cont2">
			<form:form action="/login" modelAttribute="newLogin" class="form">
				<div class="form-row">
					<form:errors path="email" />
					<form:label for="email" path="email">Email:</form:label>
					<form:input type="text" path="email" class="form-control text-input" />
				</div>

				<div>
					<form:errors path="password" />
					<form:label for="password" path="password">Password:</form:label>
					<form:input type="password" path="password" class="form-control text-input" />
				</div>

				<div class="form-row">
					<p><input type="submit" value="LogIn" class="btn-primary styled-input" /></p>
				</div>

			</form:form>
		</div>

	</div>
</body>
</html>

