<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="box box-info collapsed-box">
    <div class="box-header">
        <h3 class="box-title">Add new job position
            <small>Click on + drop down form to add new.</small>
        </h3>
        <div class="pull-right box-tools">            
            <input type="button" class="btn btn-info btn-sm" id="edit" data-widget="collapse" data-toggle="tooltip" title="Collapse" 
                   ng-model="btAdd"/>                                        
        </div>
    </div>
    <div class="box-body pad">        
        <div class="box-body">
            <form ng-submit="createExpert()">
                <div class="col-sm-6">
                    <%----------------------------------------- Basic information  ----------------------------------%>
                    <h3 class="box-title text-red">Basic Information</h3>
                    <div class="form-group">
                        <img src="" style="width: 80px;height: 100px;" alt="UNAVALIABEL">
                        <label for="txtProfile">Upload profile</label>
                        <input id="txtFullName" type="file" placeholder="Name" ng-click="upLoadProfile()">
                    </div>
                    <div class="form-group">
                        <label for="txtFullName">First name</label>
                        <input ng-model="txtFullName" id="txtFullName" type="text" class="form-control" placeholder="Name" required>
                    </div>
                    <div class="form-group">
                        <label for="cboGender">Gender</label>
                        <select class="form-filter expert--province--select form-control" id="cboGender" 
                                ng-model="cboGender" ng-options="item.VALUE for item in GENDERS" required>
                            <option value="" selected>-- {{gender}} --</option>
                        </select>            
                    </div>
                    <div class="form-group">
                        <label for="txtDateOfBirth">Date of birth</label>
                        <input ng-model="txtDateOfBirth" id="txtDateOfBirth" type="date" class="form-control" placeholder="Date of birth" required>
                    </div>
                    <div class="form-group">
                        <label for="txtInterest">Date of birth</label>
                        <input ng-model="txtInterest" id="txtInterest" type="text" class="form-control" placeholder="Date of birth" required>
                    </div>
                </div>                
                <div class="col-sm-6">
                    <%----------------------------------------- Address  ----------------------------------%>
                    <h3 class="box-title text-red">Address</h3>
                    <div class="form-group">
                        <label for="txtCommune">Commune</label>
                        <input ng-model="txtCommune" id="txtCommune" type="text" class="form-control" placeholder="Commune name" required>
                    </div>
                    <div class="form-group">
                        <label for="txtDistrict">District</label>
                        <input ng-model="txtDistrict" id="txtDistrict" type="text" class="form-control" placeholder="District name" required>
                    </div>
                    <div class="form-group">
                        <label for="cboCity">Province/City</label>
                        <select class="form-filter expert--province--select form-control" ng-model="cboCity" ng-options="item.LOCATIONSTATUS for item in LOCATIONS" id="cboCity">
                            <option value="">-- {{city}} --</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="txtCountry">Country</label>
                        <input ng-model="txtCountry" id="txtCountry" type="text" class="form-control" placeholder="Country name" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <%----------------------------------------- Contact  ----------------------------------%>
                    <h3 class="box-title text-red">Contact</h3>
                    <div class="col-sm-6 row">
                        <div class="form-group">
                            <label for="txtPhoneA">Phone 1</label>
                            <input ng-model="txtPhoneA" id="txtPhoneA" type="text" class="form-control" placeholder="Phone first line" required>
                        </div>
                        <div class="form-group">
                            <label for="txtEmailA">Email 1</label>
                            <input ng-model="txtEmailA" id="txtEmailA" type="email" class="form-control" placeholder="Email first line" required>
                        </div>                        
                    </div>
                    <div class="col-sm-6">                        
                        <div class="form-group">
                            <label for="txtPhoneB">Phone 2</label>
                            <input ng-model="txtPhoneB" id="txtPhoneB" type="text" class="form-control" placeholder="Phone second line">
                        </div>
                        <div class="form-group">
                            <label for="txtEmailB">Email 2</label>
                            <input ng-model="txtEmailB" id="txtEmailB" type="email" class="form-control" placeholder="Email second line">
                        </div>                        
                    </div>
                    <div class="form-group">
                        <label for="txtWebsiteA">Website/block URL 1</label>
                        <input ng-model="txtWebsiteA" id="txtWebsiteA" type="text" class="form-control" placeholder="Website/block URL 1" required>
                    </div>
                    <div class="form-group">
                        <label for="txtWebsiteB">Website/block URL 2</label>
                        <input ng-model="txtWebsiteB" id="txtWebsiteB" type="text" class="form-control" placeholder="Website/block URL 2" required>
                    </div>

                    <div class="form-group">
                        <label for="txtSocialA">Facebook/LinkedIn URL 1</label>
                        <input ng-model="txtSocialA" id="txtSocialA" type="text" class="form-control" placeholder="Socail URL 1">
                    </div>
                    <div class="form-group">
                        <label for="txtSocialB">Facebook/LinkedIn URL 2</label>
                        <input ng-model="txtSocialB" id="txtSocialB" type="text" class="form-control" placeholder="Social URL 2">
                    </div>
                </div>

                <div class="col-sm-6">
                    <%------------------------------------ Work Experience ------------------------%>
                    <h3 class="box-title text-red">Work information</h3>                                    
                    <div class="form-group">
                        <label for="txtCurrentWorkPlace">Current workplace</label>
                        <input ng-model="txtCurrentWorkPlace" id="txtCurrentWorkPlace" type="text" class="form-control" placeholder="Current workplace" required>
                    </div>
                    <div class="form-group">
                        <label for="cboPositionA">In position</label>
                        <select class="form-filter expert--province--select form-control" ng-model="cboPositionA" 
                                ng-options="item.POSITION for item in POSITIONS" id="cboPositionA" required>
                            <option value="">-- Choose position --</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="txtYearexperience">Year experience</label>
                        <input ng-model="txtYearexperience" id="txtYearexperience" type="number" class="form-control" placeholder="Salary" required>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h3 class="box-title text-red">Interest work information</h3>                                       
                    <div class="form-group">
                        <label for="cboPositionB">Work position</label>
                        <select class="form-filter expert--province--select form-control" ng-model="cboPositionB" ng-options="item.POSITION for item in POSITIONS" id="cboPositionB" required>
                            <option value="">-- Choose position --</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="txtSalary">Salary</label>
                        <input ng-model="txtSalary" id="txtSalary" type="number" class="form-control" placeholder="Salary" required>
                    </div> 
                    <div class="form-group">
                        <label for="cboLocation">Interest work location</label>
                        <select class="form-filter expert--province--select form-control" ng-model="cboLocation" ng-options="item.LOCATIONSTATUS for item in LOCATIONS" id="cboLocation" required>
                            <option value="">-- {{location}} --</option>
                        </select>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-12">
                        <%-- ---------------------------------------  Language  -------------------------------%>
                        <h3 class="box-title text-red">Language</h3>
                        <div class="box-body">                
                            <div class="form-group">
                                <table style="width: 100%;" class="t able-striped table-condensed">
                                    <tr ng-repeat="item in LANGUAGES"> 
                                        <td style="width: 40%;">
                                            <input type="checkbox" value="" ng-click="onLanguageCheck(item)" id="{{item.LANGUAGE}}">
                                            <label for="{{item.LANGUAGE}}">&nbsp;&nbsp;{{item.LANGUAGE}}</label>
                                        </td>
                                        <td ng-repeat="level in LEVELS">
                                            <input ng-checked="!item.CHECKED" ng-click="onLaguageLevelCheck(item, level)" type="radio" 
                                                   name="{{item.LANGUAGE}}" id="{{level.LEVELSTATUS}}" required ng-show="item.CHECKED">
                                            &nbsp;&nbsp;{{level.LEVELSTATUS}}                                
                                        </td>                                   
                                    </tr>
                                </table>               
                            </div>
                        </div>
                    </div> 
                    <div class="col-sm-12">
                        <h4 class="box-title text-red">Added language</h4>                        
                        <table class="table-condensed table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Language</th>
                                    <th>Level</th>                                
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="item in ADD_LANGUAGES">
                                    <td>{{$index + 1}}</td>
                                    <td>{{item.LANGUAGE}}</td>
                                    <td>{{item.LEVEL}}</td>                                
                                    <td>
                                        <label for="{{item.LANGUAGE}}" ng-click="deleteLanguage($index)" class="btn btn-danger btn-xs">
                                            <i class="fa fa-remove"></i>
                                        </label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <input type="submit" id="btSubmit" class="hidden">
                <input type="reset" id="btReset" class="hidden">                                                                                                
            </form>
            <div class="col-sm-12">
                <div class="col-sm-10">
                    <h3 class="box-title text-red">Education</h3>                                       
                    <form ng-submit="addEducation()">
                        <div class="form-group">
                            <label for="txtMajor">Major/course</label>
                            <input ng-model="txtMajor" id="txtMajor" type="text" class="form-control" placeholder="Major/course" required>
                        </div>
                        <div class="form-group">
                            <label for="txtGraduateDate">Graduated/Finished date</label>
                            <div>
                                <div class="col-sm-5">
                                    <input ng-model="txtGraduateDate" id="txtGraduateDate" type="date" class="form-control" required>
                                </div>                                
                            </div>                                                                               
                        </div>
                        <div class="form-group">
                            <label for="txtEducationDescription">Description</label>
                            <textarea ng-model="txtEducationDescription" id="txtEducationDescription" rows="5" class="form-control" placeholder="Education description" required></textarea>
                        </div>      
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">
                                <span class='fa fa-plus'>Add</span>
                            </button>
                        </div>
                    </form>
                </div>

                <div class="col-sm-12">
                    <h4 class="box-title text-red">Added education</h4>                        
                    <table class="table-condensed table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Course/Major</th>
                                <th>Year</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="item in ADD_EDUCATIONS">
                                <td>{{$index + 1}}</td>
                                <td>{{item.STATUS}}</td>
                                <td>{{item.GRADUATED_DATE}}</td>
                                <td>{{item.DESCRIPTION}}</td>
                                <td>
                                    <a ng-click="deleteEducation($index)" class="btn btn-danger btn-xs">
                                        <i class="fa fa-remove"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-sm-12">
                <%--------------------------------- Work Experience --------------------------------------%>
                <div class="col-sm-10">
                    <form ng-submit="addExperience()">
                        <h3 class="box-title text-red">Work experience</h3>                                    
                        <div class="form-group">
                            <label for="txtPosition">Position</label>
                            <input ng-model="txtPosition" id="txtPosition" type="text" class="form-control" 
                                   placeholder="Position" required>
                        </div>
                        <div class="form-group">
                            <label for="txtYearFromB">Year</label>
                            <div>
                                <div class="col-sm-5">
                                    <input ng-model="txtYearFromB" id="txtYearFromB" type="date" class="form-control" 
                                           placeholder="From" required>
                                </div>
                                <div class="col-sm-2">
                                    <label for="txtYearToB">To</label>
                                </div>
                                <div class="col-sm-5">
                                    <input ng-model="txtYearToB" id="txtYearToB" type="date" class="form-control" 
                                           placeholder="To" required>
                                </div>
                            </div>                                                                       
                        </div>
                        <div class="form-group">
                            <label for="txtExperienceDescription">Description</label>
                            <textarea ng-model="txtExperienceDescription" id="txtExperienceDescription" rows="5" class="form-control" 
                                      placeholder="New job position" required></textarea>
                        </div>      
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary"><span class='fa fa-plus'>Add</span></button>
                        </div>
                        </h3>
                    </form>
                </div>
                <div class="col-sm-12">
                    <h4 class="box-title text-red">Added experience</h4>                        
                    <table class="table-condensed table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Position</th>
                                <th>Year</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>                        
                        </thead>
                        <tbody>
                            <tr ng-repeat="item in ADD_EXPERIENCES"> 
                                <td>{{$index + 1}}</td>
                                <td>{{item.STATUS}}</td>
                                <td>{{item.YEAR}}</td>
                                <td>{{item.DESCRIPTION}}</td>                                
                                <td>
                                    <a ng-click="deleteExperience($index)" class="btn btn-danger btn-xs">
                                        <i class="fa fa-remove"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col-sm-12">
                <div class="col-sm-12">
                    <%-- --------------------------------------- SKILL =-------------------------------%>
                    <h3 class="box-title text-red">Skill</h3>
                    <div class="box-body">
                        <label for="cboCategory"></label>
                        <select class="form-filter form-control" ng-model="cboCategory" 
                                ng-options="item.CATEGORYSTATUS for item in SKILLCATEGORIES" id="cboCategory">
                            <option value="">-- Choose main skill --</option>
                        </select>                
                        <br>
                        <div class="form-group">
                            <table style="width: 100%;" class="t able-striped table-condensed">
                                <tr ng-repeat="item in SKILLS"> 
                                    <td style="width: 40%;">
                                        <input type="checkbox" value="" ng-click="onSkillCheck(item)" id="{{item.SKILL}}">
                                        <label for="{{item.SKILL}}">&nbsp;&nbsp;{{item.SKILL}}</label>
                                    </td>
                                    <td ng-show="item.CHECKED" ng-repeat="level in LEVELS">
                                        <input ng-checked="!item.CHECKED" ng-click="onSkillLevelCheck(item, level)" type="radio" 
                                               name="{{item.SKILL}}" id="{{level.LEVELSTATUS}}" required>&nbsp;&nbsp;{{level.LEVELSTATUS}}                                
                                    </td>                                    
                                </tr>
                            </table>               
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <h4 class="box-title text-red">Added skill</h4>
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Skill</th>
                                    <th>Level</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="item in ADD_SKILLS">
                                    <td>{{$index + 1}}</td>
                                    <td>{{item.SKILL}}</td>
                                    <td>{{item.LEVEL}}</td>
                                    <td>
                                        <label ng-click="deleteSkill($index)" for="{{item.SKILL}}" class="btn btn-danger btn-xs">
                                            <i class="fa fa-remove"></i>
                                        </label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <%-- ---------------------------------------  Document  -------------------------------%>
                <div class="col-sm-10">
                    <form ng-submit="addDocument()" id="docForm">
                        <h3 class="box-title text-red">Related document</h3>
                        <div class="box-body">      
                            <div class="form-group">
                                <label>Type&nbsp;&nbsp;&nbsp;&nbsp;</label><br>
                                <span ng-repeat="item in DOCUMENTS" style="margin-right: 20px;">
                                    <input type="radio" ng-click="onDocumentTypeClick(item)" 
                                           name="document" required>&nbsp;&nbsp;&nbsp;{{item.VALUE}}                                
                                </span>              
                            </div>
                            <div class="form-group">
                                <label for="txtDocumentTitle">Title</label>                                                       
                                <input ng-model="txtDocumentTitle" id="txtDocumentTitle" type="text" 
                                       class="form-control" placeholder="Title" required>
                            </div>
                            <div class="form-group">
                                <label for="Upload">Upload file</label>                                                      
                                <input ng-model="Upload" id="Upload" name="file" type="file" required></textarea>                                                                                                    
                            </div>                           
                            <div class="form-group">
                                <label for="txtDocumentDescription">Description</label>                                                      
                                <textarea ng-model="txtDocumentDescription" id="txtDocumentDescription" rows="5" 
                                          class="form-control" placeholder="Description" required></textarea>                                                                                                    
                            </div>
                            <div class="form-group">
                                <button  type="submit" class="btn btn-primary"><span class='fa fa-plus'>Add</span></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-12 table-responsive">
                    <h4 class="box-title text-red">Added document</h4>                        
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Type</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>                                
                        </thead>
                        <tbody>
                            <tr ng-repeat="item in ADD_DOCUMENTS">
                                <td>{{$index + 1}}</td>
                                <td>{{item.STATE}}</td>
                                <td>{{item.STATUS}}</td>
                                <td>{{item.DESCRIPTION}}</td>
                                <td>
                                    <a ng-click="deleteDocument($index)" class="btn btn-danger btn-xs">
                                        <i class="fa fa-remove"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div> 
    </div>
    <div class="box-footer">
        <label class="btn btn-primary" for="btSubmit">Submit</label>
        <label type="reset" ng-click="reset()" class="btn btn-danger" for="btReset">Reset</label>
    </div>    
</div>
