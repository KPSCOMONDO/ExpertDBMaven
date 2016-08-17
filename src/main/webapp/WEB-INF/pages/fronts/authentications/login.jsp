<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title> 
        <jsp:include page="../includes/home-style.jsp"/>
    </head>
    <body class="mbr-section mbr-section--relative" style="background-image: url(/resources/static/assets/images/background.jpg);-webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;">
    <section>      
        <div class="mbr-section__container mbr-section__container--isolated container content-2 login--form">     
            <h1><strong>Expert Database</strong> Login Form</h1>
            <p>This will bring you to new page and you can view all information of expert.</p>
            <p><a href="${pageContext.request.contextPath}/"><i class="glyphicon glyphicon-arrow-left"></i> Go back</a></p>
            <div class="col-sm-5">
                <div  style="z-index: 99999;margin: 20px 20px 2px 20px;opacity: 0.8; background-color: white;z-index: -99;padding: 20px 20px 20px 20px">
                    <form id="frmLogin" method="post" action="">                        
                        <input type="text" name="username" class="form-control login--control animated fadeInUp delay" placeholder="Email or Username">
                        <input type="password" name="password" class="form-control login--control animated fadeInUp delay" placeholder="Password">
                        <input type="submit" class="mbr-buttons__btn btn btn-lg btn-default login--control animated fadeInUp delay" href="" value="Sign in ">                        
                        <span><input type="checkbox"> Remember me <br>Not a member ? <a href="">Sign Up</a></span><br>
                        <div class="text-center">
                            <span>-OR-</span>                            
                            <input type="submit" class="mbr-buttons__btn btn btn-lg btn-primary login--control animated fadeInUp delay" href="" value="Sign in using Facfebook">
                        </div>
                    </form>    
                </div>
            </div>           
        </div>                                                     
    </section>
    <script src="../../../../resources/static/jquery/jquery.js" type="text/javascript"></script>
    <script src="../../../../resources/scripts/utility/configuration.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("#frmLogin").submit(function (e) {
                e.preventDefault();
                $.ajax({
                    url: "${pageContext.request.contextPath}/login",
                    type: "POST",
                    data: $("#frmLogin").serialize(),
                    success: function (data) {
                        if (data == "User account is locked") {
                            alert(data);
                            APP_CACHE.set("LOGIN",false);
                        } else if (data == "User is disabled") {
                            alert(data);
                            APP_CACHE.set("LOGIN",false);
                        } else if (data == "Bad credentials") {
                            alert(data);
                            APP_CACHE.set("LOGIN",false);
                        } else{
                            APP_CACHE.set("LOGIN",true);                           
                            location.href = "${pageContext.request.contextPath}" + data;
                        }
                    },
                    error: function (err) {
                        console.log(err);
                    }
                });
            });
        });
    </script>

</body>
</html>