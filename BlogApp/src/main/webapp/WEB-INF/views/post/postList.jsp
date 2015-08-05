<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap Core CSS -->
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
	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>Post Title</th>
				<th>Kategori</th>
				<th>Gönderilme Tarihi</th>
				<th>İşlemler</th>
				<th>Text</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${postList}" var="item">
				<tr>
					<td>${item.name}</td>
					<td>${item.category.name}</td>
					<td>${item.date}</td>
					<td><a href="<c:url value="/post/delete/${item.id}"></c:url>">Sil</a>
					<a
						href="<c:url value="/post//findOneById/${item.id}"></c:url>">Edit</a></td>
					<td>${item.postText}</td>
					
				</tr>
			</c:forEach>
			<tr>
				<td><a href="<c:url value="/post/deleteAll"></c:url>">Hepsini
						Sil</a></td>
			</tr>
			<tr>

			</tr>
		</tbody>
	</table>
</body>
</html>