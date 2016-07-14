<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section id="home" class="content-section text-center col-lg-8 col-lg-offset-2">
    <div class="row">                  
        <div class="col-lg-4 text-left">                     
            <h3 class="text-muted">Find Employee</h3>
            <div class="input-group custom-search-form searchbox">
                <input type="text" class="form-control" placeholder="Search for skill...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">
                        <i class="fa fa-search"></i>
                    </button>
                </span>
            </div>                        
            <div class="col-lg-12">                                                        
                <a data-toggle="collapse" href="#bl-category"><h4 class="text-muted">Categories</h4></a>
                <div role="navigation" class="collapse collapsing" id="bl-category">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu" >                                                                          
                            <li>
                                <a href="#"><i class="fa fa-desktop fa-fw"></i> Web Developer<span class="fa arrow"></span></a>                                            <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">HTML</a>                                                   
                                    </li>
                                    <li>
                                        <a href="#">JavaScript</a>
                                    </li>
                                    <li>
                                        <a href="#">BootStrap</a>
                                    </li>
                                    <li>
                                        <a href="#">JQuery</a>
                                    </li>
                                </ul>
                            </li>                                                                                  
                        </ul>
                    </div>
                </div>
            </div>                    

            <div class="col-lg-12">                                                                   
                    <a data-toggle="collapse" href="#bl-gender"><h4 class="text-muted pad-2px">Gender</h4></a>
                    <div class="mag-10px collapse" id="bl-gender">
                        <input type="checkbox" class="mag-10px text-inline"> <p class="text-muted mag-10px text-inline">Male</p>
                        <input type="checkbox" class="mag-10px text-inline"> <p class="text-muted mag-10px text-inline">Female</p>
                    </div>                  
            </div>   
            <div class="col-lg-12">                            
                <a data-toggle="collapse" href="#bl-age"><h4 class="text-muted pad-2px">Age</h4></a>
                <div class="collapse" id="bl-age">                              
                    <div class="col-lg-6">
                        <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 18 to 25 years old</p>
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 26 to 29 years old</p>                                    
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 30 to 35 years old</p>
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 36 than 40 years old</p>
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> More than 40 years old</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">                                                      
                    <a data-toggle="collapse" href="#bl-province"><h4 class="text-muted pad-2px">Province / City</h4></a>
                    <div class="col-lg-8 collapse" id="bl-province">
                        <select class="form-control">
                            <option>Select one</option>
                            <option>Phnom Penh</option>
                            <option>Batdambang</option>
                            <option>Siem Rieb</option>
                            <option>Pailin</option>                                    
                        </select>                            
                </div>                        
            </div>

            <div class="col-lg-12">                             
                <a data-toggle="collapse" href="#bl-language"><h4 class="text-muted pad-2px">Language</h4></a>                           
                <div class="col-lg-12 collapse" id="bl-language">
                    <input type="checkbox"/><p class="text-inline text-muted mag-10px">English</p><br>
                    <input type="checkbox"/><p class="text-inline text-muted mag-10px">Chines</p><br>
                    <input type="checkbox"/><p class="text-inline text-muted mag-10px">Korean</p><br>
                    <input type="checkbox"/><p class="text-inline text-muted mag-10px">Japan</p><br>
                    <input type="checkbox"/><p class="text-inline text-muted mag-10px">Khmer</p><br>
                    <input type="checkbox"/><p class="text-inline text-muted mag-10px">Thai</p><br>
                </div>
            </div> 
            <div class="col-lg-12">                            
                <a data-toggle="collapse" href="#bl-experience"><h4 class="text-muted pad-2px">Experience</h4></a>
                <div class="mag-10px collapse" id="bl-experience">                                                 
                    <div class="col-lg-6">
                        <input id="ex2" class="text-inline" type="range"/>  
                    </div>
                    <div class="col-lg-6">
                        <p class="text-muted text-inline​ pad-2px">
                            At least 1 years
                        </p>
                    </div>
                </div>
            </div>                                                   

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-left pad-2px">                            
                <a data-toggle="collapse" href="#bl-salary"><h4 class="text-muted">Salary</h4></a>
                <div class="mag-10px collapse" id="bl-salary">                              
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdSalary"><p class="text-muted"> 0$ - 199 USD</p>
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdSalary"><p class="text-muted"> 200 - 499 USD</p>
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdSalary"><p class="text-muted"> 1,000 - 1,999 USD</p>
                    </div>
                    <div class="col-lg-6">                                    
                        <input type="radio" name="rdSalary"><p class="text-muted"> 2,000 USD+</p>
                    </div>
                </div>
            </div>                        

        </div>

        <!--Grid -->  
        <div class="col-lg-8 text-left"> 
            <div class="col-lg-12">
                <div class="col-lg-10">
                    <h3 class="text-muted footer-col">Employees</h3>
                </div>                       
            </div>
            <!-- one record -->
            <div class="col-lg-12 bg-light">
                <div class="col-lg-2">                                                                                         
                    <img class="img-responsive" src="../../../../../resources/static/img/profile/channy.jpg" alt=""/>
                </div>    
                <div class="col-lg-9">
                    <div class="col-lg-8">                                  
                        <h4 class="">Sok Channy</h4>
                        <h6 class="">Software developer</h6> 
                        <i class="glyphicon glyphicon-map-marker"> Phom Penh</i>
                    </div>
                    <div class="col-lg-4">                                                                      
                        <h6 class="text-muted text-right">2 years experience</h6>
                        <h6 class="text-muted text-right">360$</h6>                                    
                    </div>                                                            
                </div>
                <div class="col-lg-1">                                
                        <i class="btn fa fa-reorder fa-1x"></i>                         
                </div>             
            </div>                        

            <div class="text-center">
                <ul id="pagination-demo" class="pagination-sm pagination">
                    <li class="first disabled">
                        <a href="#">First</a>
                    </li>
                    <li class="prev disabled">
                        <a href="#">Previous</a>
                    </li><li class="page active">
                        <a href="#">1</a>
                    </li>
                    <li class="page">
                        <a href="#">2</a>
                    </li>
                    <li class="page">
                        <a href="#">3</a>
                    </li><li class="page">
                        <a href="#">4</a>
                    </li>
                    <li class="page">
                        <a href="#">5</a>
                    </li>
                    <li class="page">
                        <a href="#">6</a>
                    </li>
                    <li class="page">
                        <a href="#">7</a>
                    </li><li class="next">
                        <a href="#">Next</a>
                    </li><li class="last">
                        <a href="#">Last</a>
                    </li>
                </ul>
            </div>  
        </div>         
    </div>
</section>