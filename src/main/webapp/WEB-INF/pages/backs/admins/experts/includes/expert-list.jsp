<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="row">
    <div class="col-xs-12">                        
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>First name</th>
                            <th>Last name</th>
                            <th>Position</th>
                            <th>Gender</th>
                            <th>Email</th> 
                            <th>Phone</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <td>1</td>
                    <td>Sok</td>
                    <td>Channy</td>
                    <td>Web developer</td>
                    <td>Male</td>                    
                    <td>Sokchanny.sg@gmail.com</td>                    
                    <td>086 651 443</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/expert/detail"  class="btn btn-primary btn-xs"><i class="fa fa-info"></i></a>
                        <a href="#" data-skin="skin-blue-light" class="btn btn-warning btn-xs"><i class="fa fa-remove"></i></a>
                    </td>                     
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>First name</th>
                            <th>Last name</th>
                            <th>Position</th>
                            <th>Gender</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>                
    </div>   
</div>
