<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${postList}" var="item">
	<div class="panel panel-default">
		
		<div class="panel-heading" >
		
			<h3 class="panel-title">
				<!-- Title -->
				<h4>
					<strong> <span class="black">
						${item.name}
					</strong>
				</h4>
		</div>
		<div class="panel-body">
			<!-- Blog Post -->
			<!-- Date/Time -->
			<p>
			<div class="black" role="alert">
				<h6> <strong>Gonderilme
					Tarihi </strong> <span class="black">${item.date }</span> <BR>
				<span class="glyphicon glyphicon-tags"></span><strong>
					Kategori : </strong><span class="label label-primary">${item.category.name}</span>
					</h6>
			</div>
			</p>
			<hr>
			<!-- Post Content -->
			
	<strong> <span class="black">
						${item.postText}
					</strong>
					

		</div>
	</div>
</c:forEach>
</html>