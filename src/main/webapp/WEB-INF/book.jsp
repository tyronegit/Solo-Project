<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import = "java.io.*,java.util.*" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details Page for Viewer</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
	<div class="container">
		<h1>
			<c:out value="${book.title}" />
		</h1>

		<h3>Book's Description:</h3>
		<a href="/home">Return to Books</a>

		<div class="container">
			<h4>				
				<c:out value="${book.user.firstName}'s " />
				Description:
			
			</h4>
			

			<p>
				<c:out value="${book.description}"/>
			</p>
			
		</div>
		Last updated on: <%= (new java.util.Date()).toLocaleString()%>
	</div>
</body>
</html>

