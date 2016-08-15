<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="angularTable">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/home-style.jsp"/>
    </head>
    <body ng-controller="listdata">
        <jsp:include page="includes/menubar.jsp"/>
        <jsp:include page="includes/header.jsp"/>
    <sectio class="text-left content">
        <div class="col-2 container">
            <jsp:include page="includes/search-session.jsp"/>
            <jsp:include page="includes/expert-list.jsp"/>    
        </div>
    </section>


    <jsp:include page="../utility/loading.jsp"/>
    <jsp:include page="../includes/footer.jsp"/>
    <jsp:include page="../includes/home-script.jsp"/> 

    <%-- Pagination --%>
    <script src="../../../../resources/scripts/frontend/configuration.js" type="text/javascript"></script>
    <script src="../../../../resources/static/angular/angular.js" type="text/javascript"></script>
    <script src="../../../../resources/static/libs/dirPagination.js" type="text/javascript"></script>    
    <script src="../../../../resources/scripts/frontend/filter.js" type="text/javascript"></script>
</body>
</html>