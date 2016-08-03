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
                    <form>                        
                        <input type="email" class="form-control login--control animated fadeInUp delay" placeholder="Email or Username">
                        <input type="password" class="form-control login--control animated fadeInUp delay" placeholder="Password">
                        <a class="mbr-buttons__btn btn btn-lg btn-default login--control animated fadeInUp delay" href="${pageContext.request.contextPath}/expert">Sign In</a>
                        <span><input type="checkbox"> Remember me <br>Not a member ? <a href="">Sign Up</a></span>                        
                    </form>    
                </div>
            </div>           
        </div>                                                     
    </section>
</body>
</html>