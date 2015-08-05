<!-- Blog Search Well -->
<div class="row white centered">
					<img class="img img-circle" src="${pageContext.request.contextPath}/resources/assets/img/team/team01.jpg" height="120px" width="120px" alt="">
					<br>
					<h4 style="color:white" ><b>Umut Ates</b></h4>
					<a href="http://twitter.com/ttamttamm" class="icon icon-twitter"></a>
					<a href="http://facebook.com/umutatesss" img="<a href="#" class="icon icon-facebook"></a>
					<a href="https://www.linkedin.com/profile/view?id=AAIAAAvE3owBknuepG-frfEDlsZIBdj2V-92pno&trk=nav_responsive_tab_profile">
					<img class="img img-circle" src="${pageContext.request.contextPath}/resources/assets/img/chrome_linkedin.png" height="40px" width="40px" alt="" >
					</a>
				</div><!-- col-lg-3 -->


<!-- Kategorilerim-->

<div class="menu">
	<div class="menu-category list-group ">
		<div class="menu-category-name list-group-item active">
			<i class="icon-list"></i> Kategorilerim
		</div>
		<c:forEach items="${categoryList}" var="item">
		<h6>
		<a href="<c:url value="/findByCategory/${item.id}" ></c:url>" class="menu-item list-group-item">${item.name }<span
				class="badge">${item.categoryTotal}</span></a>
		</h6>
		</c:forEach>
	</div>
</div>

<!-- Sosyal Bağlantıalrı Alanı -->
<div class="menu">
	<div class="menu-category list-group ">
		<div class="menu-category-name list-group-item active">
			<i class="icon-list"></i> Ek alan
		</div>

	</div>
</div>