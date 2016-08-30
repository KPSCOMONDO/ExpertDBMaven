<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
  <head>
    <meta charset="UTF-8">
    <title>ExpertDatabase Login</title>
    

    <link rel="stylesheet" href="../../../../resources/static/jquery/login.css"> 
    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
       
    
  </head>

  <body>
<!-- <div class="pen-title">
  <h1>ExpertDatabase Login Form</h1><span>Pen <i class='fa fa-paint-brush'></i> + <i class='fa fa-code'></i> by <a href='http://andytran.me'>Andy Tran</a></span>
</div> -->
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle"><i class="fa fa-times fa-pencil" style="padding-top: 7px"></i>
    <div class="tooltip">Register</div>
  </div>
  <div class="form">
    <h2>Login to your account</h2>
    <form id="frmLogin" method="" action="">
      <input type="email" placeholder="Email" name="email"/>
      <input type="password" placeholder="Password" name="password"/>
      <button type="submit">Login</button>
    </form>
  </div>
  <div class="form">
    <h2>Create an account</h2>
    <form>
      <input type="text" placeholder="Username"/>
      <input type="password" placeholder="Password"/>
      <input type="email" placeholder="Email Address"/>
      <input type="tel" placeholder="Phone Number"/>
      <button>Register</button>
    </form>
  </div>
  <div class="cta"><a href="#">Forgot your password?</a></div>
</div>
        <script src="../../../../resources/static/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../../../../resources/static/jquery/login.js" type="text/javascript"></script>
        <script>
		$(document).ready(function(){
			 $("#frmLogin").submit(function(e){
				e.preventDefault();
				$.ajax({
					url:"${pageContext.request.contextPath}/login",
					type:"POST",
					data:$(this).serialize(),
					success:function(data){
						if(data == "User account is locked"){
	  	            		alert(data);
	  	            	}else if(data == "User is disabled"){
	  	            		alert(data);
	  	            	}else if(data == "Bad credentials"){
	  	            		alert(data);
	  	            	}else{
	  	            		//console.log(data);
	  	            		//alert("Logined success.");
	  	            		location.href =data;
	  	            	}
					},
					error:function(err){
						console.log(err);
					}
				});
			}); 
		});
	</script>
</body>
  
</html>
