<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- javascripts -->
<script
        src="${pageContext.request.contextPath}/resources/cms/js/jquery.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/cms/js/jquery-ui-1.10.4.min.js"></script>
<!-- bootstrap -->
<script
        src="${pageContext.request.contextPath}/resources/cms/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script
        src="${pageContext.request.contextPath}/resources/cms/js/jquery.scrollTo.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/cms/js/jquery.nicescroll.js"
        type="text/javascript"></script>
<!-- angular libaray -->
<%-- <script src="${pageContext.request.contextPath}/resources/front/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/front/js/angular-ui-router.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/cms/app/js/app.js"></script>
 --%>

<!-- compiled JavaScript -->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/angular/angular.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/placeholders/angular-placeholders-0.0.1-SNAPSHOT.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/angular-route/angular-route.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/angular-sanitize/angular-route.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/angular-sanitize/angular-sanitize.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/back/vendor/ng-file-upload/ng-file-upload.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/vendor/angular-ui-router/release/angular-ui-router.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/back/src/app/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/back/src/app/home/home.js"></script>
<script src="${pageContext.request.contextPath}/resources/back/src/app/languages/language.js"></script>
<script src="${pageContext.request.contextPath}/resources/back/src/app/chapterContent/chapterContent.js"></script>
<script src="${pageContext.request.contextPath}/resources/back/src/app/chapter/chapter.js"></script>
<script src="${pageContext.request.contextPath}/resources/back/src/app/content-writer/content-writer.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/src/common/plusOne/plusOne.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/back/build/templates-common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/back/build/templates-app.js"></script>
<script src="${pageContext.request.contextPath}/resources/back/build/assets/ckeditor/ckeditor.js"></script>


<!-- email -->
<script src='<c:url value="/resources/back/src/app/message/message.js" />'></script>
<script src='<c:url value="/resources/back/src/app/message/controller.js" />'></script>
<script src='<c:url value="/resources/back/src/app/message/factory.js" />'></script>
<script src='<c:url value="/resources/back/src/app/message/directives/EmailDrctv.js" />'></script>
<script src='<c:url value="/resources/back/src/app/message/directives/InboxDrctv.js" />'></script>
<link rel="stylesheet" href="/resources/back/build/assets/email.css">