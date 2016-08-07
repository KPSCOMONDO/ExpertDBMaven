<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section>
    <div class="mbr-section__container mbr-section__container--isolated container">                
        <div class="col-sm-8">
            <div class="panel with-nav-tabs panel-primary box--bottom--shardow">
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
                    </ul>
                </div>
                <div class="panel-body">                  
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="about">
                            <div class="content-2" style="padding-top: 20px">
                                <h3 class="heading">Basic Information</h3>
                                <table>
                                    <tr>
                                        <td style="width: 30%;"><h4>Birthday</h4></td>
                                        <td><h4>June 07, 2016</h4></td>
                                    </tr>
                                    <tr>
                                        <td><h4>Gender</h4></td>
                                        <td><h4>Male</h4></td>
                                    </tr>
                                    <tr>
                                        <td><h4>Address</h4></td>
                                        <td><h4>Phnom Penh, Chamka Mon, Cambodia</4></td>
                                    </tr>
                                </table>
                                <h3 class="heading">Occupation</h3>
                                <h4>Web developer</h4>
                                <h3 class="heading">Organization/Company</h3>
                                <h4>Kosign</h4>
                            </div>                          
                        </div>
                        <div id="work__experience" class="tab-pane fade">
                            <div class="content-2" style="padding-top: 10px;padding-bottom: 20px">
                                <ul class="timeline">
                                    <li>
                                        <div class="timeline-image">
                                            <h4>2010<br>-<br>2014</h4>
                                        </div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="subheading">An Agency is Born</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-inverted">
                                        <div class="timeline-image">
                                            <h4>2010<br>-<br>2014</h4>
                                        </div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="subheading">An Agency is Born</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur</p>
                                            </div>
                                        </div>
                                    </li>                                   
                                    <li>
                                        <div class="timeline-image">
                                            <h4>2010<br>-<br>2014</h4>
                                        </div>
                                        <div class="timeline-panel">
                                            <div class="timeline-heading">
                                                <h4 class="subheading">An Agency is Born</h4>
                                            </div>
                                            <div class="timeline-body">
                                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>                                                    
                        <div class="tab-pane fade" id="other__project">
                            <div class="content-2 col-3" style="padding-top: 10px;">
                                <div>
                                    <div class="row">
                                        <div>
                                            <div class="thumbnail">                                
                                                <div class="caption">
                                                    <div>
                                                        <h2>Khmer Academy</h2>
                                                        <h4>Create forum, KSHRD</h4>
                                                    </div>
                                                    <p class="group">
                                                        <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="thumbnail">                                
                                                <div class="caption">
                                                    <div>
                                                        <h2>EMP RECORD</h2>
                                                        <h4>Spring security, Kosign</h4>
                                                    </div>
                                                    <p class="group">
                                                        <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="thumbnail">                               
                                                <div class="caption">
                                                    <div>
                                                        <h2>Green</h2>
                                                        <h4>Spring security, Kosign</h4>
                                                    </div>
                                                    <p class="group">
                                                        <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="thumbnail">                               
                                                <div class="caption">
                                                    <div>
                                                        <h2>Resturant</h2>
                                                        <h4>Scrapt everyt, Kosign</h4>
                                                    </div>
                                                    <p class="group"><a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a></p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="tab-pane fade" id="other__award">
                            <div class="content-2 col-3" style="padding-top: 10px;">
                                <div>
                                    <div class="row">
                                        <div>
                                            <div class="thumbnail">                                
                                                <div class="caption">
                                                    <div>
                                                        <h2>Public Speaking</h2>
                                                        <h4>Create forum, KSHRD</h4>
                                                    </div>
                                                    <p class="group">
                                                        <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="thumbnail">                                
                                                <div class="caption">
                                                    <div>
                                                        <h2>Best Hacker</h2>
                                                        <h4>Spring security, Kosign</h4>
                                                    </div>
                                                    <p class="group">
                                                        <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="thumbnail">                               
                                                <div class="caption">
                                                    <div>
                                                        <h2>Youth and mobile 2017</h2>
                                                        <h4>Spring security, Kosign</h4>
                                                    </div>
                                                    <p class="group">
                                                        <a href="${pageContext.request.contextPath}/expert/detail" class="btn btn-default">MORE...</a>
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
            </div>           
        </div>
        <div class="col-sm-4"> 
            <div class="panel with-nav-tabs panel-primary subject box--bottom--shardow">
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
                                <div class="content">
                                    <h3 class="heading">Web development</h3>
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr style="font-size: 14pt">
                                                <th>Skill</th><th>Level</th>                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr style="font-size: 12pt">
                                                <td>HTML</td><td>Pro</td>
                                            </tr>
                                            <tr style="font-size: 12pt">
                                                <td>CSS</td><td>World Class</td>
                                            </tr>
                                            <tr style="font-size: 12pt">
                                                <td>JAVASCRIP</td><td>Pro</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h3 class="heading">Mobile development</h3>
                                    <table class="table table-condensed">
                                        <thead>
                                            <tr style="font-size: 14pt">
                                                <th>Skill</th><th>Level</th>                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr style="font-size: 12pt">
                                                <td>Swiff</td><td>Pro</td>
                                            </tr>
                                            <tr style="font-size: 12pt">
                                                <td>J#</td><td>World Class</td>
                                            </tr>
                                            <tr style="font-size: 12pt">
                                                <td>Java</td><td>Pro</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h3 class="heading">Framework</h3>
                                    <table class="table table-responsive">
                                        <thead>
                                            <tr style="font-size: 14pt">
                                                <th>Spring</th><th>Level</th>                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr style="font-size: 12pt">
                                                <td>IONIC</td><td>Pro</td>
                                            </tr>

                                            <tr style="font-size: 12pt">
                                                <td>Mybitis</td><td>World Class</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="language">
                            <div style="padding-top: 20px;">
                                <table class="table table-condensed">
                                    <thead>
                                        <tr style="font-size: 14pt">
                                            <th>Language</th><th>Level</th>                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr style="font-size: 12pt">
                                            <td>Japan</td><td>Pro</td>
                                        </tr>
                                        <tr style="font-size: 12pt">
                                            <td>Lao</td><td>World Class</td>
                                        </tr>
                                        <tr style="font-size: 12pt">
                                            <td>Vietnam</td><td>Pro</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> 
                        </div>
                        <div class="tab-pane fade" id="education">
                            <div class="content">
                                <div class="item">                      
                                    <h3><i class="fa fa-graduation-cap"></i> Computer Science</h3>
                                    <p class="mbr-reviews__up__text mbr-reviews__up__p">Royal University of Phnom Penh <span class="year">(2012-2016)</span></p>
                                </div>
                                <div class="item">
                                    <h3><i class="fa fa-graduation-cap"></i> IT Expert(skill)</h3>
                                    <p class="mbr-reviews__up__text mbr-reviews__up__p">KSHRD Center <span class="year">(20016-2017)</span></p>
                                </div>                               
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>