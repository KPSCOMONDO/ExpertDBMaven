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

    <section  style="background-color: rgb(255, 255, 255);padding-top: 100px;">
        <div class="container">
            <h2 class="heading">SOME DEVELOPER IN OUR SITE</h2>
            <div class="text-center">
                <a href="" class="btn btn-default demo-category">TOP EXPERIENCE DEVELOPER</a>
                <a href="" class="btn btn-default demo-category">TOP RATE DEVELOPER</a>                     
                <a href="" class="btn btn-default demo-category">TOP SALARY DEVELOPER</a>
                <a href="" class="btn btn-default demo-category">TOP NEW DEVELOPER</a>                     
            </div>
        </div>
        <div class="content-2 col-5">           
            <div class="container">          
                <h3 ng-bind="btn1"></h3>
                <div class="row">
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h2>Sok Channy</h2>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group">
                                    <a href="${pageContext.request.contextPath}/expert/detail"" class="btn btn-default">VIEW DETAIL</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/ren.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h2>Ren Sothearin</h2>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group">
                                    <a href="${pageContext.request.contextPath}/expert/detail"" class="btn btn-default">VIEW DETAIL</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/polen.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h2>Polen So Cute</h2>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group">
                                    <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">VIEW DETAIL</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/dang.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h2>Dim Dang</h2>
                                    <h4>Scrapt everyt, Kosign</h4>
                                </div>
                                <p class="group"><a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">VIEW DETAIL</a></p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/mama.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h3>Sok Channy</h3>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group"><a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">VIEW DETAIL</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> 
    <jsp:include page="includes/about.jsp"/>
    <jsp:include page="includes/guidline.jsp"/>
    <jsp:include page="../includes/footer.jsp"/>
    <jsp:include page="../includes/home-script.jsp"/>
    <script src="../../../../resources/scripts/frontend/home.js" type="text/javascript"></script>
    <script src="../../../../resources/scripts/frontend/configuration.js" type="text/javascript"></script>
</body>
</html>