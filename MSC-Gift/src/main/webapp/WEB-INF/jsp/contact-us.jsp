<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>

<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <jsp:include page="include/commonup.jsp" />

</head>

<body><div id="page" class="site">

<jsp:include page="include/infoheader.jsp" />
		
		<jsp:include page="include/header.jsp" />


<div id="content" class="site-content"><div id="primary" class="content-area width-full">
    <main id="main" class="site-main">
              <div class="cont">
                    <h1 class="maincont-ttl">Contacts</h1>
                    <ul class="b-crumbs">
                    <li><a href="index.html">Home</a></li>
                    <li>Contacts</li>
                    </ul>
               </div>
                        <div class="maincont page-styling page-full">
        
							
							<div class="cont row-wrap-boxed contacts-page">
							    <div class="page-cont">
							        <div class="row">
							            <div class="cf-lg-4 col-sm-4">
							                <h3>Information</h3>
							                <p>Quisque leo velit, laoreet vel turpis id</p>
							                <br>
							                <h3>Address</h3>
							                <p>Forbes Ave, Pittsburgh, PA, USA</p>
							                <br>
							                <h3>Email</h3>
							                <p><a href="mailto:email@email.com">email@email.com</a></p>
							                <br>
							            </div>
							            <div class="cf-lg-4 col-sm-4">
							                <div class="vc_column-inner ">
							                    <div class="wpb_wrapper">
							                        <h3>Phone</h3>
							                        <p>(765)-130-7804</p>
							                        <br>
							                        <h3>Business Hours</h3>
							                        <p>Monday-Friday: 8am to 6pm<br> Saturday: 10am to 2pm<br> Sunday: Closed<br> Support 24/7
							                        </p>
							                        <br>
							                    </div>
							                </div>
							            </div>
							            <div class="cf-lg-4 col-sm-4">
							                <div class="vc_column-inner ">
							                    <div class="wpb_wrapper">
							                        <h3 class="mb20">Contact Us</h3>
							                        <form action="#" method="post"
							                              class="form-validate wpcf7 wpcf7-form">
							                            <p class="wpcf7-form-control-wrap"><input type="text" data-required="text" placeholder="Name"></p>
							                            <p class="wpcf7-form-control-wrap"><input type="email" data-required-email="email" data-required="text" placeholder="E-mail address"></p>
							                            <p class="wpcf7-form-control-wrap"><input type="text" data-required="text" placeholder="Phone number"></p>
							                            <p><input type="submit" value="Send"></p>
							                        </form>
							                    </div>
							                </div>
							            </div>
							        </div>
							    </div>
							</div>


						<div class="page-styling row-wrap-full contacts-page-map">
						    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6304.829986131271!2d-122.4746968033092!3d37.80374752160443!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808586e6302615a1%3A0x86bd130251757c00!2sStorey+Ave%2C+San+Francisco%2C+CA+94129!5e0!3m2!1sen!2sus!4v1435826432051" width="100%" height="450" allowfullscreen></iframe>
						</div>


                    </div><!-- .maincont.page-styling.page-full -->
            </main><!-- #main -->
     </div><!-- #primary -->    
</div><!-- #content -->



   

    <jsp:include page="include/footer.jsp" />

   


</div><!-- #page -->




<script src="1extra/js/jquery-ui.min.js"></script>

<jsp:include page="include/commondown.jsp" />



<jsp:include page="include/side-tfn.jsp" />

</body>


</html>