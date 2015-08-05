<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="org.hibernate.hql.internal.ast.util.ASTUtil.IncludePredicate"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>

<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<meta name="description" content="">
				<meta name="author" content="UMUT">

					<title>Blog Post - Start Bootstrap Template</title> <!-- Bootstrap core CSS -->
					<link
						href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css"
						rel="stylesheet">

						<!-- Custom styles for this template -->
						<link
							href="${pageContext.request.contextPath}/resources/assets/css/main.css"
							rel="stylesheet">
							<link rel="stylesheet"
								href="${pageContext.request.contextPath}/resources/assets/css/icomoon.css">
								<link
									href="${pageContext.request.contextPath}/resources/assets/css/animate-custom.css"
									rel="stylesheet">


									<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
									<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
									<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
									<title>Bootstrap Example</title>

									<meta name="viewport"
										content="width=device-width, initial-scale=1">
										<link rel="stylesheet"
											href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
											<script
												src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
											<script
												src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>
	<%@ include file="templates/header.jsp"%>
	<br> </br>



	<section class="section-divider textdivider divider3">
	<div class="container">

		<div class="row">

			<!-- Blog Post Content Column -->
			<div class="col-lg-8">

				<%@ include file="templates/post.jsp"%>
			
				

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

				<%@ include file="templates/category.jsp"%>

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

			<%@ include file="templates/footer.jsp"%>
	</div>
	<!-- /.container --> <!-- jQuery --> <script
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