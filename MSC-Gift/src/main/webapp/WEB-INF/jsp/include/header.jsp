<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<header id="header" class="header fixed-top d-flex align-items-center">
   <!-- Logo -->
   <div class="d-flex align-items-center justify-content-between">
      <a href="/" class="logo d-flex align-items-center">
         <img src="/resources/img/logo.png" alt="">
         <span class="d-none d-lg-block">AdminStore</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
   </div>
   <!-- Search Bar -->
   <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
         <input type="text" name="query" placeholder="Search" title="Enter search keyword">
         <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
   </div>
   <!--  Profile -->
   <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
         <li class="nav-item dropdown pe-3">
            <c:choose>
               <c:when test="${not empty user}">
                  <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                     <img src="/resources/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                     <span class="d-none d-md-block dropdown-toggle ps-2">Hi ${user.name}</span>
                  </a><!-- End Profile Image Icon -->
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                     <li class="dropdown-header">
                        <h6>${user.name}</h6>
                        <span>${user.email}</span>
                     </li>
                     <li>
                        <hr class="dropdown-divider">
                     </li>
                     <li>
                        <a class="dropdown-item d-flex align-items-center" href="/myProfile">
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
                        <a class="dropdown-item d-flex align-items-center" href="/logout">
                           <i class="bi bi-box-arrow-right"></i>
                           <span>Log Out</span>
                        </a>
                     </li>
                     <li>
                        <hr class="dropdown-divider">
                     </li>
                  </ul>
               </c:when>
               <c:otherwise>
                  <div class="d-flex">
                     <a class="nav-link nav-profile  align-items-center pe-3 ps-2" href="login">
                        <i class="bi bi-box-arrow-in-right"></i>
                        <span>Log In</span>
                     </a>
                     <a class="nav-link nav-profile  align-items-center pe-3 ps-2" href="/register" >
                        <i class="bi bi-card-list"></i>
                        <span>Register</span>
                     </a>
                  </div>
               </c:otherwise>
            </c:choose>
         </li>
      </ul>
   </nav>
</header>