<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-4 text-left">                  
    <h3 class="ol-sm-12">Filter by:</h3>                              
    <div class="panel-default filter--box">  
        <div class="panel-heading">
            <a data-toggle="collapse" class="" href="#bl-category">
                <h3 class="">Skill<span class="icon pull-right icon-angle-down"></span></h3>
            </a>
        </div>
        <div role="navigation" class="collapse collapsing panel-body" id="bl-category">
            <div class="sidebar-nav navbar-collapse">
                <input type="text" class="form-filter" placeholder="Write specific skill...">
                <ul class="nav">                                                                          
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
                            <li>
                                <a href="#">......</a>
                            </li>
                        </ul>
                    </li>                                                                                  
                </ul>

            </div>
        </div>
    </div>                    

    <div class="panel-default filter--box">   
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-gender">
                <h3 class="">Gender</h3>
            </a>
        </div>
        <div class="collapse panel-body" id="bl-gender">
            <input type="radio" name="rdoGender" checked class="">&nbsp;&nbsp;<label class="sub-menu">Male</label><br>
            <input type="radio" name="rdoGender">&nbsp;&nbsp;<label class="sub-menu">Female</label><br>
            <input type="radio" name="rdoGender">&nbsp;&nbsp;<label class="sub-menu">Other</label>
        </div>                  
    </div>   
    <div class="panel-default filter--box">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-age">
                <h3 class="">Age</h3>
            </a>
        </div>
        <div class="collapse panel-body" id="bl-age">                                        
            <input type="radio" name="rdo_age">&nbsp;&nbsp;<label class="sub-menu">18 to 25 years old</label><br>                                       
            <input type="radio" name="rdo_age">&nbsp;&nbsp;<label class="sub-menu">26 to 29 years old</label><br>                                                                       
            <input type="radio" name="rdo_age">&nbsp;&nbsp;<label class="sub-menu">30 to 35 years old</label><br>                                               
            <input type="radio" name="rdo_age">&nbsp;&nbsp;<label class="sub-menu">36 than 40 years old</label><br>                              
            <input type="radio" name="rdo_age">&nbsp;&nbsp;<label class="sub-menu">More than 40 years old</label><br>  
        </div>
    </div>
    <div class="panel-default filter--box">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-province">
                <h3 class="">Province / City</h3>
            </a>
        </div>
        <div class="collapse panel-body" id="bl-province">
            <select class="form-control">
                <option>Select one</option>
                <option>Phnom Penh</option>
                <option>Batdambang</option>
                <option>Siem Rieb</option>
                <option>Pailin</option>                                    
            </select>                            
        </div>                        
    </div>

    <div class="panel-default filter--box">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-language">
                <h3 class="">Language</h3>
            </a>                           
        </div>
        <div class="collapse panel-body" id="bl-language">
            <input type="checkbox"/>&nbsp;&nbsp;<label class="sub-menu">English</label><br>
            <input type="checkbox"/>&nbsp;&nbsp;<label class="sub-menu">Chines</label><br>
            <input type="checkbox"/>&nbsp;&nbsp;<label class="sub-menu">Korean</label><br>
            <input type="checkbox"/>&nbsp;&nbsp;<label class="sub-menu">Japan</label><br>
            <input type="checkbox"/>&nbsp;&nbsp;<label class="sub-menu">Khmer</label><br>
            <input type="checkbox"/>&nbsp;&nbsp;<label class="sub-menu">Thai</label><br>
        </div>
    </div> 
    <div class="panel-default filter--box">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-experience">
                <h3 class="">Experience</h3>
            </a>
        </div>
        <div class="collapse panel-body" id="bl-experience">                                                 
            <div class="col-s-m6">
                <input id="ex2" class="text-inline" type="range"/>  
            </div>
            2 years
        </div>
    </div>                                                   

    <div class="panel-default filter--box">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-salary">
                <h3 class="">Salary</h3>
            </a>
        </div>
        <div class="collapse panel-body" id="bl-salary">                                                                 
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;0 USD - 199 USD</label><br>                                  
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;200 - 499 USD</label><br>                            
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;1,000 - 1,999 USD</label><br>                                   
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;2,000 USD+</label>
        </div>
    </div>                        
</div>


