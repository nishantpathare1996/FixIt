<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<head>
  

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Inner Page - Gp Bootstrap Template</title>
  <meta content="" name="descriptison">eqweqwee
  <meta content="" name="keywords">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
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
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

  <!-- =======================================================
  * Template Name: Gp - v2.1.0
  * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
 

<body>
  <script>
  const queryString = window.location.search;
  console.log("yo");
  console.log(queryString);
  const urlParams = new URLSearchParams(queryString);
  const city = urlParams.get('city');
  const category = urlParams.get('category');
  console.log(category);

  //console.log(product);
  var myArray = []
  $.ajax({
    method:'GET',
    //url:`http://localhost/FixIt/GetProfessionals?category=${category}&subCategory=Repairs`,
    url:'http://localhost/FixIt/GetProfessionals?category='+category,
    success:function(response){
      console.log("yolo")
      myArray = response
      buildTable(myArray)
      console.log(myArray)
    }
  })

  function buildTable(data){
    var table = document.getElementById('myTable')

    for (var i = 0; i < data.length; i++){
      var row = '<tr><td><img src="assets/img/team/team-3.jpg" width="120px"></td><td>'+data[i].firstName+'</td><td>'+data[i].lastName+'</td><td>'+data[i].city+'</td><td>3/5</td><td>'+data[i].category+'</td><td>'+data[i].email+'</td><td><a href="#">View Reviews</a></td><td><button><a href="Payment.jsp">Select</button></td></tr>'
            
      table.innerHTML += row
    }
  }
  function showDiv(toggle){
    document.getElementById(toggle).style.display = 'block';
  }


</script>
 <%@ include file="Header.jsp" %>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h4>Select from service provider</h4>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Service Providers</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
    <section class="inner-page">
      <div class="container">
        
    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="containe" data-aos="fade-up" style="margin-top: -70px">
        <div class="section-title">
          <p>Electricians</p> 

          <h2>Repairs and Service</h2>

        </div>


        <div>
          <form>
            
            <div class="form-row">
                <div>&nbsp;&nbsp;Name : ${firstname} </div>            
            </div>
           <div class="form-row">
                <div>&nbsp;&nbsp;City : ${city} </div>            
            </div>
            <br/>
            <br/>
             
            </div>
            <div class="form-row">
              <div class="form-group col-md-4">
                <label class="control-label" for="date">Date</label>
                 <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="date"/>
              </div>
              <div class="form-group col-md-4">
                <label for="inputPassword4">Select Time Slot</label>
                <select id="time" name="time" class="form-control">
                  <option value="2">9:00 am-10:00 am</option>
                  <option value="2">10:00 am-11:00 am</option>
                  <option value="2">11:00 am-12:00 pm</option>
                  <option value="2">12:00 pm-1:00 pm</option>
                  <option value="2">1:00 pm-2:00 pm</option>
                  <option value="2">2:00 pm-3:00 pm</option>
                  <option value="2">3:00 pm-4:00 pm</option>
                  <option value="2">4:00 pm-5:00 pm</option>
                 
                </select>
               <!-- <input type="time" class="form-control" id="inputPassword4" placeholder="2 am"> -->
              </div> 
            </div>
            <p>please select date and time slot</p>
           <!--<div>
            <button type="submit" class="btn btn-secondary" onclick="">Check available technicicans</button>
          </div> -->
          </form>
        </div>
         <div>
            <button type="submit" class="btn btn-secondary" onclick="showDiv('toggle')">Check available technicicans</button>
        </div>
        <br/><br/>
        <div id="toggle" style="display:none">
        <h2>Our Technicians</h2>
         <table class="table table-striped">
        <tr  style="background-color: #9b870c">
        <th style="color:#fff">Profile pic</th>
        <th style="color:#fff">firstName</th>
        <th style="color:#fff">lastName</th>
        <th style="color:#fff">City</th>
        <th style="color:#fff">Rating</th>
        <th style="color:#fff">catgory</th>
        <th style="color:#fff">email</th>
        <th style="color:#fff">Reviews</th>
        <th style="color:#fff">Select</th>

        </tr>
        <tbody id="myTable">
        </tbody>
        </table>
      </div>
        
    </section><!-- End Team Section -->

      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
  </footer><!-- End Footer -->

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
 
</body>

</html>