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
            <nav class="navbar navbar-default" >
                <div style="border: 2px #000000 solid" >
                    <div class="navbar-header" >
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button> 
                    </div>
                    <div class="collapse navbar-collapse row">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">TOP EXPERIENCE DEVELOPER</a></li>
                            <li><a href="#">TOP RATE DEVELOPER</a></li>                      
                            <li><a href="#">TOP SALARY DEVELOPER</a></li>
                            <li><a href="#">TOP NEW DEVELOPER</a></li>
                        </ul>                        
                    </div>
                </div>
            </nav>
        </div>
        <div class="content-2 col-4">
            <div class="container">
                <div class="row">
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h3>Sok Channy</h3>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group"><a href="https://mobirise.com/bootstrap-template/" class="btn btn-default">VIEW DETAIL</a></p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h3>Sok Channy</h3>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group"><a href="https://mobirise.com/bootstrap-template/" class="btn btn-default">VIEW DETAIL</a></p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h3>Sok Channy</h3>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group"><a href="https://mobirise.com/bootstrap-template/" class="btn btn-default">VIEW DETAIL</a></p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h3>Sok Channy</h3>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group"><a href="https://mobirise.com/bootstrap-template/" class="btn btn-default">VIEW DETAIL</a></p>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="thumbnail">
                            <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                            <div class="caption">
                                <div>
                                    <h3>Sok Channy</h3>
                                    <h4>Spring security, Kosign</h4>
                                </div>
                                <p class="group"><a href="https://mobirise.com/bootstrap-template/" class="btn btn-default">VIEW DETAIL</a></p>
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