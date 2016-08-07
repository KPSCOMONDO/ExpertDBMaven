<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/back-style.jsp" />
    </head>
    <body  class="hold-transition skin-blue sidebar-mini">   
        <div class="wrapper">
            <jsp:include page="includes/menubar.jsp" /> 
            
            <jsp:include page="includes/sidbar-left.jsp" /> 
            
            <jsp:include page="includes/dashboard.jsp" /> 
        </div>
        <jsp:include page="../includes/back-script.jsp" />
        <script>
            
            $("#exp").click(function () {
                alert();
                $.ajax({
                    url: "${pageContext.request.contextPath}/WEB-INF/pages/backs/admins/data.html",
                    //url:"http://stackoverflow.com/questions/13778300/change-div-tag-content-dynamically-with-jsp-code",
                    cache: false
                }).done(function (html) {
                    console.log(html)
                });
            });
        </script>      
    </body>
</html>