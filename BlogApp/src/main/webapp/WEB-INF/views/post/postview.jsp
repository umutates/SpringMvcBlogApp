<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="org.hibernate.hql.internal.ast.util.ASTUtil.IncludePredicate"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="tr">
<head>
<meta charset="utf-8">


 <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/icomoon.css">
    <link href="${pageContext.request.contextPath}/resources/assets/css/animate-custom.css" rel="stylesheet">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<%@ include file="../templates/header.jsp"%>
	<br>
	</br>
	
	

		<section class="section-divider textdivider divider3">
			<div class="container">

		<div class="row">

			<!-- Blog Post Content Column -->
			<div class="col-lg-8">

				<%@ include file="../templates/postOne.jsp"%>

			</div>

			<!-- Blog Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Blog Search Well -->
				<div class="well">
					<h4>Arama</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>

					</div>
					<!-- /.input-group -->

				</div>
				<

				<%@ include file="../templates/category.jsp"%>

				<!-- Side Widget Well -->
				<div class="well">
					<h4>Side Widget Well</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Inventore, perspiciatis adipisci accusamus laudantium odit aliquam
						repellat tempore quos aspernatur vero.</p>
				</div>

			</div>

		</div>
		<!-- /.row -->

		<hr>

		<%@ include file="../templates/footer.jsp"%>
	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script
		src="<link href="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<link href="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
</body>

</html>