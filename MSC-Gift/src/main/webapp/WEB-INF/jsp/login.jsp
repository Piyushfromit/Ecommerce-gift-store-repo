<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
   <head>
   
   <jsp:include page="include/commonup.jsp" />
   
   </head>
   <body>
      <div id="page" class="site">
         <jsp:include page="include/infoheader.jsp" />
         <jsp:include page="include/header.jsp" />
         
         
         
<div id="content" class="site-content">
    <div id="primary" class="content-area width-normal">
    <main id="main" class="site-main">
    <div class="cont maincont">
    <h1 class="maincont-ttl">Registration / Login</h1>
    <ul class="b-crumbs">
    <li><a href="index.html">Home</a></li>
    <li>Registration & Login</li>
    </ul><article class="page-cont">
   <div class="page-styling">
        

<div class="auth-wrap">



    <div class="auth-col">
        <h2>Login</h2>
        <form th:action="/login" method="post" class="login">
            <p>
                <label for="username">E-mail <span class="required">*</span></label>
                <input type="text" name="username" id="username">
            </p>
            <p>
                <label for="password">Password <span class="required">*</span></label>
                <input type="password" name="password" id="password">
            </p>
            <p class="auth-submit">
                <input type="submit" value="Login">
                <input type="checkbox" id="rememberme" value="forever">
                <label for="rememberme">Remember me</label>
            </p>
            <p class="auth-lost_password">
                <a href="#">Lost your password?</a>
            </p>
        </form>
        
    </div>
    
    
    
    <div class="auth-col">
        <h2>Register</h2>
        <form action="/register"  method="post" class="register">
            <p>
                <label for="name">Name <span class="required">*</span></label>
                <input type="text" id="reg_email"  name="name"  >
            </p>
            <p>
                <label for="phone">Phone <span class="required">*</span></label>
                <input type="tel" id="reg_password" name="phone" >
            </p>
            <p>
                <label for="email">Email <span class="required">*</span></label>
                <input type="email" id="email" name="email"   >
            </p>
             <p>
                <label for="password">Password <span class="required">*</span></label>
                <input type="password" id="password" name="password"   >
            </p>
            <p class="auth-submit">
                <input type="submit" value="Register">
            </p>
        </form>
    </div>
  
  
    
</div>


</div>
</article>
</div>


             </main><!-- #main -->
       </div><!-- #primary -->   
 </div><!-- #content -->
          
          
          <jsp:include page="include/footer.jsp" />

   
         
         
      </div> <!-- #page -->
      
      
      

<script src="1extra/js/jquery-ui.min.js"></script>

<jsp:include page="include/commondown.jsp" />



<jsp:include page="include/side-tfn.jsp" />

</body>



</html>
     