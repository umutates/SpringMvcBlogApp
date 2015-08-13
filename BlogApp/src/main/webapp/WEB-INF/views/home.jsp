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


<body data-spy="scroll" data-offset="0" data-target="#navbar-main">


	<div id="navbar-main">
		<!-- Fixed navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon icon-shield"
							style="font-size: 30px; color: #3498db;"></span>
					</button>
					<a class="navbar-brand hidden-xs hidden-sm" href="#home"><span
						class="icon icon-shield" style="font-size: 18px; color: #3498db;"></span></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="#headerwrap" class="smoothScroll">Home</a></li>
						<li><a href="#about" class="smoothScroll"> About</a></li>

						<li><a href="#blog" class="smoothScroll"> Blog</a></li>
						<li><a href="#contact" class="smoothScroll"> Contact</a></li>
						<li><a href="post/postList" class="smoothScroll">Admin</a></li>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>



	<!-- ==== HEADERWRAP ==== -->
	<div class="container" id="headerwrap" name="home">
		<header class="clearfix">
		<h1>
			<span class="icon icon-shield"></span>
		</h1>
		<p>Umut Ates</p>
		<p>Blog</p>
		</header>
	</div>
	<!-- /headerwrap -->



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
	<br></br>
	<br></br>
	<section class="section-divider textdivider divider7
	">
	<div class="container" id="about" name="about">
		<br>
			<div class="container">
				<h1 class="centered">Profile</h1>
				<hr>
					<br> <br>
							<div class="row white centered">
								<img class="img img-circle"
									src="${pageContext.request.contextPath}/resources/assets/img/team/team01.jpg"
									height="120px" width="120px" alt=""> <br>
										<h4 style="color: white">
											<b>Umut Ates</b>
										</h4> <a href="http://twitter.com/ttamttamm"
										class="icon icon-twitter"></a> <a
										href="http://facebook.com/umutatesss"
										img="<a href="#" class="icon icon-facebook"></a>
					<a href="https://www.linkedin.com/profile/view?id=AAIAAAvE3owBknuepG-frfEDlsZIBdj2V-92pno&trk=nav_responsive_tab_profile">
					<img class="img img-circle" src="${pageContext.request.contextPath}/resources/assets/img/chrome_linkedin.png" height="40px" width="40px" alt="" >
					</a>
					
					
				</div><!-- col-lg-3 -->
	
	
	
	
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