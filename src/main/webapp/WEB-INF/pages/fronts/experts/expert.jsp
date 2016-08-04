<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/home-style.jsp"/>
    </head>
    <body ng-app="expert__app" ng-controller="expert__controller">
        <jsp:include page="includes/menubar.jsp"/>
        <jsp:include page="includes/header.jsp"/>
    <section>
        <div class="container" style="padding-bottom: 100px">
            <jsp:include page="includes/search-session.jsp"/>
            <jsp:include page="includes/expert-list.jsp"/>  
        </div>
    </section>
    <jsp:include page="../includes/footer.jsp"/>
    <jsp:include page="../includes/home-script.jsp"/>    
    <script src="../../../../resources/scripts/frontend/expert.js" type="text/javascript"></script>
    <script src="../../../../resources/scripts/frontend/configuration.js" type="text/javascript"></script>
</body>
</html>