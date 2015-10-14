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

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Bootstrap Login Form</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet">
</head>
<body>
<div class="col-lg-8">
<%@ include file="../templates/userheader.jsp"%>
</div>
<form:form method="post" modelAttribute="user" id="form">
	<div class="container-fluid">
		<section class="container">
		<div  class="container-page">
			<div class="col-md-4 col-md-offset-4" >
				<h3 class="dark-grey">Registration</h3>

				<div class="form-group col-lg-12">
					<label>Username</label> <input path="name" name="name" class="form-control"
						id="name" value="">
				</div>

				<div class="form-group col-lg-12">
					<label>Password</label> <input type="password" name="password"
						class="form-control" id="password" value="">
				</div>

				

				<div class="form-group col-lg-6">
					<label>Email Address</label> <input type="email" name="email"
						class="form-control" id="email" value="">
				</div>

				
				

				<div class="col-sm-12">
					<input type="checkbox" class="checkbox" />Send notifications to
					this email
				</div>

				<div class="col-sm-12">
					<button type="submit" class="btn btn-primary">Register</button>
				</div>
				

				
			</div>


		</div>
		</section>
		</div>
		</form:form>
</body>
</html>