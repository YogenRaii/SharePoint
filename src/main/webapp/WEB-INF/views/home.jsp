<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Header -->
<header>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <img class="img-responsive"
                     src="${pageContext.request.contextPath}/resources/front/img/profile.png"
                     alt="">
                <div class="intro-text">
                    <span class="name">Now Start Programming</span>
                    <hr class="star-light">
                    <span class="skills">Tutorials for different programming
						languages - Free! And always will be.</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- languages list section -->
<section id="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Tutorials</h2>
                <hr class="star-primary">
            </div>
        </div>
        <div class="row">
            <c:forEach items="${languages}" var="language">
                <div class="col-sm-3 portfolio-item">
                    <a href="<c:url value='${language.langId}'/>" class="portfolio-link">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img
                                src="${language.image}"
                                class="img-responsive logo" alt="">
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- end of languages list section -->
<jsp:include page="aboutUs.jsp"/>
<jsp:include page="contact.jsp"/>