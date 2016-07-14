<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <jsp:include page="../includes/bootstrap.jsp" />       
        <link href="../../../../resources/static/css/custom/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-info">
                        <div class="panel-heading">
                            <h4 class="panel-title"><span><i class="fa fa-user"></i></span> <b>Sign In</b></h4>
                        </div>
                        <div class="panel-body">                                                                                       
                            <form>
                                
                                    <div class="form-group">                                 
                                        <input class="form-control" id="txEmail" placeholder="E-mail" name="email" type="text"/>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="txPassword" placeholder="Password" name="password" type="password" value="">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>                              
                             
                            </form>
                            <input type="submit" id="btn-login1" class="btn btn-lg btn-success btn-block" value="Login" >
                            <div class="text-right">
                                <label class="text-muted">Is not a member? <a href="signup.html">Sign up</a></label><br>
                                <label class="text-muted">Forget password? <a href="resetpassword.html">Reset password</a></label>  
                            </div>                            
                        </div>
                        <div class="panel-footer text-center">
                            <a href="index.html" class="text-center">Cancel</a>
                        </div>                            
                    </div>
                </div>
            </div>
        </div> 
    </body>
</html>