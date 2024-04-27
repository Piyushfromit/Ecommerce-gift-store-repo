<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

   <div class="d-flex align-items-center justify-content-between">
      <a href="#" class="logo d-flex align-items-center">
         <img src="/resources/img/logo.png" alt="">
         <span class="d-none d-lg-block">NiceAdmin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
   </div><!-- End Logo -->

   <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
         <input type="text" name="query" placeholder="Search" title="Enter search keyword">
         <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
   </div><!-- End Search Bar -->

   <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

         <li class="nav-item d-block d-lg-none">
            <a class="nav-link nav-icon search-bar-toggle " href="#">
               <i class="bi bi-search"></i>
            </a>
         </li><!-- End Search Icon-->

         <li class="nav-item dropdown">

            <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
               <i class="bi bi-bell"></i>
               <span class="badge bg-primary badge-number">4</span>
            </a><!-- End Notification Icon -->

            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
               <li class="dropdown-header">
                  You have 4 new notifications
                  <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="notification-item">
                  <i class="bi bi-exclamation-circle text-warning"></i>
                  <div>
                     <h4>Lorem Ipsum</h4>
                     <p>Quae dolorem earum veritatis oditseno</p>
                     <p>30 min. ago</p>
                  </div>
               </li>

               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="notification-item">
                  <i class="bi bi-x-circle text-danger"></i>
                  <div>
                     <h4>Atque rerum nesciunt</h4>
                     <p>Quae dolorem earum veritatis oditseno</p>
                     <p>1 hr. ago</p>
                  </div>
               </li>

               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="notification-item">
                  <i class="bi bi-check-circle text-success"></i>
                  <div>
                     <h4>Sit rerum fuga</h4>
                     <p>Quae dolorem earum veritatis oditseno</p>
                     <p>2 hrs. ago</p>
                  </div>
               </li>

               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="notification-item">
                  <i class="bi bi-info-circle text-primary"></i>
                  <div>
                     <h4>Dicta reprehenderit</h4>
                     <p>Quae dolorem earum veritatis oditseno</p>
                     <p>4 hrs. ago</p>
                  </div>
               </li>

               <li>
                  <hr class="dropdown-divider">
               </li>
               <li class="dropdown-footer">
                  <a href="#">Show all notifications</a>
               </li>

            </ul><!-- End Notification Dropdown Items -->

         </li><!-- End Notification Nav -->

         <li class="nav-item dropdown">

            <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
               <i class="bi bi-chat-left-text"></i>
               <span class="badge bg-success badge-number">3</span>
            </a><!-- End Messages Icon -->

            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
               <li class="dropdown-header">
                  You have 3 new messages
                  <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="message-item">
                  <a href="#">
                     <img src="/resources/img/messages-1.jpg" alt="" class="rounded-circle">
                     <div>
                        <h4>Maria Hudson</h4>
                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                        <p>4 hrs. ago</p>
                     </div>
                  </a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="message-item">
                  <a href="#">
                     <img src="/resources/img/messages-2.jpg" alt="" class="rounded-circle">
                     <div>
                        <h4>Anna Nelson</h4>
                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                        <p>6 hrs. ago</p>
                     </div>
                  </a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="message-item">
                  <a href="#">
                     <img src="/resources/img/messages-3.jpg" alt="" class="rounded-circle">
                     <div>
                        <h4>David Muldon</h4>
                        <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                        <p>8 hrs. ago</p>
                     </div>
                  </a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li class="dropdown-footer">
                  <a href="#">Show all messages</a>
               </li>

            </ul><!-- End Messages Dropdown Items -->

         </li><!-- End Messages Nav -->

         <li class="nav-item dropdown pe-3">

            <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
               <img src="/resources/img/profile-img.jpg" alt="Profile" class="rounded-circle">
               <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
            </a><!-- End Profile Iamge Icon -->

            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
               <li class="dropdown-header">
                  <h6>Kevin Anderson</h6>
                  <span>Web Designer</span>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                     <i class="bi bi-person"></i>
                     <span>My Profile</span>
                  </a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                     <i class="bi bi-gear"></i>
                     <span>Account Settings</span>
                  </a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                     <i class="bi bi-question-circle"></i>
                     <span>Need Help?</span>
                  </a>
               </li>
               <li>
                  <hr class="dropdown-divider">
               </li>

               <li>
                  <a class="dropdown-item d-flex align-items-center" href="#">
                     <i class="bi bi-box-arrow-right"></i>
                     <span>Sign Out</span>
                  </a>
               </li>

            </ul><!-- End Profile Dropdown Items -->
         </li><!-- End Profile Nav -->

      </ul>
   </nav><!-- End Icons Navigation -->

</header><!-- End Header -->
<!--

