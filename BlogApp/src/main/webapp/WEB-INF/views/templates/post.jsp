
<c:forEach items="${postList}" var="item">
	<div class="panel panel-default">
		
		<div class="panel-heading" >
		
			<h3 class="panel-title">
				<!-- Title -->
				<h4>
					<strong> <span class="black">
						${item.name}</span>
					</strong>
				</h4> 
				</h3>
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
					<a href="<c:url value="/findOneById/${item.id}" ></c:url>"> Devamini Oku..   </a>
		</div>
	</div>
</c:forEach>