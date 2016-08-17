<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/home-style.jsp"/>
    </head>
    <body>
    <body ng-app="home__app" ng-controller="home__controller">
        <jsp:include page="../includes/menubar.jsp"/>   
        <jsp:include page="includes/header.jsp"/><%-- --- Header --- --%>
        <jsp:include page="includes/filter.jsp"/>
        <jsp:include page="includes/about.jsp"/>    
        <jsp:include page="includes/guidline.jsp"/>
        <jsp:include page="../includes/footer.jsp"/><%-- --- Footer --- --%>
        <jsp:include page="../includes/home-script.jsp"/> <%-- --- include script template --- --%>        
        <jsp:include page="../utility/loading.jsp"/><%-- --- Loading path --- --%>  
        <script src="../../../../resources/scripts/utility/configuration.js" type="text/javascript"></script>
        <script src="../../../../resources/static/angular/angular.js" type="text/javascript"></script>
        <script src="../../../../resources/scripts/frontend/angular/home.js" type="text/javascript"></script>
    </body>
</html>