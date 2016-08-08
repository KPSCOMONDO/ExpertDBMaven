<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="box box-info collapsed-box">
    <div class="box-header">
        <h3 class="box-title">Add new level
            <small>Click on + drop down form to add new.</small>
        </h3>
        <div class="pull-right box-tools">
            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-plus"></i></button>                   
        </div>
    </div>
    <div class="box-body pad">
        <form role="form">
            <div class="box-body">
                <div class="form-group">
                    <label for="txlevel">Level status</label>
                    <input id="txlevel" type="text" class="form-control" placeholder="New languege">
                </div>
                <div class="form-group">
                    <label for="txrange">Level range</label>
                    <input id="txrange" type="number" class="form-control" placeholder="Range between 0 to 100">
                </div>
            </div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
</div>