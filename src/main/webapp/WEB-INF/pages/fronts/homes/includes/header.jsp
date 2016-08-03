<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted mbr-after-navbar" id="header1-40" data-bg-video="https://www.youtube.com/watch?v=dEIy4Rxno6Y">
    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-box__magnet--center-left">
        <div class="mbr-overlay" style="opacity: 0.8; background-color: gba(32, 31, 40, 1);"></div>
        <div class="mbr-box__container mbr-section__container container">
            <div class="mbr-box mbr-box--stretched">
                <div class="mbr-box__magnet mbr-box__magnet--center-left">
                    <div class="row">
                        <div class=" col-sm-12">
                            <div class="mbr-hero animated fadeInUp">
                                <h1 class="mbr-hero__text">Expert Database</h1>
                                <p class="mbr-hero__subtext">We provided a platform for recruitment. <br></p>
                            </div>
                            <div class="mbr-buttons btn-inverse mbr-buttons--lef">                                
                                <select class="form-control animated fadeInUp delay search--box"> 
                                    <option selected>Find by skill</option>
                                    <option ng-repeat="skill in skills">{{skill.skill_name}}</option>                                  
                                </select>
                                <a class="mbr-buttons__btn btn btn-lg animated fadeInUp delay btn-warning" href="${pageContext.request.contextPath}/expert">Find Candidate</a> 
                                <a class="mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay" href="">LEARN MORE</a>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-arrow mbr-arrow--floating text-center">
            <div class="mbr-section__container container">
                <a class="mbr-arrow__link" href="#features1-42"><i class="glyphicon glyphicon-menu-down"></i></a>
            </div>
        </div>
    </div>
</section>