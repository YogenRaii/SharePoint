<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu">
			<li class="active"><a class=""
				href="${pageContext.servletContext.contextPath}/cms/loginsuccess">
					<i class="glyphicon glyphicon-th-large"></i> <span>Dashboard</span>
			</a></li>
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a class="" ui-sref="languages"> <i
						class="fa fa-desktop"></i>Languages
				</a></li>
				<li class="sub-menu" class="dropdown"><a href="javascript:;"
					data-toggle="dropdown" class=""> <i class="fa fa-book"></i>Tutorials
				</a>
					<ul class="sub" role="menu">
						<c:forEach items="${languages}" var="language">
							<li><a ui-sref="chapter({languageId:${language.id}})">${language.name}</a></li>
						</c:forEach>
					</ul></li>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_WRITER')">
				<li class="sub-menu" class="dropdown"><a href="javascript:;"
					data-toggle="dropdown" class=""> <i class="fa fa-book"></i>Tutorials
				</a>
					<ul class="sub" role="menu">
						<c:forEach items="${loginUser.languages}" var="language">
									<li><a ui-sref="chapter({languageId:${language.id}})">${language.name}</a></li>
								
						</c:forEach>
					</ul></li>
			</security:authorize>

			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a class="" ui-sref="writers"> <i class="icon_piechart"></i>
						<span>Writers</span>
				</a></li>

				<li><a class="" ui-sref="inbox"> <i class="fa fa-envelope"></i>
						<span>Messages</span>
				</a></li>
			</security:authorize>
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('.sidebar-menu').on('click', '> li', function(e) {
			var $this = $(this);
			if ($this.hasClass('active')) {
				$this.removeClass('active');
			} else {
				$this.addClass('active');
			}

		});
	});
</script>