<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="Header.jsp" %>
        <title>Home</title>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Gp Bootstrap Template - Index</title>
        <meta content="" name="descriptison">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/mystyle.css" rel="stylesheet">
    </head>
    <%
    if (session.getAttribute("city")!=null){
%>
    <body>

        <!-- ======= Header ======= -->
        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center justify-content-center">
          <div class="container" data-aos="fade-up">
            
            <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
              <div class="col-xl-6 col-lg-8">
                <h1>FixIt<span>.</span></h1>
                <h2>
                  <div class="row">
                    <div class="col-3">
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <span  id="selected">
                          Select City
                          </span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="SetCity?city=CHI" value="CHI">Chicago</a>
                          <a class="dropdown-item" href="SetCity?city=NYC" value="NYC">New York</a>
                          <a class="dropdown-item" href="SetCity?city=LA" value="LA">Los Angeles</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-9 input-group md-form form-sm form-1 pl-0">
                      <div class="input-group-prepend">
                        <!-- <span class="input-group-text cyan lighten-2" id="basic-text1"><i class="fas fa-search text-white" aria-hidden="true"></i></span> -->
                      </div>
                      <input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="Search">
                    </div>
                  </div>
                </h2>
              </div>
            </div>
      
            <div class="row mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
              <div class="col">
                <div class="icon-box">
                  <i class="ri-store-line"></i>
                  <h3><a data-toggle="modal" data-target="#electriciansModal">Electricians</a></h3>
                </div>
              </div>
              <div class="col ">
                <div class="icon-box">
                  <i class="ri-bar-chart-box-line"></i>
                  <h3><a data-toggle="modal" data-target="#plumbersModal">Plumbers</a></h3>
                </div>
              </div>
              <div class="col ">
                <div class="icon-box">
                  <i class="ri-calendar-todo-line"></i>
                  <h3><a  data-toggle="modal" data-target="#paintersModal">Painters</a></h3>
                </div>
              </div>
              <div class="col ">
                <div class="icon-box">
                  <i class="ri-paint-brush-line"></i>
                  <h3><a  data-toggle="modal" data-target="#pestModal">Pest Control</a></h3>
                </div>
              </div>
              <div class="col ">
                <div class="icon-box">
                  <i class="ri-database-2-line"></i>
                  <h3><a  data-toggle="modal" data-target="#carpentersModal">Carpenters</a></h3>
                </div>
              </div>
              <div class="col ">
                <div class="icon-box">
                  <i class="ri-database-2-line"></i>
                  <h3><a  data-toggle="modal" data-target="#appliancesModal">Appliances</a></h3>
                </div>
              </div>
              <div class="col ">
                <div class="icon-box">
                  <i class="ri-database-2-line"></i>
                  <h3><a  data-toggle="modal" data-target="#cleaningModal">Cleaning</a></h3>
                </div>
              </div>
            </div>
      
          </div>
        </section><!-- End Hero -->
      
        <main id="main">
      
          <!-- ======= About Section ======= -->
      
      
          <!-- ======= Clients Section ======= -->
      
      
          <!-- ======= Features Section ======= -->
      
      
          <!-- ======= Services Section ======= -->
          <section id="services" class="services">
            <div class="container" data-aos="fade-up">
      
              <div class="section-title">
                <h2>Services</h2>
                <p>Check our Services</p>
              </div>
      
              <div class="row">
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                  <div class="icon-box">
                    <div class="icon"><i class="bx bxl-dribbble"></i></div>
                    <h4><a href="">Lorem Ipsum</a></h4>
                    <p>Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
                  </div>
                </div>
      
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                  <div class="icon-box">
                    <div class="icon"><i class="bx bx-file"></i></div>
                    <h4><a href="">Sed ut perspiciatis</a></h4>
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
                  </div>
                </div>
      
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
                  <div class="icon-box">
                    <div class="icon"><i class="bx bx-tachometer"></i></div>
                    <h4><a href="">Magni Dolores</a></h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
                  </div>
                </div>
      
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
                  <div class="icon-box">
                    <div class="icon"><i class="bx bx-world"></i></div>
                    <h4><a href="">Nemo Enim</a></h4>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
                  </div>
                </div>
      
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
                  <div class="icon-box">
                    <div class="icon"><i class="bx bx-slideshow"></i></div>
                    <h4><a href="">Dele cardo</a></h4>
                    <p>Quis consequatur saepe eligendi voluptatem consequatur dolor consequuntur</p>
                  </div>
                </div>
      
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
                  <div class="icon-box">
                    <div class="icon"><i class="bx bx-arch"></i></div>
                    <h4><a href="">Divera don</a></h4>
                    <p>Modi nostrum vel laborum. Porro fugit error sit minus sapiente sit aspernatur</p>
                  </div>
                </div>
      
              </div>
      
            </div>
          </section><!-- End Services Section -->
      
          <!-- ======= Cta Section ======= -->
      
      
      
      
      
      
      
      
        </main><!-- End #main -->
      
      
        <!--modals-->
        <div class="modal fade" id="electriciansModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Select the type of service:</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                
                <form action="providers.jsp">
                  <div class="list-group">
                  <div class="radio list-group-item list-group-item-action">
                    <label><input type="radio" name="category" value="electrician">&nbsp;&nbsp;&nbsp;Repairs and fixes</label>
                  </div>
                  <div class="radio list-group-item list-group-item-action">
                    <label><input type="radio" name="category" value="Pest">&nbsp;&nbsp;&nbsp;Electricity Breakdown</label>
                  </div>
                  <div class="radio list-group-item list-group-item-action">
                    <label><input type="radio" name="category" value="Wiring">&nbsp;&nbsp;&nbsp;Electrical Wiring</label>
                  </div>
                  <div class="radio list-group-item list-group-item-action">
                    <label><input type="radio" name="category" value="installing">&nbsp;&nbsp;&nbsp;Installing Service</label>
                  </div>
                   <input class="mt-3" type="submit" value="Submit" style="background-color: #ffc451;">
                   </div>
               </form>
              </div>
      
            </div>
          </div>
        </div>
      
        
      
        <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
        <div id="preloader"></div>
      
        <!-- Vendor JS Files -->
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/venobox/venobox.min.js"></script>
        <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
        <script src="assets/vendor/counterup/counterup.min.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
      
        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <%@ include file="Footer.jsp" %>
      </body>
      <%}
      else{%>
        <body>

            <!-- ======= Header ======= -->
            <!-- ======= Hero Section ======= -->
            <section id="hero" class="d-flex align-items-center justify-content-center">
              <div class="container" data-aos="fade-up">
          
                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
                  <div class="col-xl-6 col-lg-8">
                                <h1>holalalala</h1>

                    <h1>FixIt<span>.</span></h1>
                    <h2>Where do you need a service?</h2>>
                    <h2>
                      <div class="row">
                        <div class="col-3">
                          <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span  id="selected">
                              Select City
                              </span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="SetCity?city=CHI" value="CHI">Chicago</a>
                              <a class="dropdown-item" href="SetCity?city=NYC" value="NYC">New York</a>
                              <a class="dropdown-item" href="SetCity?city=LA" value="LA">Los Angeles</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-9 input-group md-form form-sm form-1 pl-0">
                          <div class="input-group-prepend">
                            <!-- <span class="input-group-text cyan lighten-2" id="basic-text1"><i class="fas fa-search text-white" aria-hidden="true"></i></span> -->
                          </div>
                        </div>
                      </div>
                    </h2>
                  </div>
                </div>
              </div>
            </section><!-- End Hero -->
          
            <main id="main">
          
              <!-- ======= About Section ======= -->
          
          
              <!-- ======= Clients Section ======= -->
          
          
              <!-- ======= Features Section ======= -->
          
          
              <!-- ======= Cta Section ======= -->  
          
            <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
            <div id="preloader"></div>
          
            <!-- Vendor JS Files -->
            <script src="assets/vendor/jquery/jquery.min.js"></script>
            <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
            <script src="assets/vendor/php-email-form/validate.js"></script>
            <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
            <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
            <script src="assets/vendor/venobox/venobox.min.js"></script>
            <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
            <script src="assets/vendor/counterup/counterup.min.js"></script>
            <script src="assets/vendor/aos/aos.js"></script>
          
            <!-- Template Main JS File -->
            <script src="assets/js/main.js"></script>
            <%@ include file="Footer.jsp" %>
          </body>
      <%}%>

      

</html>
