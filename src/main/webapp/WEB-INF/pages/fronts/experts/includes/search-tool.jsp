<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-4 text-left">                  
    <h4 class="text-muted">Filter by:</h4>                               
    <div class="panel panel-info">  
        <div class="panel-heading">
            <a data-toggle="collapse" class="" href="#bl-category">
                <h4 class="text-muted">Categories</h4>
            </a>
        </div>
        <div role="navigation" class="collapse collapsing panel-body" id="bl-category">
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

    <div class="panel panel-default">   
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-gender">
                <h4 class="text-muted pad-2px">Gender</h4>
            </a>
        </div>
        <div class="mag-10px collapse panel-body" id="bl-gender">
            <input type="checkbox" class="mag-10px text-inline"> <p class="text-muted mag-10px text-inline">Male</p>
            <input type="checkbox" class="mag-10px text-inline"> <p class="text-muted mag-10px text-inline">Female</p>
        </div>                  
    </div>   
    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-age"><h4 class="text-muted pad-2px">Age</h4></a>
        </div>
        <div class="collapse panel-body" id="bl-age">                              
            <div class="col-sm-6">
                <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 18 to 25 years old</p>
            </div>
            <div class="col-sm-6">                                    
                <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 26 to 29 years old</p>                                    
            </div>
            <div class="col-sm-6">                                    
                <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 30 to 35 years old</p>
            </div>
            <div class="col-sm-6">                                    
                <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> 36 than 40 years old</p>
            </div>
            <div class="col-sm-6">                                    
                <input type="radio" name="rdAge"><p class="text-muted mag-10px text-inline"> More than 40 years old</p>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-province"><h4 class="text-muted pad-2px">Province / City</h4></a>
        </div>
        <div class="col-lg-8 collapse panel-body" id="bl-province">
            <select class="form-control">
                <option>Select one</option>
                <option>Phnom Penh</option>
                <option>Batdambang</option>
                <option>Siem Rieb</option>
                <option>Pailin</option>                                    
            </select>                            
        </div>                        
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-language"><h4 class="text-muted pad-2px">Language</h4></a>                           
        </div>
        <div class="col-sm-12 collapse panel-body" id="bl-language">
            <input type="checkbox"/><p class="text-inline text-muted mag-10px">English</p><br>
            <input type="checkbox"/><p class="text-inline text-muted mag-10px">Chines</p><br>
            <input type="checkbox"/><p class="text-inline text-muted mag-10px">Korean</p><br>
            <input type="checkbox"/><p class="text-inline text-muted mag-10px">Japan</p><br>
            <input type="checkbox"/><p class="text-inline text-muted mag-10px">Khmer</p><br>
            <input type="checkbox"/><p class="text-inline text-muted mag-10px">Thai</p><br>
        </div>
    </div> 
    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-experience"><h4 class="text-muted pad-2px">Experience</h4></a>
        </div>
        <div class="mag-10px collapse panel-body" id="bl-experience">                                                 
            <div class="col-s-m6">
                <input id="ex2" class="text-inline" type="range"/>  
            </div>
            <div class="col-sm-6">
                <p class="text-muted text-inline​ pad-2px">
                    At least 1 years
                </p>
            </div>
        </div>
    </div>                                                   

    <div class="panel panel-default">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-salary"><h4 class="text-muted">Salary</h4></a>
        </div>
        <div class="mag-10px collapse panel-body" id="bl-salary">                              
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


