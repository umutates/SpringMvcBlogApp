<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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

						<li><a href="${pageContext.request.contextPath}/"
							class="smoothScroll">Home</a></li>
						<li><a href="#about" class="smoothScroll"> About</a></li>

						<li><a href="${pageContext.request.contextPath}/#blog" class="smoothScroll"> Blog</a></li>
						<sec:authorize access="isAnonymous()">
							<li class=""><a href="${pageContext.request.contextPath}/user/add">Sign Up</a></li>
							<li class=""><a
								href="${pageContext.request.contextPath}/login">Sign In</a></li>
						</sec:authorize>

						<sec:authorize access="hasRole('USER')">
							<li><a
								href="${pageContext.request.contextPath}/post/postList"
								class="smoothScroll">Admin</a></li>
						</sec:authorize>
					<!-- 						  <sec:authorize access="isAuthenticated()">
						                    <li class="dropdown">
						                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
						                           aria-expanded="false">Hosgeldin, ${firstName}  <span class="caret"></span></a>
						                        <ul class="dropdown-menu">

						                            <li><a href="#"><spring:message text="Yardim"></spring:message></a></li>
						                            <li><a href="#"><spring:message text="Ayarlar"></spring:message></a></li>
						                            <li><a href="/logout"><spring:message code="login.logout"></spring:message></a></li>
						                        </ul>
						                    </li>
						                </sec:authorize> -->
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>


</body>
</html>