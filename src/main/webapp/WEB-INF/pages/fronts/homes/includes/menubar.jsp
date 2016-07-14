<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container col-lg-8 col-lg-offset-2">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top">
                <i class="fa fa-database"></i>  <span class="light">Expert</span> Database
            </a>
        </div>
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">              
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="" href="#home">Home</a>
                </li>                        
                <li>
                    <a class="page-scroll" href="#mission">Mission</a>
                </li>

                <li>
                    <a class="page-scroll btn-block btn-info" href="login.html"><i class="fa fa-sign-in fa-1x"></i> Sign in</a>
                </li>

                <li>
                    <a class="page-scroll" target="new" href="http://kshrd.com.kh/jsp/contactus.hrd">Contact</a>
                </li>
                <li>
                    <a class="page-scroll" target="new" href="http://kshrd.com.kh/jsp/aboutus.hrd">About</a>
                </li>      
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Language <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu" style="background-color: #000">
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/static/img/flag/khmer.png" width="40"> Khmer</a>
                        </li>
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/static/img/flag/english.png" width="40"> English</a>
                        </li>                                                                                        
                    </ul>                           
                </li>
            </ul>
        </div>
    </div>
</nav>
