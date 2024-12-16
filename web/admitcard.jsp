<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Admit Card | easyNaukri4u</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <style>
    section {
  padding: 0px 0;
}
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');


form{
  position: absolute;
  width: 60px;
  height: 60px;
  left: 50%;
  
  padding: 5px;
  transform: translate(-50%,-100%);
  border-radius: 50px;
  border: 4px solid #000000;
  box-sizing: border-box;
  background: #fff;
  transition: 1.5s;
}
input{
  position: absolute;
  top: 0;
  left: 0;
  border: 0;
  width: 100%;
  height: 52px;
  line-height: 75px;
  outline: 0;
  display: none;
  font-size: 16px;
  border-radius: 25px;
  padding: 0 20px;
  font-family: Shrikhand;
}
form i.fa{
  position: absolute;
  top: 0;
  right: 0;
  width: 52px;
  height: 52px;
  box-sizing: border-box;
  border-radius: 50%;
  text-align: center;
  font-size: 25px;
  transition: 1.5s;
  color: tomato;
  background: #262626;
  padding: 15px;
}
form:hover{
  width: 400px;
  cursor: pointer;
}
form:hover input{
  display: block;
}

@media(max-width: 570px){
  .flip .card{
    margin-left: 30px;
  }
  form{
  left: 45%;
  transform: translate(-45%,-115%);
  }
  form:hover{
  width: 250px;
  cursor: pointer;
}
  form:hover input{
  display: block;
}
}
h3{
		  text-align: center;
		  font-size: 20px;
	  }
	  @media(max-width:1000px) {
		  .h3{
			  text-align: center;
			  align-content: center;
		  }}
      
   .banner--landing {
    background-image: url(assets/image/landing.jpg);
    padding: 11% 0;
    position: relative;
    background-size: cover;
    background-position: center center;
}
.banner {
    width: 100%;
    height: auto;
    padding: 6% 0;
    position: relative;
}
.banner--landing .opacity {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: linear-gradient(to right,#571993 0%,#0068ac 100%);
    opacity: .92;
}
.banner--landing .container {
    position: relative;
    z-index: 2;
    color: #fff;
}
.banner--landing .container .content {
    display: flex;
    flex-direction: row;
    padding: 5% 0;
}

.container .content {
    width: 100%;
    max-width: 1100px;
    margin: 0 auto;
}


@media (max-width: 768px){
  .hide-tab {
    display: none!important;
}
.banner--landing .container .left, .banner--landing .container .right {
    width: 100%;
    text-align: center;
}
.banner--landing .container .left h1, .banner--landing .container .right h1 {
    word-spacing: .2rem;
    margin-top: 50px;
}
.banner p {
    font-size: .95rem;
    margin: 0 auto;
}
.banner--landing {
    padding: 16% 0;
}
.banner--landing .container .left, .banner--landing .container .right {
    width: 100%;
    text-align: center;
}
.banner--landing .container .left, .banner--landing .container .right {
    width: 50%;
}
}


.banner--landing .container .right {
    height: 100px;
    position: relative;
}


.banner--landing .container .left, .banner--landing .container .right {
    width: 100%;
}
.banner--landing .container .right img {
    width: 500px;
    position: absolute;
    right: 0;
    top: -80px;
}


.banner h1 {
    color: #fff;
    margin-left: -80px;
}
h1.landing-title {
    font-family: "Open Sans", sans-serif;
     font-weight: bold;
}
.banner--landing .container .content p {
    color: #ddd;
    font-size: 1rem;
    margin-left: -80px;
}
.banner p {
    font-size: 1rem;
}
.banner--landing .container .primary-btn {
    margin-top: 50px;
}
.primary-btn--big {
    height: 44px;
    text-transform: capitalize;
    letter-spacing: .01em;
    font-size: 1rem;
    line-height: 1rem;
}
.primary-btn {
    width: auto;
    height: 32px;
    margin: 0;
    display: inline-flex;
    padding: 1px 15px 0;
    justify-content: center;
    align-items: center;
    background-color: #03ca9d;
    color: #fff;
    border-radius: 4px;
    font-size: 13px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
    cursor: pointer;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
    outline: none;
    font-family: roboto,sans-serif;
    font-weight: 700;
    letter-spacing: .02em;
    word-spacing: .1em;
}


.wave-shape {
    width: 100%;
    background: #fff;
   margin-top: -200px;
    z-index: 1;
    position: relative;
    background-color: transparent;
}
.wave-shape img {
    width: 100%;
}
@media(max-width: 768px){
  .wave-shape{
    margin-top: -50px;
}
.banner h1 {
    color: #fff;
    margin-left: 0px;
    font-size: 31px;
}
.banner--landing .container .content p {
    
    margin-left: 0px;
}
}
    </style>


</head>

<body>


  <!-- Start header -->
  <%@include file="header.jsp" %>
 <!-- ======= End Header ======= -->

<!-- start bg -->
<div class="banner banner--landing">
  <div class="opacity"></div>
<div class="container">
  <div class="content">
    <div class="left">
      <h1 class="landing-title">Admit Card List</h1>
      <p style="max-width: 420px;">Download admit card / call letter for various written exams given by Banks, SSC, UPSC, State government and central PSU's and those who are don't receive Contact Us.</p><br/>
    </div>
    <div class="right hide-tab"><img src="assets/image/Exam-bg (2).png"></div>
  </div>
</div>
</div>

<div class="wave-shape">
  <img src="assets/image/wave.png">
</div>
<!-- end bg -->
  
  
    <section class="services">

        <!-- section title -->
        <div class="title1 text-center" style="padding-bottom: 30px;">
            <h2>Results Out Now</h2>
            <p> Hurry Up! Find Your Result Right Now... </p><br><br><br>
            <center>
              <div class="row">
            <form action="">
              <input type="search" id="myinput" placeholder="Search...">
              <i class="fa fa-search"></i>
            </form>
              </div>
            </center>
            <script src="js/script.js"></script>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script>
            $(document).ready(function () {
                $("#myinput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    console.log("value", value)
                    $("#card div ").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                    });
                });
            });


        </script>
        <!-- /section title -->
        <div class="container" id="card">

            <div class="row">
                <%
                    String query = "select * from admit_card ORDER By admit_card_id DESC";
                    DbManager db = new DbManager();
                    ResultSet rs = db.selectQuery(query);
                    while(rs.next()){
                %>
              <!-- result 1  -->
              <div class="col-md-6 col-lg-4">
                  <div class="icon-box icon-box-cyan" style="width: 100%;height: 70px; border-radius: 5px; border: 1px solid #0068ac; background-color: #f7f6df;" id="card">
                        <h4 class="title"><a href="<%= rs.getString("link")%>" target="_blank"><%= rs.getString("vacancy_name")%></a><span class="iconify" data-icon="bx:bx-right-arrow-alt"></span></h4>
                    </div>
                </div>
                <%
                    }
                %>             
                
            </div>   
        </div>

       </section><!-- End Services Section -->

      
   <!-- ======= Footer ======= -->
   <%@include file="footer.jsp" %>
   <!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/venobox/venobox.min.js"></script>
    <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="assets/vendor/counterup/counterup.min.js"></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    
</body>
</html>