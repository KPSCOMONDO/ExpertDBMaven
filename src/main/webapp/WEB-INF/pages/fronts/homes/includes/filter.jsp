<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="filter--session"  style="background-color: rgb(255, 255, 255);">       
    <div class="content-2 col-5">
        <div class="panel with-nav-tabs panel-primary">
            <div class="panel-heading clearfix" ng-if="skill_category.length != 0">
                <div class="pull-right">
                    <i class="glyphicon glyphicon-filter"></i>
                </div>
                <div class="pull-left">
                    <ul class="nav nav-tabs subject">
                        <li class="active">
                            <a href="#all" data-toggle="tab"><i class="glyphicon glyphicon-th"></i></a>
                        </li>
                        <li ng-repeat="skill_category in skills_categories">
                            <a href="{{ID_CAT}}{{skill_category.ID}}" data-toggle="tab">{{skill_category.CATEGORYSTATUS}}</a>
                        </li>                        
                    </ul>                        
                </div>                        
            </div>
            <div class="panel-body">
                <div class="tab-content">
                    <div id="all" class="tab-pane fade">
                    </div>                                                    
                    <div ng-repeat="items in skills_categories" class="tab-pane fade subject" id="{{ID_CAT_}}{{items.ID}}">
                        <a ng-repeat="item in items.SKILLS" ng-click="doFilter(this)" class="col-sm-2" href="">{{item.SKILL}} <span>({{item.COUNT}})</span></a>                        
                    </div>                 
                </div>
            </div>
            <div class="panel-footer">
                <a href="${pageContext.request.contextPath}/expert" class="panel-title btn btn-danger">
                    <i class="glyphicon glyphicon-filter"></i> Search more
                </a>
            </div>
        </div>
        <h1 class="heading">All developers</h1>
        <h3 ng-bind="btn1"></h3>
        <div ng-if="experts.length != 0" class="row">
            <div ng-repeat="item in experts">
                <div class="thumbnail">
                    <div class="image"><img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg"></div>
                    <div class="caption">
                            <h2>{{item.FULLNAME}}</h2>
                            <span ng-repeat="pos in item.POSITIONS| limitTo:1">
                                <i class="glyphicon glyphicon-briefcase"></i> {{pos.POSITION}}
                            </span><br>                            
                            <span>
                                <i class="glyphicon glyphicon-home"></i> {{item.CURRENTWORK}}
                            </span>                                              
                        <p class="group">
                            <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">VIEW DETAIL</a>
                        </p>                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 text-center">
            <a href="${pageContext.request.contextPath}/expert" class="panel-title btn btn-default">
                <i class="glyphicon glyphicon-filter"></i> Search more ...
            </a>
        </div>
    </div>
</section> 