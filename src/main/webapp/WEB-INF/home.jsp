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
		<h1>
			Welcome,
			<c:out value="${user.firstName}!"/>
			
			
		</h1>

		<h2 align="center">All Books:</h2>
		<a href="/logout">logout</a> <a href="/addIndex">+ Add my Book</a>

		<table class="styled-table">

			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Added</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="book" items="${books}">

				<tr>
					<td><c:out value="${book.id}" /></td>
					<td><a href="books/${book.id}"><c:out value="${book.title}" /></a></td>					
					<td><c:out value="(by ${book.user.firstName} ${book.user.lastName})" /></td>
					<c:if test="${user==book.user}">
							<td><a href="books/${book.id}/edit">edit</a> <a href="books/${book.id}/delete">delete</a></td>
						</c:if>
						
						<c:if test="${user!=book.user}">
						    <td>
						        <c:choose>
						            <c:when test="${book.favorite == null}">
						                <a href="books/${book.id}/favorite">favorite</a>
						            </c:when>
						            <c:otherwise>
						                <a href="javascript:void(0);" onclick="showAlert()">favorite</a>
						            </c:otherwise>
						        </c:choose>
						    </td>
						</c:if>		
						
					</tr>
					
					<c:set var="userName" value="${user.firstName}" />
					<script>
					    var userName = '<c:out value="${userName}" />';
					    
					    function showAlert() {
					        alert('This book is already favored ' + userName + '.');
					    }
					</script>							
			</c:forEach>

		</table>
		
		<h2 align="center">
					<c:out value="(${user.firstName})"/>
					 Favorite Books
		</h2>
		
		<table class="styled-table">
		
			<tr>
				<th>ID</th>
				<th>Title</th>
				<!-- <th>Author Name</th> -->
				<th>Added</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="book" items="${books}">
			
				<c:if test="${user.id==book.favorite.id}">
					<tr>
						<td><c:out value="${book.id}"/></td>
						<td><a href="books/${book.id}"><c:out value="${book.title}"/></a></td>						
						<td><c:out value="(by ${book.user.firstName} ${book.user.lastName})"/></td>
						<c:if test="${user!=book.user}">
							<td><a href="books/${book.id}/return">unfavored</a></td>
						</c:if>
					</tr>
				</c:if>
				
			</c:forEach>
		
		</table>


	</div>

</body>
</html>

