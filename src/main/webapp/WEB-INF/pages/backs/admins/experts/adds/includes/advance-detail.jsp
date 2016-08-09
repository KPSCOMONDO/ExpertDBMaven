<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="row">
    <div class="col-xs-12">                        
        <div class="box">
            <div class="box box-primary">              
                <div class="box-body">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="panel with-nav-tabs panel-primary">
                                <div class="panel-heading clearfix">
                                    <div class="pull-left">
                                        <button type="button" class="btn btn-info btn-sm">
                                            <i class="fa fa-plus"></i>
                                        </button> 
                                    </div>
                                    <div class="pull-right">                                       
                                        <ul class="nav nav-tabs">                                        
                                            <li class="active">
                                                <a href="#education" data-toggle="tab">EDUCATION</a>
                                            </li>
                                            <li>
                                                <a href="#language" data-toggle="tab">LANGUAGE</a>
                                            </li>   
                                            <li>
                                                <a href="#skill" data-toggle="tab">SKILL</a>
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
                                                <a href="#document" data-toggle="tab">Document</a>
                                            </li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="panel-body">                  
                                    <div class="tab-content">
                                        <div class="tab-pane fade in active" id="education">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Academic year</th>
                                                    <th>Course/Major</th>
                                                    <th>Description</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>                                                        
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="2010-2011" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="ID" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="Royal University of Phnom Penh" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>                                                        
                                                    </tbody>
                                                </table>
                                            </div>                          
                                        </div>
                                        <div class="tab-pane fade" id="language">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Language</th>
                                                    <th>Level</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="Khmer" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="Pro" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>                                                        
                                                    </tbody>
                                                </table>
                                            </div>                          
                                        </div>
                                        <div class="tab-pane fade" id="skill">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Category</th>
                                                    <th>Skill</th>
                                                    <th>Level</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="Web" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="HTML" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="Pro" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>                                                        
                                                    </tbody>
                                                </table>
                                            </div>                          
                                        </div>
                                        <div class="tab-pane fade" id="work__experience">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Year</th>
                                                    <th>Experience</th>
                                                    <th>Description</th>
                                                    <th>Link</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="2010-2011" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="Khmer Academy" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="Work Project" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="www.git.com.org" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>                                                        
                                                    </tbody>
                                                </table>
                                            </div>                          
                                        </div>
                                        <div class="tab-pane fade" id="other__project">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Project</th>
                                                    <th>Description</th>           
                                                    <th>Link</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="Green" class="edit--text" disabled/></td>                                                            
                                                            <td><input type="text" value="Save Country" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="www.com.org" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>            
                                                    </tbody>
                                                </table>
                                            </div>                          
                                        </div>
                                        <div class="tab-pane fade" id="other__award">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Award/Achievement</th>
                                                    <th>Description</th>           
                                                    <th>Link</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="Best Hacker" class="edit--text" disabled/></td>                                                            
                                                            <td><input type="text" value="Attack" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="www.liked.git.org" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>            
                                                    </tbody>
                                                </table>
                                            </div>                          
                                        </div>
                                        <div class="tab-pane fade" id="document">
                                            <div class="content-2" style="padding-top: 20px">
                                                <table class="table table-condensed">
                                                    <thead>
                                                    <th>#</th>
                                                    <th>Status</th>
                                                    <th>Description</th>           
                                                    <th>Link</th>
                                                    <th>Action</th>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td><input type="text" value="Transcript" class="edit--text" disabled/></td>                                                            
                                                            <td><input type="text" value="TRCT" class="edit--text" disabled/></td>
                                                            <td><input type="text" value="www.lived.org" class="edit--text" disabled/></td>
                                                            <td>
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i></a>                                        
                                                                <a href="#" onclick="edit(this)" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                                                            </td>
                                                        </tr>            
                                                    </tbody>
                                                </table>                                                
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
</div>


