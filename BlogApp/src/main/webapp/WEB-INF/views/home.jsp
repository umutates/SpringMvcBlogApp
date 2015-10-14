<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page
	import="org.hibernate.hql.internal.ast.util.ASTUtil.IncludePredicate"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<html lang="tr">
<head>
<meta charset="utf-8">

					
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


<%@ include file="templates/userheader.jsp"%>
	


	<!-- ==== HEADERWRAP ==== -->
	<div class="container" id="headerwrap" name="home" style="height: 90vh;"  >
		<header class="clearfix">
		<h1>
			<span class="icon icon-shield"></span>
		</h1>
		<p>Umut Ates</p>
		<p>Blog</p>
		

		</header>
	</div>
	<!-- /headerwrap -->



	<section class="section-divider textdivider wall">
	<div class="container" name="blog" id="blog">

		<div class="row">

			<br></br> <br></br> <br></br>

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
						<form method="POST"
							action="${pageContext.request.contextPath}/Search">
							<input type="text" name="searchContext" id="searchContext"
								class="form-control"><span class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
						</form>
						</span>
					</div>
					<!-- /.input-group -->

				</div>


				<%@ include file="templates/category.jsp"%>



			</div>


		</div>
		<div class="col-lg-8">
		<!-- /.row -->
		<c:url var="firstUrl" value="/pages/1" />
		<c:url var="lastUrl" value="/pages/${page.totalPages}" />
		<c:url var="prevUrl" value="/pages/${currentIndex - 1}" />
		<c:url var="nextUrl" value="/pages/${currentIndex + 1}" />

		<nav>
		<ul class="pagination">
			<c:choose>
				<c:when test="${currentIndex == 1}">
					<li class="disabled"><a href="#">İlk Kayıt</a></li>
					<li class="disabled"><a href="#">Önceki</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${firstUrl}">İlk Kayıt</a></li>
					<li><a href="${prevUrl}">Önceki</a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
				<c:url var="pageUrl" value="/pages/${i}" />
				<c:choose>
					<c:when test="${i == currentIndex}">
						<li class="active"><a href="${pageUrl}"><c:out
									value="${i}" /></a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${currentIndex == page.totalPages}">
					<li class="disabled"><a href="#">&gt;</a></li>
					<li class="disabled"><a href="#">&gt;&gt;</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${nextUrl}">Sonraki</a></li>
					<li><a href="${lastUrl}">Son Kayıt</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
		</nav>
		</div>
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


	
	
	<section class="section-divider textdivider wall
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