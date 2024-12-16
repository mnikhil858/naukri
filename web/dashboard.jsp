<%@page import="newpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mock Test | easyNaukri4u</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
<!--  <link rel="stylesheet" href="assets/css/bootstrap.min.css">-->
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
  <!--load all Font Awesome styles -->


  <style >
  
  .message-box a{
  position: relative;
  font-size: 18px;
  display: inline-block;
}
.message-box a,
.message-box a.hover-btn-new::after {
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}
.message-box a.hover-btn-new::before,
.message-box a.hover-btn-new::after {
  background: #eea412;
  content: '';
  position: absolute;
  z-index: 1;
}

.message-box a.hover-btn-new:hover span {
  color: #333333;
}
.message-box a.hover-btn-new::before {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}
.message-box a.hover-btn-new::after {
  background: #333333 !important;
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}
.message-box a.hover-btn-new span{
  position: relative;
  z-index: 2;
  color: #fff;
}
.message-box a.hover-btn-new:hover:after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}
.message-box h4 {
    text-transform: uppercase;
    padding: 0;
    margin: 0 0 5px;
    font-weight: 600;
    letter-spacing: 0.5px;
    font-size: 15px;
    color: #eea412;
}

.message-box h2 {
    font-size: 38px;
    font-weight: 400;
    padding: 0 0 10px;
    margin: 0;
    line-height: 62px;
    margin-top: 0;
    text-transform: none;
}

.message-box p {
    margin-bottom: 20px;
}

.message-box .lead {
   
    font-size: 19px;
    font-style: sans-serif;
    color: #999;
    padding-bottom: 0;
}

.post-media {
    position: relative;
}

.post-media img {
    width: 100%;
}
._box_abj{
                position: relative;
                } 
                ._box_abj_numbox{
                  width: 60px;
                  height:60px;
                  border:4px solid #0a4a65;
                  border-radius: 50%;
                  text-align: center;
                  float: left;
                  margin-right: 4px;
                  position: relative;
                  z-index: 1}
                    ._box_num{
                      position: absolute;
                      top: 26%;left: 40%;
                      } 
                      ._box_text{
                        float: left; width: 90%; height:60px; padding-right: 10px; font-size: 14px;
                         border:4px solid #1289bb;border-radius:33px; padding-left: 60px;position: absolute; top: 0;
                         }

.tick{background: #12ab19;padding: 2px 4px;border-radius: 4px;color: #fff;font-size: 10px;}

  #row2{
    display: flex;
    flex-direction: row-reverse;
  }

.container{
  display: flex;
  justify-content: center;
  align-items: center;
  max-width: 1200px;
  flex-wrap: wrap;
  
}
.container .card{
  position: relative;
  width: 320px;
  height: 200px;
  border-radius: 15px;
  
}
.container .card .box{
  position: absolute;
  top: 20px;
  left: 20px;
  right: 20px;
  bottom: 20px;
  background: #b8e0de;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
  border-radius: 15px;
  display: flex;
  justify-content:  center;
  align-items: center;
  transition: 0.5s;
}
.container .card:hover .box{
  transform: translateY(-50px);
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
  background: linear-gradient(45deg,#b95ce4,#4f29cd);
  color: white;
 }
.container .card .box .content{
  padding: 20px;
  text-align: center;
}
.container .card .box .content h2{
  position: absolute;
  top: -10px;
  right: 30px;
  font-size: 8em;
  color: rgba(0, 0, 0, 0.05);
  transition: 0.5s;
  pointer-events: none;
}
.container .card:hover .box .content h2{
  color: rgba(0, 0, 0,  0.05);
}
.container .card .box .content h3{
  font-size: 1.0em;
  color: #777;
  z-index: 1;
  transition: 0.5%;
}
.container .card .box .content p{
  font-size: 1em;
  font-weight: 300;
  color: #777;
  z-index: 1;
  transition: 0.5s;
}
.container .card:hover .box .content p,
.container .card:hover .box .content h3{
  color: #fff;
}

.container .card .box .content .submit{
  position: relative;
  display: inline-block;
  padding: 8px 20px;
  background: #9f56db;
  border: none;
  border-radius: 20px;
  color: #fff;
  text-decoration: none;
  font-weight: 400;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}
.container .card:hover .box .content .submit{
  background: #ff568f;
} 
.title2{
overflow: hidden;
padding-bottom: 2px;
  
}

@media (max-width: 567px){
  .message-box h4 {
    padding-left: 72px;
  }
  .message-box p {
    padding: 20px;
}
.p{
  padding-left: 10px;
  padding-right: 10px;
}
}
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
    width: 900px;
    position: absolute;
    right: 0;
    top: -80px;
}


