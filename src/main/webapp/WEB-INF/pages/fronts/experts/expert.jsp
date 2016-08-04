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
    <section class="" style="background-color: rgba(198, 199, 199, 1);padding: 115px 0 23px 0;">
        <div class="container">
            <div class="text-center">
                <div class="col-sm-10 search--expert">
                    <input type="text" class="form-control expert--search-box animated fadeInUp delay" placeholder="Search for skill...">
                </div>
                <div class="search--expert">
                    <button class="mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay btn--search--expert">Search</button>
                </div>
            </div>
        </div>
    </section>

    <section class="text-left content-2" style="padding-top: 0px;z-index: -9">
        <div class="container">
            <div class="col-sm-6">
                <h2 class="heading">RESULT</h2>
                <p class="mbr-reviews__up__p mbr-reviews__up__text">There are 7 expert founded.</p>
            </div>
            <div class="col-lg-6">

            </div>
        </div>
    </section>
<%--
    <div id="myModal" class="modal">
        <div>
            <div class="col-sm-4 col-sm-offset-4" style="opacity: 0.9;background-color: white;padding: 20px 20px 20px 20px;">
                <span class="close">×</span>
                <form>                        
                    <input type="email" class="form-control login--control animated fadeInUp delay" placeholder="Email or Username"/>
                    <input type="password" class="form-control login--control animated fadeInUp delay" placeholder="Password"/>
                    <a class="mbr-buttons__btn btn btn-lg btn-default login--control animated fadeInUp delay" href="${pageContext.request.contextPath}/expert">Sign In</a>
                    <span><input type="checkbox"> Remember me <br>Not a member ? <a href="">Sign Up</a></span>                        
                </form>
            </div>
        </div>
    </div>
--%>

    <section>
        <div class="container" style="padding-bottom: 100px">
            <jsp:include page="includes/search-tool.jsp"/>
            <jsp:include page="includes/expert-list.jsp"/>  
        </div>
    </section>
    <jsp:include page="../includes/footer.jsp"/>
    <jsp:include page="../includes/home-script.jsp"/>
    <script>
        var modal = document.getElementById('myModal');
        var btn = document.getElementsByClassName("btn--view--result")[2];
        var span = document.getElementsByClassName("close")[0];
        btn.onclick = function () {
            modal.style.display = "block";
        }
        $(document).ready(function () {
            $(".btn--view--result").click(function () {
                $("#myModal").style(display = "block";
            })
            $(".close").click(function () {
                modal.style.display = "none";
            })
        })
        span.onclick = function () {
            modal.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <script src="../../../../resources/scripts/frontend/expert.js" type="text/javascript"></script>
</body>
</html>