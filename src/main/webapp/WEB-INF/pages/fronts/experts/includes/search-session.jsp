<%@page contentType="text/html" pageEncoding="UTF-8"%>               
<div class="col-sm-4 text-left box--bottom--shardow" style="padding-top: 10px;padding-bottom: 10px; margin: 10px 0 10px 0;">
    <div>
        <a class="" data-toggle="collapse" href="#search-session">
            Filter by: <span class="fa fa-unsorted"></span>
        </a>  
        <a class="pull-right" href="">
            Reset all
        </a>
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
                <div ng-repeat="item in SKILLS| limitTo:5">
                    <input id="{{item.SKILL}}" type="checkbox" value="{{item}}" ng-click="onSkillChange(this)">
                    <label for="{{item.SKILL}}" class="sub-menu">{{item.SKILL}} <small>({{item.COUNT}})</small></label>
                </div>
                <div class="collapse" id="bl-sub-skill" ng-repeat="item in skills| limitTo:skills.length" ng-if="$index>4">
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
                <a data-toggle="collapse" class="" href="#bl-position" onclick="onCatClick(this)">
                    <h3 class="" >Position<span class="icon pull-right fa fa-chevron-right"></span></h3>
                </a>
            </div>
            <div class="collapse panel-body"  id="bl-position">               
                <div ng-repeat="item in POSITIONS| limitTo:5">                
                    <input id="{{item.POSITION}}" type="radio" name="rdoPosition" value="{{item.POSITION}}">
                    <label for="{{item.POSITION}}" class="sub-menu">{{item.POSITION| limitTo:32 }}
                        <span ng-if="item.POSITION.length > 32">...</span>
                    </label><br>
                </div>
                <div  class="collapse" id="bl-sub-position">
                    <div ng-repeat="item in POSITIONS"  ng-if="$index>4">
                        <input id="{{item.POSITION}}" type="radio" name="rdoPosition" value="{{item.POSITION}}">
                        <label for="{{item.POSITION}}" class="sub-menu">{{item.POSITION| limitTo: 32 }}
                            <span ng-if="item.POSITION.length > 32">...</span>
                        </label><br>    
                    </div>                
                </div><br><br>       
                <h3 class="sub-menu" ng-if="POSITIONS.length == 0">Not avaliable</h3>
                <a data-toggle="collapse" class="search--more" onclick="onChange(this)" href="#bl-sub-position">
                    <span>More</span> <span class="fa fa-sort-desc"></span>
                </a>                
            </div>
        </div> 
        <%-- -------------------------------------------  Gender  --------------------------------------------%>
        <div class="panel-default filter--box">   
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-gender" onclick="onCatClick(this)">
                    <h3 class="" >Gender<span class="icon pull-right fa fa-chevron-right"></h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-gender">
                <div ng-repeat="item in GENDERS">
                    <input id="{{item.VALUE}}gender" type="radio" name="" class="{{item.VALUE}}gender">
                    <label for="{{item.VALUE}}gender" class="sub-menu">
                        {{item.VALUE}}
                    </label><br>
                </div>
            </div>                  
        </div>   
        <%-- -------------------------------------------  Age  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-age" onclick="onCatClick(this)">
                    <h3 class="" >Age<span class="icon pull-right fa fa-chevron-right"></h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-age">            
                <div ng-repeat="item in AGES">                
                    <input id="{{item.MIN}}" type="radio" ng-click="ongAgeChange(item)" name="age" value="{{item}}">
                    <label for="{{item.MIN}}" class="sub-menu">
                        {{item.MIN}} years old 
                        <span ng-if="item.MAX"> to {{item.MAX}} years old</span>
                        <span ng-if="!item.MAX">+</span>
                    </label> 
                </div>
                <h3 class="sub-menu" ng-if="AGES.length == 0">Not avaliable</h3>
            </div>
        </div>
        <%-- -------------------------------------------  Province / City  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-province" onclick="onCatClick(this)">
                    <h3 class="" >Location<span class="icon pull-right fa fa-chevron-right"></h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-province">
                <select class="form-filter expert--province--select" ng-model="cbo_location" 
                        ng-options="item.LOCATIONSTATUS for item in LOCATIONS">
                    <option value="">-- Choose city --</option>
                </select>            
            </div>                        
        </div>
        <%-- -------------------------------------------  Language  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-language" onclick="onCatClick(this)">
                    <h3 class="" >Language<span class="icon pull-right fa fa-chevron-right"></h3>
                </a>                           
            </div>
            <div class="collapse panel-body" id="bl-language">
                <div  ng-repeat="item in LANGUAGES| limitTo:5">
                    <input id="{{item.LANGUAGE}}" type="checkbox"/>
                    <label for="{{item.LANGUAGE}}" class="sub-menu">
                        {{item.LANGUAGE| limitTo:32}}<span ng-if="item.LANGUAGE.length > 32">...</span>
                    </label><br>
                </div>
                <div class="collapse" id="bl-sub-language">                    
                    <div  ng-repeat="item in LANGUAGES" ng-if="$index>4">
                        <input id="{{item.LANGUAGE}}" type="checkbox"/>
                        <label for="{{item.LANGUAGE}}" class="sub-menu">
                            {{item.LANGUAGE| limitTo:32}}<span ng-if="item.LANGUAGE.length > 32">...</span>
                        </label><br>
                    </div>    
                </div><br><br>
                <h3 class="sub-menu" ng-if="LANGUAGES.length == 0">Not avaliable</h3>
                <a data-toggle="collapse" class="search--more" onclick="onChange(this)" href="#bl-sub-language">
                    <span>More</span> <span class="fa fa-sort-desc"></span>
                </a>                
            </div>
        </div>
        <%-- -------------------------------------------  Work Experience  --------------------------------------------%>
        <div class="panel-default filter--box">
            <div class="panel-heading">
                <a data-toggle="collapse" href="#bl-experience" onclick="onCatClick(this)">
                    <h3 class="" >Experience<span class="icon pull-right fa fa-chevron-right"></h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-experience"> 
                <div ng-repeat="item in EXPERIENCES">
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
                <a data-toggle="collapse" href="#bl-salary" onclick="onCatClick(this)">
                    <h3 class="" >Salary<span class="icon pull-right fa fa-chevron-right"></h3>
                </a>
            </div>
            <div class="collapse panel-body" id="bl-salary">
                <div ng-repeat="item in SALARIES">
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