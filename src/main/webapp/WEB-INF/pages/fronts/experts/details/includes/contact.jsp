<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="mbr-section mbr-section--relative mbr-parallax-background" id="msg-box5-46" style="background-image: url(/resources/static/assets/images/profile-background.jpg);">
    <div class="mbr-section__container mbr-section__container--isolated container content-2">  
        <div class="mbr-overlay" style="opacity: 0.3; background-color: black"></div>
        <div class="col-sm-8 section" style="z-index: 9999">
            <form ng-submit="sendEmail()">
                <h2 class="heading text-white">សារអេឡិចត្រូនិច<i class="fa fa-envelope-o"></i></h2>
                <select class="form-control search--expert" style="padding: 5px;font-size: 12pt;" ng-model="cbo_email" ng-options="item.EMAIL for item in EXPERTS.CONTACTS">
                    <option value="">-- អីុម៉ែល --</option>
                </select>     
                <br>
                <input type="text" placeholder="គោលបំណង" class="form-control" ng-model="txtSubject">
                <br>
                <textarea class="form-control" ng-model="txtText" rows="10" placeholder="អត្ថបទ"></textarea>
                <br>
                <input type='submit' class="mbr-buttons__btn btn btn-lg btn-primary animated fadeInUp delay text-white" value='ផ្ញើរ  '/>
                <input type='reset' class="mbr-buttons__btn btn btn-lg btn-danger animated fadeInUp delay text-white" value='សំអាត'/>
            </form>            
        </div>
        <div class="col-sm-4 contact--expert"  style="z-index: 9999">                  
            <h2 class="heading text-white">ទំនាក់ទំនង</h2>
            <div class="content">
                <h4><i class="glyphicon glyphicon-map-marker"></i>
                    <span>&nbsp;&nbsp;{{EXPERTS.LOCATION.LOCATIONSTATUS}}</span>
                </h4>
                <h4 ng-repeat="item in EXPERTS.CONTACTS" ng-if="item.EMAIL">
                    <i class="glyphicon glyphicon-envelope"></i>
                    <a href="#">&nbsp;&nbsp;{{item.EMAIL}}</a>
                </h4>
                <h4 ng-repeat="item in EXPERTS.CONTACTS" ng-if="item.WEBSITE">
                    <i class="glyphicon glyphicon-globe"></i>
                    <a href="#">&nbsp;&nbsp;{{item.WEBSITE}}</a>
                </h4>
                <h4 ng-repeat="item in EXPERTS.CONTACTS" ng-if="item.PHONE">
                    <i class="glyphicon glyphicon-phone"></i>
                    <a href="#">&nbsp;&nbsp;{{item.PHONE}}</a>
                </h4>            
                <h4 ng-repeat="item in EXPERTS.CONTACTS" ng-if="item.LIKEDIN">
                    <i class="glyphicon glyphicon-list-alt"></i>
                    <a href="#">&nbsp;&nbsp;{{item.LIKEDIN}}</a>
                </h4>                               
            </div> 
        </div>
    </div>                                                     
</section>