.banner h1 {
    color: #fff;
}
h1.landing-title {
    word-spacing: .8rem;
}
.banner--landing .container .content p {
    color: #ddd;
    font-size: 1rem;
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
</style>
</head>

<body>

  

<!-- Start header -->
<%@include file="header.jsp" %>
<!--------------------------------- About Mock Test---------------------------->

<div class="banner banner--landing">
  <div class="opacity"></div>
<div class="container">
  <div class="content">
    <div class="left">
      <h1 class="landing-title">Plan | Practice | Prepare</h1>
      <p style="max-width: 420px;">Join the best and most affordable online platform for all your  government exam preparation needs.</p>
      <a class="primary-btn primary-btn--big" href="login.jsp" style="color: white;">Get Started&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></a><br/><br/>
    </div>
    <div class="right hide-tab"><img src="assets/image/macbook.png"></div>
  </div>
</div>
</div>

<div class="wave-shape">
  <img src="assets/image/wave.png">
</div>

<section class="services">
    <div class="container">
        <div class="title1 text-center">
            <h3 style="margin-top:20px">Select your exam below and give an immediate push to your preparation.</h3><br/>
            <p class="p">This Mock Test is to familiarize the students about processes of Computer Based Test (CBT), candidate can understand various processes of Computer Based Test (CBT) with the available mock test.</p>
            <div class="border"></div>
            <form action="">
                <input type="search" id="myinput" placeholder="Search...">
                <i class="fa fa-search"></i>
            </form>
        </div>
        <%
            DbManager db = new DbManager();
            ResultSet rs = db.selectQuery("select * from exam ORDER BY exam_id ASC");
            while(rs.next()==true){
                ResultSet rb = db.selectQuery("select * from exam_question_tbl where exam_id = '"+rs.getInt("exam_id")+"'");
                int q = 0;
                while(rb.next()== true){
                    q++;
                }
                if(rs.getInt("question_limit") == ( q ))
                {
        %>
        <div id="div1" class="card" style="border: none;">
            <div class="box">
              <div class="content">
                    <form action="user/user_dashboard.jsp" method="post">
                        <h3><%= rs.getString("exam_title")%></h3>
                        Total Mark: <%=rs.getInt("total_marks")%><br/>
                        Total Time: <%= rs.getInt("time_limt")%> Min<br/><br/>
                        <input type="hidden" name="exam_id" value="<%= rs.getString("exam_id")%>"/>
                        <input class="submit" type="submit" value="Start Now"/>
                    </form>
              </div>
            </div>
        </div>
        <%
                }
                }
        %>
    </div>
  </section>
   <!-- ======= Services Section ======= --> 

<!--------------------------------- About Mock Test---------------------------->

<div id="overviews" class="section wb">
        <div class="container" style=" margin-top: 80px;">
            <div class="section-title row text-center" >
                <div class="col-md-8 offset-md-2"  >
                    <h3>About Our Mock Test.</h3><br/>
                    <p>You can test yourself that how much you are prepared for exam and how much preparation is needed and also which areas where you need to practice more or less and your weak points where more concentration is needed!</p>
                </div>
            </div><!-- end title -->

                 <div class="row align-items-center" id="row2" style="display:flex;"> 
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="message-box">
                        <h4>Why <b>"easyNaukri4u"</b>?</h4>
                       <p>We work hard to make sure you get maximum worth of your money. We provide Latest Pattern Tests, Detailed Solutions, easily access On your Phone and Computer & Most important it's available Bilingual.</p>
                   </div><!-- end messagebox -->
                </div><!-- end col -->
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="post-media wow fadeIn">
                        <img src="assets/svg/searching.svg" alt="" class="img-fluid img-rounded" style=" height: 400px;">
                    </div><!-- end media -->
                </div><!-- end col -->
            </div><!-- end row -->
        
            <div class="row align-items-center" id="row1">
              <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch"  data-aos="fade-up" data-aos-delay="100">

                    <div class="message-box">
                        <h4> Our Mock test Pattern</h4>
                        <p>Practice papers that are prepared purely based on the latest exam pattern and syllabus of the respective examination. These are a simulation of actual exams practising which aspirants can gauge their actual potential.</p>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
        
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                 <div class="post-media wow fadeIn">
                        <img src="assets/svg/exam.svg" alt="" class="img-fluid img-rounded" style=" height: 300px;">
                    </div><!-- end media -->
                </div><!-- end col -->
        </div>
        <br>
      <div class="row align-items-center" id="row2" style="display:flex;"> 
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="message-box">
                        <h4>Quick Tips & Tricks</h4>
                        <p>To crack the government exams, aspirants seek different ways- best study materials, online help, notes. However, the best preparation strategy is to practise free online mock tests numerous times, related to particular exams. What is a mock test worth for various government exams can be understood only by regular practice.</p>

                   </div><!-- end messagebox -->
                </div><!-- end col -->
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="post-media wow fadeIn">
                        <img src="assets/svg/tips.svg" alt="" class="img-fluid img-rounded" style=" height: 300px;">
                    </div><!-- end media -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    
  <br/>
  <br/>
  <!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

    

    <div class="footer-top" >
      <div class="container" >
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="result.jsp">RESULTS</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="job.jsp"></a>POLICE VACANCY</li>
              <li><i class="bx bx-chevron-right"></i> <a href=".html">AIR FORCE</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href=".html">RPSC</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
           <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">UPSc</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">BPSC</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">SSC</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">RAILWAY</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">NAVY</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> XYZ@example.com<br>
            </p>

          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>About PORTAL</h3>
            <p>Be it Govt.  news or Govt. result, all of the information is at the fingertips for most applicants. It is even possible just to use the smartphone to make an application and live the dream of getting into a Government job..</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter" ><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              <a href="#" class="whatsapp"><i class="bx bxl-whatsapp"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>2021</span></strong>. All Rights Reserved
      </div>
      
    </div>
  </footer><!-- End Footer -->

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
  <script>
    $(document).ready(function(){
      $("#myinput").on("keyup",function(){
        var value = $(this).val().toLowerCase();
        $("#div1").filter(function(){
          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
      });
    });
  </script>

</body>

</html>