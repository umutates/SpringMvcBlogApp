<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Spring MVC Form Handling</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/blog-post.css"
	rel="stylesheet">
</head>
<body>

	<%@ include file="../templates/header.jsp"%>

<form:form method="post" modelAttribute="category" id="form">
	<table class="table table-bordered table-striped">
	
				<tbody>
					<tr>
						<td>Name</td>
						<td><form:input path="name" name="name" /></td>
					</tr>
					
					
						<tr>
						<td><button type="submit" class="button">Submit</button></td>
						<td>	<button type="button" class="button button-secondary"
							onclick="window.history.back();">Back</button></td>
					</tr>
				</tbody>
			</table>
</form:form>
</body>
</html>