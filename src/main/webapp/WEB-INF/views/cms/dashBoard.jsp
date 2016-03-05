
<!DOCTYPE html>
<html lang="en"  ng-app="ngBoilerplate" ng-controller="AppCtrl">
<head >
<jsp:include page="headerInclude.jsp"></jsp:include>
<!-- it's stupid to have to load it here, but this is for the +1 button -->
    <script type="text/javascript" src="https://apis.google.com/js/plusone.js">
      { "parsetags": "explicit" }
    </script>
    <title ng-bind="pageTitle"></title>
</head>
<body >
	<!-- container section start -->
	<section id="container" class="">
		<!-- header start -->
		<jsp:include page="header.jsp" />
		<!--header end-->
		<!--sidebar start-->
		<jsp:include page="aside.jsp" />
		<!--sidebar end-->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="${pageContext.servletContext.contextPath}/cms/loginsuccess">Home</a></li>
							<li><i class="fa fa-laptop"></i>Dashboard</li>
						</ol>
					</div>
				</div>
				<div ui-view="main">
				
				</div>
				<!-- Today status end -->
				<div class="row">
	
				</div>
	
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->
	<jsp:include page="footerJs.jsp" />
</body>
</html>
