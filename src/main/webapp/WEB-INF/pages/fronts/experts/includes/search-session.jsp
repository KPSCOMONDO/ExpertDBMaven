<%@page contentType="text/html" pageEncoding="UTF-8"%>               
<div class="col-sm-4 text-left box--bottom--shardow searck--categroy">                  
    <h3 class="ol-sm-12">Filter by:</h3>                              
    <div class="panel-default filter--box">  
        <div class="panel-heading">
            <a data-toggle="collapse" class="" href="#bl-category">
                <h3 class="">Skill<span class="icon pull-right icon-angle-down"></span></h3>
            </a>
        </div>
        <div class="collapse panel-body"  id="bl-category">
            <select class="form-filter expert--province--select" ng-model="cbo_skill_category">                    
                <option ng-repeat="skill_category in skills_categories" value="{{skill_category.skill_category_id}}">
                    {{skill_category.CATEGORYSTATUS}}
                </option>                        
            </select><br></br>                                                                                                          
            <div ng-repeat="skill in skills_by_cat_id">
                <label class="sub-menu" >
                    <input type="checkbox">&nbsp;&nbsp;{{skill.skill_name}}
                </label>
            </div>
            <label class="sub-menu" >
                &nbsp;&nbsp;More...
            </label>
        </div>
    </div>
    <div class="panel-default filter--box">  
        <div class="panel-heading">
            <a data-toggle="collapse" class="" href="#bl-position">
                <h3 class="">Position<span class="icon pull-right icon-angle-down"></span></h3>
            </a>
        </div>
        <div class="collapse panel-body"  id="bl-position">
            <select class="form-filter expert--province--select" ng-model="cbo_skill_category">                    
                <input type="radio" name="rdoPosition" ng-repeat="position in positions">
                    {{position.POSITION}}
                                       
            </select><br></br>                                                                                                          
            <div ng-repeat="skill in skills_by_cat_id">
                <label class="sub-menu" >
                    <input type="checkbox">&nbsp;&nbsp;{{skill.skill_name}}
                </label>
            </div>
            <label class="sub-menu" >
                &nbsp;&nbsp;More...
            </label>
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
            <input type="radio" name="rdoGender">&nbsp;&nbsp;<label class="sub-menu">Both</label>
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
            <input type="radio" name="rdo_age">&nbsp;&nbsp;<label class="sub-menu">36 to 40 years old</label><br>                              
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
            <select class="form-filter expert--province--select">
                <option ng-repeat="province in provinces">
                    {{province.province_status}}
                </option>                                    
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
            <div ng-repeat="language in languages">
                <label class="sub-menu" >
                    <input type="checkbox">&nbsp;&nbsp;{{language.LANGUAGE}}
                </label>
            </div>
            <label class="sub-menu" >
                &nbsp;&nbsp;More...
            </label>            
        </div>
    </div> 
    <div class="panel-default filter--box">
        <div class="panel-heading">
            <a data-toggle="collapse" href="#bl-experience">
                <h3 class="">Experience</h3>
            </a>
        </div>
        <div class="collapse panel-body" id="bl-experience">                                                 
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;0 year to 1 year</label><br>                                  
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;1 year to 2 years</label><br>                            
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;2 year to 4 year</label><br>                                   
            <input type="radio" name="rdSalary"><label class="sub-menu">&nbsp;&nbsp;4 years + </label>
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


