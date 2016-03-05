<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- imports function tags from JSTL, prefix "fn"--%>

<div ng-app="mainApp">
	<!-- Header -->
	<header class="chapter">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="col-xs-6 col-md-4">
						<img class="img-responsive chapter-img" src="${language.image }"
							alt="">
					</div>
					<div class="col-xs-12 col-md-8 tagline">
						<div class="intro-text">
							<span class="skills">Learn <span class="language">${language.name}</span>
								Happily, And Quickly!
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<section class="chapters">
		<div class="container">
			<div class="col-xs-12 col-md-3">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title success" style="text-align: center;">
							<strong>Tutorials</strong>
						</h3>
					</div>
					<ul id="chapterList" data-toggle="dropdown" class="list-group  panel sidebar-menu">
						<li class="list-group-item active" ui-sref="chapter({'id':'${chapters[0].slug}',chapId:${chapters[0].id }})">
							<input type="radio" id="radio-${chapters[0].id}" name="category"
							class="radio-primary" value="${chapters[0].id}">${chapters[0].title}</li>
							<ul class="sub" role="menu">
								<c:forEach items="${chapters[0].chapterContents}" var="content">
									<li class= "sub-li" ui-sref="content({contentId:'${content.slug}',chapId:'${chapters[0].slug}'})"><i class="fa fa-chevron-right">  </i> ${content.title }</li>
								</c:forEach>
							
							</ul>
						<c:forEach items="${chapters}" var="chapter" begin="1">
							<c:set var="shortDesc" value="${fn:substring(chapter.title, 0, 27)}" />
							<li class="list-group-item sub-menu dropdown"
								ui-sref="chapter({'id':'${chapter.slug}',chapId:${chapter.id }})">
								<input type="radio" id="radio-${chapter.id}" name="category"
								class="radio-primary" value="${chapter.id}">${shortDesc}
							</li>
							<ul  class="sub" role="menu">
								<c:forEach items="${chapter.chapterContents}" var="content">
									<li class= "sub-li" ui-sref="content({contentId:'${content.slug}',chapId:'${chapter.slug}'})"><i class="fa fa-chevron-right">  </i> ${content.title }</li>
								</c:forEach>

							</ul>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-xs-12 col-md-8">
				<hr>
				<div>
					<p style="text-align: center;">Advertisement</p>
				</div>
				<hr>
				<div class="chapter-intro">
					<div ui-view="chapter-view"></div>
				</div>
				<div ui-view="content-view"></div>
				
				<div class="chapter-intro-first">
					<div>
						<h3>${chapters[0].title}</h3>
						<p>${chapters[0].description}</p>
					
					</div>
				</div>
				
			</div>

		</div>

	</section>

</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('.list-group').on('click', '> li', function(e) {
			var $this = $(this);
			$('.list-group').find('.active').removeClass('active');
			$this.addClass('active');
			$('.list-group').find('ul').addClass('sub');
			if($this.next('ul').hasClass('sub')){
				$this.next('ul').removeClass('sub')
			}else{
				$this.next('ul').addClass('sub')
			}
			
			$('.chapter-intro-first').addClass('sub');
			
		});
		//$('.list-group>.active').click();
	});
</script>

<style>
.list-group li.active {
	background-color: #e6e6ff;
	color: black;
	font-weight: bolder;
}

.list-group-item.active, .list-group-item.active:hover, .list-group-item.active:focus
{
	z-index: 2;
	color: inherit;
	background-color: #e6e6ff;;
	border-color: #2c3e50;
}

.sub {
	display: none;
}

.list-group li ul.sub {
	display: none;
}

.sub-li {
	font-style : italic;
	margin-bottom: 7px;
	margin-top: 7px;
	list-style: none;
}
</style>
