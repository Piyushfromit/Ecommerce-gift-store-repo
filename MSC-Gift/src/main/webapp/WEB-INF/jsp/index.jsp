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

			<div id="primary" class="content-area width-full">

			   <main id="main" class="site-main">

			      <div class="maincont page-styling page-full">

						<div class="heroblock" style="background-image: url(resources/webimage/1/front/msccover4.png);">
						    <p class="heroblock-subttl"><a href="catalog-gallery.html">Store</a></p>
						    <h3 class="heroblock-ttl">Free Shipping Anywhere</h3>
						    <a href="catalog-gallery.html" class="btn">Read More</a>
						</div>


			            <jsp:include page="include/homesectionone.jsp" />


			            <jsp:include page="include/homesectiontwo.jsp" />

			     </div><!-- .maincont.page-styling.page-full -->

			   </main><!-- #main -->

			</div><!-- #primary -->

		</div><!-- #content -->



 <jsp:include page="include/footer.jsp" />








<!--

<div class="modal-form" id="modal-form-psd">
   <form action="#" method="POST" class="form-validate">
      <h4>Get PSD Link</h4>
      <input type="text" placeholder="Your email" data-required="text" data-required-email="email" name="email">
      <input class="btn1" type="submit" value="Send">
   </form>
</div>

<div class="cont maincont quick-view-modal">
   <article>
      <div class="prod">
         <div class="prod-slider-wrap prod-slider-shown">
            <div class="flexslider prod-slider" id="prod-slider">
               <ul class="slides">
                  <li>
                     <a data-fancybox-group="qprod" class="fancy-img" href="img/1/product/quickview1-full.jpg">
                     <img src="img/1/product/quickview1.jpg" alt="">
                     </a>
                  </li>
                  <li>
                     <a data-fancybox-group="qprod" class="fancy-img" href="img/1/product/quickview2-full.jpg">
                     <img src="img/1/product/quickview2.jpg" alt="">
                     </a>
                  </li>
                  <li>
                     <a data-fancybox-group="qprod" class="fancy-img" href="img/1/product/quickview3-full.jpg">
                     <img  src="img/1/product/quickview3.jpg" alt="">
                     </a>
                  </li>
               </ul>
               <div class="prod-slider-count">
                  <p><span class="count-cur">1</span> / <span class="count-all">3</span></p>
                  <p class="hover-label prod-slider-zoom"><i class="icon ion-search"></i><span>Zoom In</span></p>
               </div>
            </div>
            <div class="flexslider prod-thumbs" id="prod-thumbs">
               <ul class="slides">
                  <li>
                     <img src="img/1/product/quickview1.jpg" alt="">
                  </li>
                  <li>
                     <img src="img/1/product/quickview2.jpg" alt="">
                  </li>
                  <li>
                     <img src="img/1/product/quickview3.jpg" alt="">
                  </li>
               </ul>
            </div>
         </div>
         <div class="prod-cont">
            <div class="prod-rating-wrap">
               <p data-rating="4" class="prod-rating">
                  <i class="rating-ico" title="1"></i><i class="rating-ico" title="2"></i><i class="rating-ico" title="3"></i><i class="rating-ico" title="4"></i><i class="rating-ico" title="5"></i>
               </p>
               <p class="prod-rating-count">7</p>
            </div>
            <p class="prod-categs"><a href="#">Lighting</a>, <a href="#">Tools</a></p>
            <h2>Belt Sanders</h2>
            <p class="prod-price">$25.00</p>
            <p class="stock in-stock">7 in stock</p>
            <p class="prod-excerpt">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget...</p>
            <div class="prod-add">
               <button type="submit"
                  class="button"><i class="icon ion-android-cart"></i> Add to cart
               </button>
               <p class="qnt-wrap prod-li-qnt">
                  <a href="#" class="qnt-plus prod-li-plus"><i class="icon ion-arrow-up-b"></i></a>
                  <input type="text" value="1">
                  <a href="#" class="qnt-minus prod-li-minus"><i class="icon ion-arrow-down-b"></i></a>
               </p>
               <div class="prod-li-favorites">
                  <a href="wishlist.html" class="hover-label add_to_wishlist"><i class="icon ion-heart"></i><span>Add to Wishlist</span></a>
               </div>
               <p class="prod-li-compare">
                  <a href="compare.html" class="hover-label prod-li-compare-btn"><span>Compare</span><i class="icon ion-arrow-swap"></i></a>
               </p>
            </div>
         </div>
      </div>
   </article>
</div>

 -->


</div><!-- #page -->



<jsp:include page="include/commondown.jsp" />



<jsp:include page="include/side-tfn.jsp" />


<!-- Yandex.Metrika counter -->
<!-- <script type="text/javascript" >
(function (d, w, c) { (w[c] = w[c] || []).push(function() {
	try {
		w.yaCounter46016169 = new Ya.Metrika({ id:46016169, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true });
	} catch(e) {

	} });
	var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () {
		n.parentNode.insertBefore(s, n); };
		s.type = "text/javascript"; s.async = true; s.src = "../../../mc.yandex.ru/metrika/watch.js";
		if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false);
		} else {
		f(); } })(document, window, "yandex_metrika_callbacks");
</script>


<noscript>
    <div>
      <img src="https://mc.yandex.ru/watch/46016169" style="position:absolute; left:-9999px;" alt="" />
    </div>
</noscript>  -->
<!-- /Yandex.Metrika counter -->

</body>
</html>