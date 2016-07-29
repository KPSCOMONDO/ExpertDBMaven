<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/home-style.jsp"/>
    </head>
    <body>
        <jsp:include page="includes/menubar.jsp"/>

    <section class="content-2" id="features1-42" style="background-color: rgb(255, 255, 255);">
        <div class="container">
            <div class="row"> 
                <div class="content-2">
                    <div class="col-sm-10">
                        <input type="text" class="form-control expert--search-box" placeholder="Search for skill...">
                    </div>
                    <div class="col-sm-2">
                        <button class="mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay">Search</button>
                    </div>
                </div>
                <jsp:include page="includes/search-tool.jsp"/>
                <jsp:include page="includes/expert-list.jsp"/>                
            </div>
        </div>
    </section>
    <jsp:include page="../includes/footer.jsp"/>
    <jsp:include page="../includes/home-script.jsp"/>
</body>
</html>