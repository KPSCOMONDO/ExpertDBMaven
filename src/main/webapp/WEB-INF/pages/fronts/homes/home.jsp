<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/home-style.jsp"/>
    </head>
    <body ng-app="home__app" ng-controller="home__controller">       
        <jsp:include page="../includes/menubar.jsp"/>   
        <jsp:include page="includes/header.jsp"/>
        <jsp:include page="includes/filter.jsp"/>
        <jsp:include page="includes/statistic.jsp"/>        
        <jsp:include page="includes/guidline.jsp"/>
        <jsp:include page="includes/about.jsp"/>
        <jsp:include page="../includes/footer.jsp"/>
        <jsp:include page="../includes/home-script.jsp"/>
        <script src="../../../../resources/scripts/frontend/home.js" type="text/javascript"></script>
        <script src="../../../../resources/scripts/frontend/configuration.js" type="text/javascript"></script>
    </body>
</html>