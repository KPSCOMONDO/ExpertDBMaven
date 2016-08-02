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
    <section class="mbr-section mbr-section--relative" style="background-image: url(/resources/static/assets/images/profile-background.jpg);">
        <div class="mbr-overlay" style="opacity: 0.2; background-color: rgb(255, 355, 255);"></div>
        <div class="mbr-section__container mbr-section__container--isolated container" style="padding-bottom: 10px;padding-top:200px">
            <div class="row">
                <div class="mbr-box mbr-box--fixed mbr-box--adapted box--bottom--shardow" style="background-color: white;">
                    <div class="mbr-box__magnet mbr-box__magnet--top-right mbr-section__left col-sm-2">
                        <figure class="mbr-figure mbr-figure--adapted mbr-figure--caption-inside-bottom">
                            <img class="img-responsive img-thumbnail" style="margin: 20px 0px 20px 0px; padding: 10px 10px 10px 10px" src="/resources/static/img/profile/channy.jpg">
                        </figure>
                    </div>
                    <div class="mbr-box__magnet mbr-class-mbr-box__magnet--center-left col-sm-8 mbr-section__right">
                        <div class="mbr-section__container mbr-section__container--middle">
                            <div class="mbr-header mbr-header--auto-align mbr-header--wysiwyg col-sm-6">
                                <h1 class="">Sok Channy</h1>                                
                                <h3>
                                    Phnom Penh
                                </h3>                               
                            </div>
                            <div class="col-sm-6 text-left">
                                <p class="mbr-reviews__p mbr-reviews__text">
                                    Expect salary : 300$
                                </p>                                
                                <br>
                                <i class="glyphicon glyphicon-phone" style="color: black"> (855)86 65 14 43</i><br><br>
                                <i class="glyphicon glyphicon-envelope" style="color: black"> Sokchanny.sg@gmail.com</i><br><br>
                                <i class="glyphicon glyphicon-globe" style="color: black"> www.c_fd.org.com.kh</i><br>                        
                            </div>
                        </div>                     
                    </div>
                </div>
            </div>        
    </section>  
    <jsp:include page="includes/detail.jsp"/>
    <jsp:include page="includes/contact.jsp"/> 
    <jsp:include page="../includes/footer.jsp"/> 
    <jsp:include page="../includes/home-script.jsp"/>
</body>
</html>