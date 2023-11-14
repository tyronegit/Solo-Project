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
<title>Book Club</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
	<div class="container">

		<h1>Change your Entry</h1>

		<a href="/home">Return to Books</a>

		<div class="container formrow-cont">
			<form:form action="/books/${book.id}/edit" modelAttribute="book"
				class="form" method="put">

				<div class="form-row">
					<form:errors path="title" class="error" />
					<form:label for="title" path="title">Title:</form:label>
					<form:input type="text" path="title"
						class="form-control text-input" />
				</div>


				<div class="form-row">
					<form:errors path="description" class="error" />
					<form:label for="description" path="description">Description:</form:label>
					<form:textarea path="description" class="form-control text-input tarea-cont" />
				</div>

				<div class="form-row">
					<form:errors path="user" class="error" />
					<form:input type="hidden" path="user" value="${user.id}"
						class="form-control text-input" />
				</div>

				<div class="form-row ">
					<p><input type="submit" value="Edit"
						class="btn-primary styled-input" /></p>
				</div>

			</form:form>


		</div>

	</div>

</body>
</html>

