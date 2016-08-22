<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section>
    <div class="container" style="margin-top: 20px;">
        <span class="pull-left subject">
            <a href="${pageContext.request.contextPath}/home"><span class="fa fa-home"></span>&nbsp;Home</a>
            <a href="${pageContext.request.contextPath}/expert/filter">/Filter</a>
            <span>/Detail</span>
        </span> 
    </div>
    <div class="mbr-section__container mbr-section__container--isolated container">                        
        <div class="col-sm-8">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                    <ul class="nav nav-tabs subject">
                        <li class="active">
                            <a href="#about" data-toggle="tab">ABOUT</a>
                        </li>
                        <li>
                            <a href="#work__experience" data-toggle="tab">WORK EXPERIENCE</a>
                        </li>
                        <li>
                            <a href="#other__project" data-toggle="tab">OTHER PROJECT</a>
                        </li>   
                        <li>
                            <a href="#other__award" data-toggle="tab">OTHER AWARD</a>
                        </li> 
                        <li>
                            <a href="#documentation" data-toggle="tab">DOCUMENTATION</a>
                        </li>
                    </ul>
                </div>
                <div class="panel-body">                  
                    <div class="tab-content">
                        <%--      ------------ BSIC INFO ----------------------- --%>
                        <div class="tab-pane fade in active" id="about">
                            <div class="content-2" style="padding-top: 20px">
                                <h3>
                                    <i class="fa fa-align-right text-green"></i>
                                    <strong class="text-blue">Personal Data</strong>
                                </h3>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Date of birth</h4></td>
                                        <td><h4>{{EXPERTS.DATEOFBIRTH| date}}</h4></td>
                                    </tr>
                                    <tr>
                                        <td><h4 class="text--title">Gender</h4></td>
                                        <td><h4>{{EXPERTS.GENDER}}</h4></td>
                                    </tr>
                                    <tr>
                                        <td><h4 class="text--title">Address</h4></td>
                                        <td><h4>{{EXPERTS.ADDRESS.COMMUNE}},&nbsp;{{EXPERTS.ADDRESS.DISTRICT}},&nbsp;{{EXPERTS.ADDRESS.CITY}},&nbsp;{{experts.ADDRESS.COUNTRY}}</4></td>
                                    </tr>                                    
                                </table>
                                <h3>
                                    <i class="fa fa-bar-chart text-red"></i>
                                    <strong class="text-blue">Experience</strong>
                                </h3>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Current work place</h4></td>
                                        <td><h4>{{EXPERTS.CURRENTWORK}}</h4></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Position</h4></td>
                                        <td><h4 ng-repeat="item in EXPERTS.POSITIONS">{{item.POSITION}}</h4></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Year experience</h4></td>
                                        <td><h4>{{EXPERTS.YEAREXPERIENCE}} years</4></td>
                                    </tr>                                                                    
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Current work place</h4></td>
                                        <td><h4>{{EXPERTS.CURRENTWORK}}</h4></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Position</h4></td>
                                        <td><h4 ng-repeat="item in EXPERTS.POSITIONS">{{item.POSITION}}</h4></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;"><h4 class="text--title">Year experience</h4></td>
                                        <td><h4>{{EXPERTS.YEAREXPERIENCE}} years</4></td>
                                    </tr>                                     
                                </table>
                            </div>                          
                        </div>
                        <%--      ------------ WORK EXPERIENCE ----------------------- --%>
                        <div id="work__experience" class="tab-pane fade">
                            <div class="content-2" style="padding-top: 10px;padding-bottom: 20px">
                                <div ng-repeat="item in EXPERTS.EXPERIENCES" style="padding-top: 40px;">                                    
                                    <h3>
                                        <i class="fa fa-chain" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">                                            
                                        </i>&nbsp;&nbsp;<strong>{{item.EXPERIENCE}}</strong>
                                        <span class="year sub-menu">&nbsp;&nbsp;({{item.YEAR}})</span>
                                    </h3>                                    
                                    <p class="mbr-reviews__up__text mbr-reviews__up__p text-black">
                                        {{item.DESCRIPTION}}
                                    </p>                                    
                                </div>
                            </div>
                        </div> 
                        <%-- --------------------- OTHER PROJECT ------------------ -----%>
                        <div class="tab-pane fade" id="other__project">
                            <div class="content-2" style="padding-top: 10px;">                                
                                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Project'">
                                    <div style="padding-top: 40px;">         
                                        <h3> 
                                            <i class="fa fa-github" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>{{item.DOCUMENTSTATE}}</small>                                            
                                        </h3>
                                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                        <p class="group">
                                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                <i class="fa fa-link" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <small ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;More</small>
                                            </a>
                                        </p>
                                    </div>
                                </div>                                                                         
                            </div>
                        </div>  
                        <%-- --------------------- AWARD ------------------ -----%>                       
                        <div class="tab-pane fade" id="other__award">
                            <div class="content-2 col-3" style="padding-top: 10px;">
                                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Achievement'">
                                    <div style="padding-top: 40px;">         
                                        <h3> 
                                            <i class="fa fa-certificate" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>{{item.DOCUMENTSTATE}}</small>                                            
                                        </h3>
                                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                        <p class="group">
                                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <small ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;Download</small>
                                            </a>
                                        </p>
                                    </div>
                                </div>  
                            </div>
                        </div>  
                        <%--      ------------ DOCUMENTATION ----------------------- --%>
                        <div class="tab-pane fade" id="documentation">
                            <div class="content-2 col-3" style="padding-top: 10px;">
                                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Transcript'">
                                    <div style="padding-top: 40px;">         
                                        <h3> 
                                            <i class="fa fa-certificate" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>{{item.DOCUMENTSTATE}}</small>                                            
                                        </h3>
                                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                        <p class="group">
                                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <small ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;Download</small>
                                            </a>
                                        </p>
                                    </div>
                                </div>
                                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Certificate'">
                                    <div style="padding-top: 40px;">         
                                        <h3> 
                                            <i class="fa fa-paper-plane" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>{{item.DOCUMENTSTATE}}</small>                                            
                                        </h3>
                                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                        <p class="group">
                                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <small ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;Download</small>
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>                                  
                        </div>
                        <%-- end of tab ====================================== --%>
                    </div>
                </div>
            </div>           
        </div>
        <div class="col-sm-4"> 
            <div class="panel with-nav-tabs panel-primary subject">
                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#skill__base" data-toggle="tab">SKILL</a></li>
                        <li><a href="#language" data-toggle="tab">LANGUAGE</a></li>
                        <li><a href="#education" data-toggle="tab">EDUCATION</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">                        
                        <div class="tab-pane fade in active" id="skill__base">                            
                            <div class="section-inner">
                                <div class="conten" style="padding-bottom: 100px;">                                    
                                    <table style="width: 100%;">
                                        <thead>
                                            <tr style="font-size: 14pt">
                                                <th>
                                        <h3 class="text-blue">
                                            <i class="fa fa-bar-chart" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                            Skill</h3>
                                        </th>
                                        <th>
                                        <h3 class="text-blu">
                                            <i class="fa fa-level-up" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                            Level</h3>
                                        </th>                            
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr ng-repeat="item in EXPERTS.SKILLS">
                                                <td><h4>{{item.SKILL}}</h4></td>
                                                <td><h4>{{item.RNAGE}}%</h4></td>
                                            </tr>                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="language">
                            <div class="content" style="padding-bottom: 100px;">
                                <table style="width: 100%;">
                                    <thead>
                                        <tr>
                                            <th><h3 class="heading">Language</h3></th><th><h3 class="heading">Level</h3></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-repeat="item in EXPERTS.LANGUAGES" style="font-size: 12pt">
                                            <td><h4>{{item.LANGUAGE}}</h4></td>
                                            <td><h4>{{item.LEVEL}}</h4></td>
                                        </tr>                                        
                                    </tbody>
                                </table>
                            </div> 
                        </div>
                        <div class="tab-pane fade" id="education">
                            <div class="content" style="padding-top: 10px;padding-bottom: 100px;">
                                <div class="item" ng-repeat="item in EXPERTS.EDUCATIONS" style="padding-top: 30px;">                      
                                    <h4><i class="fa fa-university" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                        &nbsp;&nbsp;<strong>{{item.EDUCATION}}</strong></h4>
                                    <p class="mbr-reviews__up__text mbr-reviews__up__p">
                                        {{item.DESCRIPTION}}
                                        <span class="year">&nbsp;&nbsp;({{item.EDUCATEDDATE}})</span>
                                    </p>
                                </div>                               
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>