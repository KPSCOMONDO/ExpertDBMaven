<%@page contentType="text/html" pageEncoding="UTF-8"%>               
<div class="col-sm-4 text-left box--bottom--shardow" style="padding-top: 10px;padding-bottom: 10px; margin: 10px 0 10px 0;">
    <div>
        <a class="fa fa-chevron-right" data-toggle="collapse" href="#search-session">
            Filter by: <span class="fa fa-unsorted"></span>
        </a>  
        <!--            <a class="filter--by pull-right">
                        Reset all
                    </a>-->
    </div>   
    <div class="collapse in content" id="search-session">
        <%-- ------------------------------------skill and skill category ---------------------------------------%>
        <div class="panel-default filter--box">  
            <div class="panel-heading">
                <a data-toggle="collapse" class="" href="#bl-category" onclick="onCatClick(this)">
                    <h3 class="" >Skill<span class="icon pull-right fa fa-chevron-right"></span></h3>
                </a>
            </div>
            <div class="collapse panel-body"  id="bl-category">
                <select class="form-filter expert--province--select" ng-model="skill_category_id" 
                        ng-options="item.CATEGORYSTATUS for item in skills_categories">
                    <option value="">-- Choose main skill --</option>
                </select>            
                <div ng-repeat="item in skills| limitTo:5">
                    <input id="{{item.SKILL}}" type="checkbox" value="{{item}}" ng-click="onSkillChange(this)">
                    <label for="{{item.SKILL}}" class="sub-menu">{{item.SKILL}} <small>({{item.COUNT}})</small></label>
                </div>
                <div class="collapse" id="bl-sub-skill" ng-repeat="item in skills| limitTo:skills.length - 5:5">
                    <input id="{{item.SKILL}}" type="checkbox" value="{{item}}" ng-init='checkStatus = false' ng-model='checkStatus' ng-click="onSkillChange(this, checkStatus)">
                    <label for="{{item.SKILL}}" class="sub-menu">{{item.SKILL}} <small>({{item.COUNT}})</small></label>
                </div><br><br>
                <h3 class="sub-menu" ng-if="skills.length == 0">Not avaliable</h3>
                <a data-toggle="collapse" class="search--more" onclick="onChange(this)" href="#bl-sub-skill">
                    <span>More</span> <span class="fa fa-sort-desc"></span>
                </a>                
            </div>
        </div>

        <%-- -------------------------------------------  Position  --------------------------------------------%>
        <div class="panel-default filter--box">  
            <div class="panel-heading">
                <a data-toggle="collapse" class="" href="#bl-position">
                    <h3 class="">Position<span class="icon pull-right icon-angle-down"></span></h3>
                </a>
            </div>
            <div class="collapse panel-body"  id="bl-position">               
                <div ng-repeat="position in positions| limitTo:5">                
                    <input id="{{position.POSITION}}" type="radio" name="rdoPosition" value="{{position.POSITION}}">
                    <label for="{{position.POSITION}}" class="sub-menu">{{position.POSITION| limitTo:32 }}
                        <span ng-if="position.POSITION.length > 32">...</span>
                    </label><br>
                </div>
                <div  class="collapse" id="bl-sub-position">
                    <div ng-repeat="position in positions| limitTo:positions.length - 5:5">
                        <input id="{{position.POSITION}}" type="radio" name="rdoPosition" value="{{position.POSITION}}">
                        <label for="{{position.POSITION}}" class="sub-menu">{{position.POSITION| limitTo: 32 }}
                            <span ng-if="position.POSITION.length > 32">...</span>
                        </label><br>    
                    </div>                
                </div><br><br>       
                <h3 class="sub-menu" ng-if="positions.length == 0">Not avaliable</h3>
                <a data-toggle="collapse" class="search--more" onclick="onChange(this)" href="#bl-sub-position">
                    <span>More</span> <span class="fa fa-sort-desc"></span>
                </a>                
            </div>
        </div> 
        <%-- -------------------------------------------  Gender  --------------------------------------------%>
        <div class="panel-default filter--box">   
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-gender">
                    <h3 class="">Gender</h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-gender">
                <div ng-repeat="item in genders">
                    <input id="{{item.VALUE}}gender" type="radio" name="" checked class="{{item.VALUE}}gender">
                    <label for="{{item.VALUE}}gender" class="sub-menu">
                        {{item.VALUE}}
                    </label><br>
                </div>
            </div>                  
        </div>   
        <%-- -------------------------------------------  Age  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-age">
                    <h3 class="">Age</h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-age">            
                <div ng-repeat="item in ages">                
                    <input id="{{item.MIN}}" type="radio" ng-click="ongAgeChange(this)" name="age" value="{{item}}">
                    <label for="{{item.MIN}}" class="sub-menu">
                        {{item.MIN}} years old 
                        <span ng-if="item.MAX"> to {{item.MAX}} years old</span>
                        <span ng-if="!item.MAX">+</span>
                    </label> 
                </div>
                <h3 class="sub-menu" ng-if="ages.length == 0">Not avaliable</h3>
            </div>
        </div>
        <%-- -------------------------------------------  Province / City  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-province">
                    <h3 class="">Province / City</h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-province">
                <select class="form-filter expert--province--select" ng-model="provice" 
                        ng-options="item.PROVINCESTATUS for item in cities">
                    <option value="">-- Choose city --</option>
                </select>            
            </div>                        
        </div>
        <%-- -------------------------------------------  Language  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-language">
                    <h3 class="">Language</h3>
                </a>                           
            </div>
            <div class="collapse panel-body" id="bl-language">
                <div  ng-repeat="language in languages| limitTo:3">
                    <input id="{{language.LANGUAGE}}" type="checkbox"/>
                    <label for="{{language.LANGUAGE}}" class="sub-menu">
                        {{language.LANGUAGE| limitTo:32}}<span ng-if="language.LANGUAGE.length > 32">...</span>
                    </label><br>
                </div>
                <div class="collapse" id="bl-sub-language">                    
                    <div  ng-repeat="language in languages| limitTo:languages.length - 3:3">
                        <input id="{{language.LANGUAGE}}" type="checkbox"/>
                        <label for="{{language.LANGUAGE}}" class="sub-menu">
                            {{language.LANGUAGE| limitTo:32}}<span ng-if="language.LANGUAGE.length > 32">...</span>
                        </label><br>
                    </div>    
                </div><br><br>
                <h3 class="sub-menu" ng-if="languages.length == 0">Not avaliable</h3>
                <a data-toggle="collapse" class="search--more" onclick="onChange(this)" href="#bl-sub-language">
                    <span>More</span> <span class="fa fa-sort-desc"></span>
                </a>                
            </div>
        </div>
        <%-- -------------------------------------------  Work Experience  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-experience">
                    <h3 class="">Experience</h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-experience"> 
                <div ng-repeat="item in experiences">
                    <input id="{{item.MIN}}age" type="radio" name="rdSalary">
                    <label for="{{item.MIN}}age" class="sub-menu">{{item.MIN}} years
                        <span ng-if="item.MAX"> to {{item.MAX}} years</span> 
                        <span ng-if="!item.MAX"> +</span>
                    </label><br>                                  
                </div>
            </div>
        </div>             
        <%-- -------------------------------------------  expected salary  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-salary">
                    <h3 class="">Salary</h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-salary">
                <div ng-repeat="item in salaries">
                    <input id="{{item.MIN}}salary" type="radio" name="rdSalary">
                    <label for="{{item.MIN}}salary" class="sub-menu">
                        {{item.MIN| currency:"USD ":0}} 
                        <span ng-if="item.MAX"> to {{item.MAX| currency:"USD ":0}}</span>
                        <span ng-if="!item.MAX"> +</span>
                    </label><br>                                  
                </div>         
            </div>
        </div>                        
    </div>
</div>