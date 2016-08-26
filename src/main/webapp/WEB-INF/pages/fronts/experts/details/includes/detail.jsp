<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section>
    <div class="container" style="margin-top: 20px;">
        <span class="pull-left subject">
            <a href="${pageContext.request.contextPath}/home"><span class="fa fa-home"></span>&nbsp;ទំព័រដើម</a>
            <a href="${pageContext.request.contextPath}/expert/filter">/ទំព័រស្វែងរក</a>
            <span>/ទំព័រព័តិមានលំអិត</span>
        </span> 
    </div>
    <div class="mbr-section__container mbr-section__container--isolated container">                        
        <!--        <div>
                    <div class="panel with-nav-tabs panel-primary">
                        <div class="panel-heading">
                            <ul class="nav nav-tabs subject">
                                <li class="active">
                                    <a href="#about" data-toggle="tab"><i class="fa fa-align-right">&nbsp;</i>អំពី</a>
                                </li>                        
                                <li>
                                    <a href="#language" data-toggle="tab"><i class="fa fa-language">&nbsp;&nbsp;</i>ភាសារ</a>
                                </li>
                                <li>
                                    <a href="#education" data-toggle="tab"><i class="fa fa-university">&nbsp;&nbsp;</i>ការសិក្សារ</a>
                                </li>
                                <li>
                                    <a href="#work__experience" data-toggle="tab"><i class="fa fa-bar-chart">&nbsp;&nbsp;</i>បទពិលោធន៍ការងារ</a>
                                </li>
                                <li>
                                    <a href="#skill__base" data-toggle="tab"><i class="fa fa-line-chart">&nbsp;&nbsp;</i>ជំនាញ</a>
                                </li>
                                <li>
                                    <a href="#other__project" data-toggle="tab"><i class="fa fa-github">&nbsp;&nbsp;</i>គំរោង</a>
                                </li>                          
                                <li>
                                    <a href="#documentation" data-toggle="tab"><i class="fa fa-file">&nbsp;&nbsp;</i>ឯកសារផ្សេងៗ</a>
                                </li> 
                                <li>
                                    <a href="#contact" data-toggle="tab"><i class="fa fa-file">&nbsp;&nbsp;</i>ទំនាក់ទំនង</a>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body">                  
                            <div class="tab-content">
        <%--      ------------ BSIC INFO ----------------------- --%>
        <div class="tab-pane fade in active" id="about">
            <div class="content-detail"> 
                <h3>
                    <i class="fa fa-align-right text-blue"></i>
                    <strong class="text-blue">ព័តិមានផ្ទាល់ខ្លួន</strong>
                </h3>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">ឈ្មោះ</h4></td>
                        <td><h4>{{EXPERTS.FULLNAME}}</h4></td>
                    </tr>
                    <tr>
                        <td><h4 class="text--title">ភេទ</h4></td>
                        <td><h4>{{EXPERTS.GENDER}}</h4></td>
                    </tr> 
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">ថ្ងៃខែឆ្នាំកំណើត</h4></td>
                        <td><h4>{{EXPERTS.DATEOFBIRTH| date}}</h4></td>
                    </tr>
                    <tr>
                        <td><h4 class="text--title">អាយុ</h4></td>
                        <td><h4>{{EXPERTS.GENDER}}</h4></td>
                    </tr>                                                                
                </table>
                <h3>
                    <i class="fa fa-bar-chart text-red"></i>
                    <strong class="text-blue">អាស័យដ្ឋានប្បច្ចុបន្ន</strong>
                </h3>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">លេខផ្លូវ</h4></td>
                        <td><h4>{{EXPERTS.CURRENTWORK}}</h4></td>
                    </tr>
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">ភូមិ</h4></td>
                        <td><h4 ng-repeat="item in EXPERTS.POSITIONS">{{item.POSITION}}</h4></td>
                    </tr>
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">ឃុំ/សង្កាត់</h4></td>
                        <td><h4>{{EXPERTS.YEAREXPERIENCE}} ឆ្នាំ</4></td>
                    </tr>
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">ខេត្ត/ក្រុង</h4></td>
                        <td><h4>{{EXPERTS.YEAREXPERIENCE}} ឆ្នាំ</4></td>
                    </tr> 
                    <tr>
                        <td style="width: 30%;"><h4 class="text--title">ប្រទេស</h4></td>
                        <td><h4>{{EXPERTS.YEAREXPERIENCE}} ឆ្នាំ</4></td>
                    </tr>                                                                                                                                       
                </table>                                
            </div>                          
        </div>
        <%--      ------------ CONTACT ----------------------- --%>
        <div class="tab-pane fade" id="contact">
            <div class="content-detail">                                                               
                <table style="width: 100%;">
                    <tr ng-repeat="item in EXPERTS.CONTACTS">
                        <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-phone text-blue"></i>&nbsp;&nbsp;លេខទូរស័ព្ទ</h4></td>                                        
                        <td><h5>{{item.PHONE}}</h5></td>
                    </tr>
                    <tr ng-repeat="item in EXPERTS.CONTACTS">
                        <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-envelope text-blue"></i>&nbsp;&nbsp;អីុម៉ែល</h4></td>
                        <td><h5>{{item.EMAIL}}</h5></td>
                    </tr>
                    <tr ng-repeat="item in EXPERTS.CONTACTS">
                        <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-globe text-blue"></i>&nbsp;&nbsp;វែបសាយ</h4></td>
                        <td><h5>{{item.WEBSITE}}</5></td>
                    </tr>
                    <tr ng-repeat="item in EXPERTS.CONTACTS">
                        <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-link text-blue"></i>&nbsp;&nbsp;បណ្តាញសង្គម</h4></td>
                        <td><h5>{{item.LIKEDIN}}</5></td>
                    </tr>                                                                                                                                        
                </table>
            </div>                          
        </div>
        <%--      ------------ WORK EXPERIENCE ----------------------- --%>
        <div id="work__experience" class="tab-pane fade">
            <div class="content-detail"> 
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
            <div class="content-detail">                             
                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Project'">
                    <div style="padding-bottom: 40px;">        
                        <h3> 
                            <i class="fa fa-github" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>គំរោង</small>                                            
                        </h3>
                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                        <p class="group">
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                            </a>
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                            </a>
                        </p>
                    </div>
                </div>                                                                         
            </div>
        </div>  

        <%--      ------------ DOCUMENTATION ----------------------- --%>
        <div class="tab-pane fade" id="documentation">
            <div class="content-detail"> 
                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Transcript'">
                    <div style="padding-bottom: 40px;">         
                        <h3> 
                            <i class="fa fa-certificate" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>វិញ្ញាប័នប័ត្រ</small>                                            
                        </h3>
                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                        <p class="group">
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                            </a>
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                            </a>
                        </p>
                    </div>
                </div>
                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Certificate'">
                    <div style="padding-bottom: 40px;">         
                        <h3> 
                            <i class="fa fa-paper-plane" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>សញាប័ត្រ</small>                                            
                        </h3>
                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                        <p class="group">
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                            </a>
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                            </a>
                        </p>
                    </div>
                </div>
                <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Achievement'">
                    <div style="padding-bottom: 40px;">         
                        <h3> 
                            <i class="fa fa-certificate" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                            <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>ស្នារដៃ</small>                                            
                        </h3>
                        <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                        <p class="group">
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                            </a>
                            <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                            </a>
                        </p>
                    </div>
                </div> 
            </div>                                  
        </div> 
        <%--      ------------ Skill ----------------------- --%>
        <div class="tab-pane fade" id="skill__base">                                                       
            <div class="content-detail">                                  
                <table style="width: 80%;">
                    <thead>
                        <tr style="font-size: 14pt">
                            <th>
                    <h3 class="text-blue">
                        <i class="fa fa-bar-chart" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                        ជំនាញ
                    </h3>
                    </th>
                    <th>
                    <h3 class="text-blu">
                        <i class="fa fa-level-up" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                        កំរិត</h3>
                    </th>                            
                    </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="item in EXPERTS.SKILLS">
                            <td><h4>{{item.SKILL}}</h4></td>
                            <td>                                               
                                <div class="progress">
                                    <span class="pull-right">{{item.LEVEL}}</span>
                                    <div class="progress-bar progress-bar-success" ng-class="{'progress-bar-warning':item.RNAGE < 80,'progress-bar-info':item.RNAGE < 90,'progress-bar-success':item.RNAGE > 90}" role="progressbar" aria-valuenow="{{item.RNAGE}}"
                                         aria-valuemin="0" aria-valuemax="100" style="width:{{item.RNAGE}}%">                                                        
                                    </div>
                                </div>                                                                                                
                            </td>                                           
                        </tr>                                            
                    </tbody>
                </table>
            </div>                            
        </div>
        <%--      ------------ Language ----------------------- --%>
        <div class="tab-pane fade" id="language">
            <div class="content-detail"> 
                <table style="width: 100%;">
                    <thead>
                        <tr>
                            <th><h3 class="heading">ភាសារ</h3></th><th><h3 class="heading">កំរិត</h3></th>
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
        <%--      ------------ Education ----------------------- --%>
        <div class="tab-pane fade" id="education">
            <div class="content-detail"> 
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
</div>-->


        <div class="row">
            <div class="col-sm-8">
                <div class="panel with-nav-tabs panel-primary">
                    <div class="panel-heading">
                        <ul class="nav nav-tabs subject">
                            <li class="active">
                                <a href="#about" data-toggle="tab"><i class="fa fa-align-right">&nbsp;</i>អំពី</a>
                            </li>                                                                        
                            <li>
                                <a href="#work__experience" data-toggle="tab"><i class="fa fa-bar-chart">&nbsp;&nbsp;</i>បទពិលោធន៍ការងារ</a>
                            </li>                        
                            <li>
                                <a href="#other__project" data-toggle="tab"><i class="fa fa-github">&nbsp;&nbsp;</i>គំរោង</a>
                            </li>                          
                            <li>
                                <a href="#documentation" data-toggle="tab"><i class="fa fa-file">&nbsp;&nbsp;</i>ឯកសារផ្សេងៗ</a>
                            </li> 
                            <li>
                                <a href="#contact" data-toggle="tab"><i class="fa fa-file">&nbsp;&nbsp;</i>ទំនាក់ទំនង</a>
                            </li>
                        </ul>
                    </div>
                    <div class="panel-body">                  
                        <div class="tab-content">
                            <%--      ------------ BSIC INFO ----------------------- --%>
                            <div class="tab-pane fade in active" id="about">
                                <div class="content-detail"> 
                                    <h3>
                                        <i class="fa fa-align-right text-blue"></i>
                                        <strong class="text-blue">ព័តិមានផ្ទាល់ខ្លួន</strong>
                                    </h3>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">ឈ្មោះ</h4></td>
                                            <td><h4>{{EXPERTS.FULLNAME}}</h4></td>
                                        </tr>
                                        <tr>
                                            <td><h4 class="text--title">ភេទ</h4></td>
                                            <td><h4>{{EXPERTS.GENDER}}</h4></td>
                                        </tr> 
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">ថ្ងៃខែឆ្នាំកំណើត</h4></td>
                                            <td><h4>{{EXPERTS.DATEOFBIRTH| date}}</h4></td>
                                        </tr>
                                        <tr>
                                            <td><h4 class="text--title">អាយុ</h4></td>
                                            <td><h4>{{EXPERTS.AGE}}</h4></td>
                                        </tr>                                                                
                                    </table>
                                    <h3>
                                        <i class="fa fa-location-arrow text-blue"></i>
                                        <strong class="text-blue">អាស័យដ្ឋានប្បច្ចុបន្ន</strong>
                                    </h3>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">លេខផ្លូវ</h4></td>
                                            <td><h4>{{EXPERTS.CURRENTWORK}}</h4></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">ភូមិ</h4></td>
                                            <td><h4 ng-repeat="item in EXPERTS.POSITIONS">{{EXPERTS.ADDRESS.COMMUNE}}</h4></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">ឃុំ/សង្កាត់</h4></td>
                                            <td><h4>{{EXPERTS.ADDRESS.DISTRICT}}</4></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">ខេត្ត/ក្រុង</h4></td>
                                            <td><h4>{{EXPERTS.ADDRESS.CITY}}</4></td>
                                        </tr> 
                                        <tr>
                                            <td style="width: 30%;"><h4 class="text--title">ប្រទេស</h4></td>
                                            <td><h4>{{EXPERTS.ADDRESS.COUNTRY}}</4></td>
                                        </tr>                                                                                                                                       
                                    </table>                                
                                </div>                          
                            </div>
                            <%--      ------------ CONTACT ----------------------- --%>
                            <div class="tab-pane fade" id="contact">
                                <div class="content-detail">                                                               
                                    <table style="width: 100%;">
                                        <tr ng-repeat="item in EXPERTS.CONTACTS">
                                            <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-phone text-blue"></i>&nbsp;&nbsp;លេខទូរស័ព្ទ</h4></td>                                        
                                            <td><h5>{{item.PHONE}}</h5></td>
                                        </tr>
                                        <tr ng-repeat="item in EXPERTS.CONTACTS">
                                            <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-envelope text-blue"></i>&nbsp;&nbsp;អីុម៉ែល</h4></td>
                                            <td><h5>{{item.EMAIL}}</h5></td>
                                        </tr>
                                        <tr ng-repeat="item in EXPERTS.CONTACTS">
                                            <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-globe text-blue"></i>&nbsp;&nbsp;វែបសាយ</h4></td>
                                            <td><h5>{{item.WEBSITE}}</5></td>
                                        </tr>
                                        <tr ng-repeat="item in EXPERTS.CONTACTS">
                                            <td style="width: 30%;"><h4 class="text--title"><i class="fa fa-link text-blue"></i>&nbsp;&nbsp;បណ្តាញសង្គម</h4></td>
                                            <td><h5>{{item.LIKEDIN}}</5></td>
                                        </tr>                                                                                                                                        
                                    </table>
                                </div>                          
                            </div>
                            <%--      ------------ WORK EXPERIENCE ----------------------- --%>
                            <div id="work__experience" class="tab-pane fade">
                                <div class="content-detail"> 
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
                                <div class="content-detail">                             
                                    <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Project'">
                                        <div style="padding-bottom: 40px;">        
                                            <h3> 
                                                <i class="fa fa-github" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>គំរោង</small>                                            
                                            </h3>
                                            <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                            <p class="group">
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                                                </a>
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                                                </a>
                                            </p>
                                        </div>
                                    </div>                                                                         
                                </div>
                            </div>  

                            <%--      ------------ DOCUMENTATION ----------------------- --%>
                            <div class="tab-pane fade" id="documentation">
                                <div class="content-detail"> 
                                    <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Transcript'">
                                        <div style="padding-bottom: 40px;">         
                                            <h3> 
                                                <i class="fa fa-certificate" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>វិញ្ញាប័នប័ត្រ</small>                                            
                                            </h3>
                                            <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                            <p class="group">
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                                                </a>
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                    <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Certificate'">
                                        <div style="padding-bottom: 40px;">         
                                            <h3> 
                                                <i class="fa fa-paper-plane" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>សញាប័ត្រ</small>                                            
                                            </h3>
                                            <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                            <p class="group">
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                                                </a>
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                    <div ng-repeat="item in EXPERTS.DOCUMENTS" ng-if="item.DOCUMENTSTATE == 'Achievement'">
                                        <div style="padding-bottom: 40px;">         
                                            <h3> 
                                                <i class="fa fa-certificate" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}"></i>
                                                <strong>{{item.DOCUMENTSTATUS}}</strong>&nbsp;<small>ស្នារដៃ</small>                                            
                                            </h3>
                                            <p>{{item.DOCUMENTDESCRIPTION}}</p>                                       
                                            <p class="group">
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-download" ng-class="{'text-green':($index % 2 == 0),'text-red':($index % 2 != 0)}">&nbsp;ទាញយក&nbsp;&nbsp;&nbsp;&nbsp;</i>                                                
                                                </a>
                                                <a href="{{item.DOCUMENTURL}}" style="text-decoration: none">
                                                    <i class="fa fa-info" ng-class="{'text-green':($index != 2 == 0),'text-red':($index % 2 == 0)}">&nbsp;ព័តិមានលំអិត</i>                                                
                                                </a>
                                            </p>
                                        </div>
                                    </div> 
                                </div>                                  
                            </div>                          
                        </div>
                    </div>
                </div>           
            </div>
            <div class="col-sm-4">
                <div class="panel with-nav-tabs panel-primary">
                    <div class="panel-heading">
                        <ul class="nav nav-tabs subject"> 
                            <li>
                                <a href="#skill__base" data-toggle="tab"><i class="fa fa-line-chart">&nbsp;&nbsp;</i>ជំនាញ</a>
                            </li>
                            <li>
                                <a href="#language" data-toggle="tab"><i class="fa fa-language">&nbsp;&nbsp;</i>ភាសារ</a>
                            </li>
                            <li>
                                <a href="#education" data-toggle="tab"><i class="fa fa-university">&nbsp;&nbsp;</i>ការសិក្សារ</a>
                            </li>                        
                        </ul>
                    </div>
                    <div class="panel-body">                  
                        <div class="tab-content">                      
                            <%--      ------------ Skill ----------------------- --%>
                            <div class="tab-pane fade in active" id="skill__base">                                                       
                                <div class="content-detail">                                  
                                    <table style="width: 100%;">
                                        <thead>
                                            <tr style="font-size: 14pt">
                                                <th>
                                        <h3 class="text-blue">
                                            <i class="fa fa-bar-chart"></i>
                                            ជំនាញ
                                        </h3>
                                        </th>
                                        <th>
                                        <h3 class="text-blue">
                                            <i class="fa fa-circle-o-notch"></i>
                                            កំរិត</h3>
                                        </th>                            
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr ng-repeat="item in EXPERTS.SKILLS">
                                                <td><h4>{{item.SKILL}}</h4></td>
                                                <td>                                               
                                                    <h6>{{item.RNAGE}}&nbsp;%</h6>                                                                                               
                                                </td>                                           
                                            </tr>                                            
                                        </tbody>
                                    </table>
                                </div>                            
                            </div>
                            <%--      ------------ Language ----------------------- --%>
                            <div class="tab-pane fade" id="language">
                                <div class="content-detail"> 
                                    <table style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th><h3 class="heading">ភាសារ</h3></th><th><h3 class="heading">កំរិត</h3></th>
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
                            <%--      ------------ Education ----------------------- --%>
                            <div class="tab-pane fade" id="education">
                                <div class="content-detail"> 
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
    </div>
</section>