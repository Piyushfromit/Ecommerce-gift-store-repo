<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SignIn Page</title>
   <link rel="stylesheet" type="text/css" href="/resources/css/user.css?jknj">
   
    
</head>
<body>

  


  <div class="regform">
    <h2>Login Form</h2>
		<form th:action="/login" method="post">
			<div  class="form-group">
			<input type="text" name="username" placeholder="MailId"/>
			</div>
			<div  class="form-group">
			<input type="password" name="password" placeholder="Password"/>
			</div>
			
			 <div class="form-group">
			<input type="submit" class="button" value="Log in" />
			</div>
		</form>
		<p>Don't have an account? <a href="/register">SignUp</a></p>
    
  </div>
  
  
  
</body>
</html>