<div class="site-header">
   <p class="h-logo">
      <a href="index.html"><img src="resources/webimage/logo.png" alt="logoimage"></a>
   </p>
   
   <div class="h-shop">
      <form method="get" action="#" class="h-search" id="h-search">
         <input type="text" placeholder="Search...">
         <button type="submit"><i class="ion-search"></i></button>
      </form>
      <ul class="h-shop-links">
         <li class="h-search-btn" id="h-search-btn"><i class="ion-search"></i></li>
         <li class="h-shop-icon h-wishlist">
            <a title="Wishlist" href="wishlist.html">
            <i class="ion-heart"></i>
            <span>5</span>
            </a>
         </li>
         &lt;!&ndash; <li class="h-shop-icon h-compare">
            <a title="Compare List" href="compare.html">
            <i class="ion-arrow-swap"></i>
            <span>2</span>
            </a>
         </li> &ndash;&gt;
         
         <li class="h-cart">
            <a class="cart-contents" href="cart.html">
               <p class="h-cart-icon">
                  <i class="ion-android-cart"></i>
                  <span>3</span>
               </p>
               <p class="h-cart-total">$510.00</p>
            </a>
            <div class="widget_shopping_cart">
               <div class="widget_shopping_cart_content">
                  <ul class="cart_list">
                     <li>
                        <a href="#" class="remove">&times;</a>
                        <a href="#">
                        <img src="img/1/other/cart1.jpg" alt="">
                        Pneumatic Coil Hose
                        </a>
                        <span class="quantity">1 &times; $180.00</span>
                     </li>
                     <li>
                        <a href="#" class="remove">&times;</a>
                        <a href="#">
                        <img src="img/1/other/cart2.jpg" alt="">
                        Drill Tool Kit
                        </a>
                        <span class="quantity">1 &times; $115.00</span>
                     </li>
                     <li>
                        <a href="#" class="remove">&times;</a>
                        <a href="#">
                        <img src="img/1/other/cart3.jpg" alt="">
                        Searchlight Portable
                        </a>
                        <span class="quantity">1 &times; $150.00</span>
                     </li>
                  </ul>
                  <p class="total"><b>Subtotal:</b> $510.00</p>
                  <p class="buttons">
                     <a href="cart.html" class="button">View cart</a>
                     <a href="checkout.html" class="button">Checkout</a>
                  </p>
               </div>
            </div>
         </li>
         <li class="h-shop-icon h-profile">
            <a href="/login" title="My Account">
            <i class="ion-android-person"></i>
            </a>
            <ul class="h-profile-links">
               <li><a href="/login">Login / Registration</a></li>
               <li><a href="cart.html">Cart</a></li>
               <li><a href="wishlist.html">Wishlist</a></li>
               &lt;!&ndash; <li><a href="compare.html">Compare</a></li> &ndash;&gt;
            </ul>
         </li>
         <li class="h-menu-btn" id="h-menu-btn">
            <i class="ion-navicon"></i> Menu
         </li>
      </ul>
   </div>
   &lt;!&ndash;
      No Space
      
      &ndash;&gt;
   <div class="mainmenu">
      <nav id="h-menu" class="h-menu">
         <ul>
            <li class="menu-item-has-children active">
               <a href="index.html">Home</a>
               <ul class="sub-menu">
                  <li class="active">
                     <a href="index.html">Home 1</a>
                  </li>
                  <li>
                     <a href="index-2.html">Home 2</a>
                  </li>
               </ul>
            </li>
            <li class="menu-item-has-children">
               <a href="catalog-gallery.html">Shop</a>
               <ul class="sub-menu">
                  <li>
                     <a href="catalog-gallery.html">Catalog - Gallery</a>
                  </li>
                  <li>
                     <a href="catalog-list.html">Catalog - List</a>
                  </li>
                  <li>
                     <a href="catalog-gallery-full.html">Catalog - No Sidebar</a>
                  </li>
                  <li>
                     <a href="product.html">Product Page</a>
                  </li>
                  <li class="menu-item-has-children">
                     <a href="cart.html">Shop Pages</a>
                     <ul class="sub-menu">
                        <li>
                           <a href="cart.html">Cart</a>
                        </li>
                        <li>
                           <a href="wishlist.html">Wishlist</a>
                        </li>
                        <li>
                           <a href="compare.html">Compare</a>
                        </li>
                        <li>
                           <a href="auth.html">Login</a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </li>
            <li>
               <a href="elements.html">Elements</a>
            </li>
            <li class="menu-item-has-children">
               <a href="blog.html">Blog</a>
               <ul class="sub-menu">
                  <li>
                     <a href="blog.html">Blog Posts</a>
                  </li>
                  <li>
                     <a href="post.html">Standard Post</a>
                  </li>
                  <li>
                     <a href="post-slider.html">Slider Post</a>
                  </li>
               </ul>
            </li>
            <li class="menu-item-has-children">
               <a href="about.html">Pages</a>
               <ul class="sub-menu">
                  <li>
                     <a href="about.html">About Us</a>
                  </li>
                  <li>
                     <a href="contacts.html">Contacts</a>
                  </li>
                  <li>
                     <a href="gallery.html">Gallery</a>
                  </li>
                  <li>
                     <a href="404.html">Error 404</a>
                  </li>
               </ul>
            </li>
         </ul>
      </nav>
   </div>

</div>-->
