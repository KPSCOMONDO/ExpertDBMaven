<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="filter--session"  style="background-color: rgb(255, 255, 255);">       
    <div class="content-2 col-5">
        <%-- ----- ------- -----Skill category tab ---------------- ----- --- --%>       
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
                        <li ng-repeat="items in SKILL_CATEGORIES">
                            <a href="{{hash}}{{items.ID}}category" data-toggle="tab">{{items.CATEGORYSTATUS}}</a>
                        </li>                        
                    </ul>                        
                </div>                        
            </div>
            <div class="panel-body">
                <div class="tab-content">
                    <div id="all" class="tab-pane fade">
                    </div>                                                    
                    <div ng-repeat="items in SKILL_CATEGORIES" class="tab-pane fade subject" id="{{items.ID}}category">
                        <a ng-repeat="item in items.SKILLS" ng-click="doFilter(item)" class="col-sm-2" href="">
                            {{item.SKILL}} <span>({{item.COUNT}})</span>
                        </a>                        
                    </div>                 
                </div>
            </div>
            <div class="panel-footer">
                <a href="${pageContext.request.contextPath}/expert/filter" class="panel-title btn btn-danger">
                    <i class="glyphicon glyphicon-filter"></i> Search more
                </a>
            </div>
        </div>
        <%-- ----- ------- -----Result tile ---------------- ----- --- --%> 
        <h3 ng-repeat="item in COUNTERS| limitTo:1">
            <span class="heading">Result :</span><small> {{item.CATEGORYSTATUS}} > {{item.SKILLSTATUS}}</small>
        </h3>
        <%-- ----- ------- -----Expert list ---------------- ----- --- --%> 
        <div ng-if="experts.length != 0" class="row">
            <div ng-repeat="item in EXPERTS|limitTo:8">
                <div class="thumbnail">
                    <div class="content">
                        <div class="image">
                            <img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg">
                        </div>
                        <div class="caption">
                            <span class="info-name"><strong>{{item.FULLNAME| limitTo:20}}<span ng-if="item.length > 20">....</span></strong></span><br>
                            <span ng-repeat="pos in item.POSITIONS| limitTo:1">
                                <span class="info-text">&nbsp;{{pos.POSITION}}</span>
                                <span class="info-text">,&nbsp;{{item.CURRENTWORK}}</span>
                            </span>
                            </tr>
                            </table>                                              
                            <p class="group">
                                <a ng-click="onViewDetailClick(item)" href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">VIEW DETAIL</a>
                            </p>                        
                        </div>
                    </div>
                </div>
            </div>
            <a ng-show="experts.length > 8" href="#more--expert" data-toggle="collapse">MORE...</a>
            <div ng-s class="collapse" id="more--expert">
                <div ng-if="experts.length > 8" ng-repeat="item in EXPERTS|limitTo:(EXPERTS.length - 8):8">
                    <div class="thumbnail">
                        <div class="content">
                            <div class="image">
                                <img class="undefined" src="../../../../../resources/static/img/profile/channy.jpg">
                            </div>
                            <div class="caption">
                                <span class="info-name"><strong>{{item.FULLNAME| limitTo:20}}<span ng-if="item.length > 20">....</span></strong></span><br>
                                <span ng-repeat="pos in item.POSITIONS| limitTo:1">
                                    <span class="info-text">&nbsp;{{pos.POSITION}}</span>
                                    <span class="info-text">,&nbsp;{{item.CURRENTWORK}}</span>
                                </span>
                                </tr>
                                </table>                                              
                                <p class="group">
                                    <a ng-click="onViewDetailClick(item)" href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">VIEW DETAIL</a>
                                </p>                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 text-center">
            <a href="${pageContext.request.contextPath}/expert/filter" class="panel-title btn btn-default">
                <i class="glyphicon glyphicon-filter"></i> Search more ...
            </a>
        </div>
    </div>
</section> 