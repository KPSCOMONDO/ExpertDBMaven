<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-8 text-left">             
    <%-- --------------------------- RECORD -----------------------------%>
    <div class="">           
        <div class="col-sm-5">
            <div class="dropdown">
                <button class="" data-toggle="dropdown" style="width: 100%;">
                    <span class="pull-left">Sort by : {{sortName}}</span>
                    <span class="fa pull-right" ng-class="{'fa-sort-desc':reverse,'fa-sort-asc':!reverse}"></span>
                </button>
                <ul class="dropdown-menu subject">
                    <li><a href="" class="subject" ng-click="sort('FULLNAME','Name')">Name</a></li>
                    <li><a href="" class="subject" ng-click="sort('YEAREXPERIENCE','Year experience')">Year experience</a></li>
                    <li><a href="" class="subject" ng-click="sort('SALARY','Salary')">Salary</a></li>
                    <li><a href="" class="subject" ng-click="sort('PROVINCESTATUS','City/Province')">City/Province</a></li>
                    <li><a href="" class="subject" ng-click="sort('AGE','Age')">Age</a></li>
                </ul>
            </div>                            
        </div>
        <div class="pull-right">
            <form class="form-inline">
                <div class="form-group">
                    <label>Search:</label>
                    <input type="text" ng-model="search" class="form-control search--expert" placeholder="Search by keyword">
                </div>
            </form>
            <dir-pagination-controls max-size="5" direction-links="true" boundary-links="true"></dir-pagination-controls> 
        </div>
        <table style="width: 100%;" >    
            <tbody>
                <tr dir-paginate="item in experts|orderBy:sortKey:reverse|filter:search|itemsPerPage:3">
                    <td>
                        <div class="col-sm-12 box--result">
                            <div class="pull-left image--profile">                                                                                         
                                <img class="img-responsive" src="/resources/static/img/profile/channy.jpg" alt=""/>
                            </div>
                            <div class="col-sm-10 row pull-right">
                                <div class="col-sm-8 col-xs-10 row">                                  
                                    <h3 class="row"><strong>{{item.FULLNAME}}</strong></h3>                                    
                                </div>
                                <div class="col-sm-4 col-xs-12 pull-right">                                                                      
                                    <h4 class="text-right row">{{item.YEAREXPERIENCE}} years experience</h4>
                                    <h4 class="text-right row"><span class="fa fa-money"> {{item.SALARY| currency:"USD ":0}}</span></h4>                                                                                                                             
                                </div>
                                <div class="col-sm-12 row">
                                    <!--                                    <div class="col-sm-10 pull-left">
                                                                            <span ng-repeat="pos in item.POSITIONS| limitTo:1"><i class="glyphicon glyphicon-adjust"></i> {{pos.POSITION}}</span><br> 
                                                                            <span ><i class="glyphicon glyphicon-map-marker"></i>{{item.CURRENTWORK}}</span>                                                                        
                                                                        </div>-->
                                    <div class="col-sm-10 pull-left" style="padding-left: 0;margin-left: 0;">
                                        <span ng-repeat="pos in item.POSITIONS| limitTo:1" class="fa fa-briefcase">
                                            &nbsp;&nbsp;<strong>{{pos.POSITION}}</strong>
                                        </span><br>
                                        <span ng-if="item.GENDER == 'Male'" class="fa fa-male">&nbsp;&nbsp;&nbsp;</span>
                                        <span ng-if="item.GENDER == 'Female'" class="fa fa-female">&nbsp;&nbsp;&nbsp;</span>
                                        <span class="fa fa-birthday-cake">&nbsp;&nbsp;&nbsp;{{item.AGE}}&nbsp;&nbsp;&nbsp;</span>
                                        <span class="fa fa-location-arrow">&nbsp;&nbsp;{{item.Province.PROVINCESTATUS}}</span>
                                    </div>
                                    <div class="col-sm-2">
                                        <a class="btn btn-primary row" href="${pageContext.request.contextPath}/expert/detail">
                                            <i class="glyphicon glyphicon-eye-open"></i> DETAIL
                                        </a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td> 
                </tr>
            </tbody>
        </table> 
        <div class="pull-right">
            <dir-pagination-controls max-size="5" direction-links="true" boundary-links="true"></dir-pagination-controls> 
        </div>
    </div>
</div>