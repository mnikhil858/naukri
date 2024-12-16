<%@page import="newpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Latest Job | easyNaukri4u</title>
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
  <link href="assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <style >
   
#jobs{
        background: #f8f8fa;
        padding: 50px 0;
    }
    .company-details{
        box-shadow: 0 2px 70px 0 rgba(110,130,208,.18);
        border-radius: 5px;
        margin-bottom: 20px;
    }
    .job-update{
        background: #fff;
        padding: 10px 20px;
        border-radius: 5px;
    }
    .job-update .fa{
        margin-top: 5px;
        margin-right: 10px;
        color: #77d1b1;
    }
    .job-update small{
        background: #efefef;
        padding: 1px 5px;
        margin: 0 5px;
    }
    .job-update p{
        margin-bottom: 0 !important;
    }
    .job-update a{
        text-decoration: none !important;
        color: #b6bed2;
        float: right;
    }
    .apply-btn{
        height: 40px;
        background-image: linear-gradient(to right,#6db9ef,#28ABE3);
        padding: 7px;
        border-bottom-left-radius:5px ;
        border-bottom-right-radius:5px ;
    }
    .apply-btn .btn-primary{
        padding: 0 30px;
        float: right;
        box-shadow: none;
        background: transparent;
        border-radius: 0;
        border: 1px solid #fff;
    }
    .pagelink li{
        height: 25px;
        width: 25px;
        display: inline-block;
        cursor: pointer;
    }
    .pagelink li:hover,.active1{
        color: #fff;
        background-image: linear-gradient(to right,#6db9ef,#28ABE3);
    }
    .left-arrow{
        color: #999;
    }
    .right-arrow{
        color: #29b929;
    }
.first-section .big-tagline a{
  background: none;
  position: relative;
  display: inline-block;
  font-size: 18px;
  color: #333333;
  font-weight: 500;
}


.big-tagline a,
.big-tagline a.hover-btn-new::after {
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.big-tagline a.hover-btn-new::before,
.big-tagline a.hover-btn-new::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: 1;
}

.big-tagline a.hover-btn-new:hover span {
  color: #eea412;
}

.hover-btn-new::before {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

.hover-btn-new::after {
  background: #eea412 !important;
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}
.hover-btn-new span{
  position: relative;
  z-index: 2;
}

.hover-btn-new:hover:after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}


.first-section .big-tagline a:hover{
  color: #333333;
}

.tit-up {
  position: relative;
}
.tit-up .close{
  position: absolute;
  z-index: 2;
  right: 0px;
  top: 0px;
  margin: 0;
}

.small-map {
    width: 100%;
    height: 500px;
    margin: 0 auto auto;
}

.map-btn{
  background: #2d3032;
  width: 60px;
  height: 60px;
  text-align: center;
  line-height: 60px;
  font-size: 25px;
  color: #fff;
  margin: 0 auto;
  cursor: pointer;
  border-radius: 4px 4px 0px 0px;
}

.pd{
  padding: 0px 15px;
}


.inner-dit{
  padding: 15px 15px;
  background: #333333;
  color: #ffffff;
}


.widget.server a{
  position: relative;
  padding: 13px 40px;
  font-size: 18px;
  display: inline-block;
  color: #ffffff;
}

.widget.server a,
.widget.server a.hover-btn-new::after {
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.widget.server a.hover-btn-new::before,
.widget.server a.hover-btn-new::after {
  background: #9dc15b;
  content: '';
  position: absolute;
  z-index: 1;
}

.widget.server a.hover-btn-new:hover span {
  color: #333333;
}

.widget.server a.hover-btn-new::before {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

.widget.server a.hover-btn-new::after {
  background: #333333 !important;
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}
.widget.server a.hover-btn-new span{
  position: relative;
  z-index: 2;
}

.widget.server a.hover-btn-new:hover:after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}
.btn-light {
    
    background-color: #f8f9fa;
    border-color: #f8f9fa;
    color: #ffffff !important;
  background-image: linear-gradient(to right , #68A4C4, #68A4C4);

}
table.expiring-soon-posts thead tr th,table.jobs_table thead tr th,table.today-posts thead tr th
{min-width:140px;
font-weight:700;
background-color:#195182;
color:#fff
}
table.expiring-soon-posts tr td,table.jobs_table tr td,table.today-posts tr td
{
vertical-align:middle
}
@media only screen and (max-width:760px),(min-device-width:768px) and (max-device-width:1024px){
.jobs_table table,.jobs_table tbody,.jobs_table td,.jobs_table th,.jobs_table thead,.jobs_table tr{
display:block}
.today-posts table,.today-posts tbody,.today-posts td,.today-posts th,.today-posts thead,.today-posts tr{display:block}
.expiring-soon-posts table,.expiring-soon-posts tbody,.expiring-soon-posts td,.expiring-soon-posts th,.expiring-soon-posts thead,.expiring-soon-posts tr{display:block}
.expiring-soon-posts thead tr,.jobs_table thead tr,.today-posts thead tr
             {
       position:absolute;
       top:-9999px;
       left:-9999px
       }
       .expiring-soon-posts tr,.jobs_table tr,.today-posts tr
       {margin:0 0 10px 0;
       border:1px solid #055858;
       box-shadow:0 0 4px #5a3e3e;
       padding:10px
       }
       .expiring-soon-posts td,.jobs_table td,.today-posts td
       {
       border:none!important;
       border-bottom:1px solid #eee;
       position:relative;
       padding:4px!important;
       overflow:hidden
       }
       .expiring-soon-posts tr:nth-child(odd),.jobs_table tr:nth-child(odd),.today-posts tr:nth-child(odd)
       {
       background:#fff!important}
       .expiring-soon-posts td:before,.jobs_table td:before,.today-posts td:before
       {
       position:absolute;
       top:0;
       left:6px;
       width:45%;
       padding-right:10px;
       white-space:nowrap
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
      .carousel-item{
          height: 30rem;
          background: #000;
          color: white;
          background-position: center;
          background-size: cover;
      }
      .carousel-item .container{
          position: absolute;
          bottom: 0;
          left: 0;
          right: 0;
          top: 200px;
          text-align: center;
      }
      .carousel-item .container p {
            color: #fff;
            letter-spacing: 0.5px;
            font-size: 14px;
        }
      @media (max-width: 576px) {
        .carousel-item{
          height: 30rem;
            }
        .carousel-item img{
                height: 30rem;
            }
         .carousel-item .container{
            top: 200px;
         } 
        .carousel-item .container   h1  {
            color: #fff;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
        }

        .carousel-item .container p {
            color: #fff;
            letter-spacing: 0.5px;
            font-size: 10px;
        }

        .carousel-item .container  a {
           padding: 0px 25px 10px 10px;;
        }

        
        }

}
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

form {
    position: absolute;
    width: 60px;
    height: 60px;
    left: 50%;
    padding: 5px;
    transform: translate(-50%, -100%);
    border-radius: 50px;
    border: 4px solid #000000;
    box-sizing: border-box;
    background: #fff;
    transition: 1.5s;
}

input {
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

form i.fa {
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

form:hover {
    width: 400px;
    cursor: pointer;
}

form:hover input {
    display: block;
}


.imgservice {
    height: 500px;
    width: 100%;

}

@media(max-width: 570px) {
    .flip .card {
        margin-left: 30px;
    }

    form {
        left: 45%;
        transform: translate(-45%, -115%);
    }

    form:hover {
        width: 250px;
        cursor: pointer;
    }

    form:hover input {
        display: block;
    }
}

 /*Banner starts here*/
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
/* Banner end here*/

#jobs{
        background: #f8f8fa;
        padding: 50px 0;
    }
    .company-details{
        box-shadow: 0 2px 70px 0 rgba(110,130,208,.18);
        border-radius: 5px;
        margin-bottom: 20px;
    }
    .job-update{
        background: #fff;
        padding: 10px 20px;
        border-radius: 5px;
    }
    .job-update .fa{
        margin-top: 5px;
        margin-right: 10px;
        color: #77d1b1;
    }
    .job-update small{
        background: #efefef;
        padding: 1px 5px;
        margin: 0 5px;
    }
    .job-update p{
        margin-bottom: 0 !important;
    }
    .job-update a{
        text-decoration: none !important;
        color: #b6bed2;
        float: right;
    }
    .apply-btn{
        height: 40px;
        background-image: linear-gradient(to right,#6db9ef,#28ABE3);
        padding: 7px;
        border-bottom-left-radius:5px ;
        border-bottom-right-radius:5px ;
    }
    .apply-btn .btn-primary{
        padding: 0 30px;
        float: right;
        box-shadow: none;
        background: transparent;
        border-radius: 0;
        border: 1px solid #fff;
    }
    .pagelink li{
        height: 25px;
        width: 25px;
        display: inline-block;
        cursor: pointer;
    }
    .pagelink li:hover,.active1{
        color: #fff;
        background-image: linear-gradient(to right,#6db9ef,#28ABE3);
    }
    .left-arrow{
        color: #999;
    }
    .right-arrow{
        color: #29b929;
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
      <h1 class="landing-title">Get Latest Job updates.</h1>
      <p style="max-width: 420px;">Get all Government Jobs Notifications here for all qualifications like 10th, 12th, technical and Any Degree etc. and latest Job updates !</p><br/>
    </div>
    <div class="right hide-tab"><img src="assets/image/jobbanner.png"></div>
  </div>
</div>
</div>

<div class="wave-shape">
  <img src="assets/image/wave.png">
</div>
<!-- end bg -->
   
<!-------------------------- JOB  ----------------------------->

  <main id="main">

<section class="skills" data-aos="fade-up">
  <div class="container">

      <h2  class="section-title">WE PROVIDE</h2>
      <p>We full-fills your dream by finding the Latest govt jobs for your career. India's Top Portal for All Government Jobs Providing you the information regarding the updates of Latest Government Jobs 2021 from every state. There are More than 10,000 Jobs have announced till Now . Here we have provide the List of more than 1 Board / Organization were released and looking to hire. Interested candidates who are looking for the State and Central Government jobs, This is the Best Place to get the every notification for 10+2, ITI, Diploma, Graduates and PG students. We also serves you every job alert for free from Central Government of India, All State Government.</p>
    <div class="section-title">
        <br/><h2>Latest Naukri</h2>
      </div>
    </div><br><br>
            <form action="">
                <input type="search" id="myinput" placeholder="Search...">
                <i class="fa fa-search"></i>
            </form>


            <br><br>
              <center>
                <table id="myTable" class="table table-bordered table-striped expiring-soon-posts" style="width: 80%;">
                <thead>
                  <tr>
                    <th class="text-center fr">Department</th>
                    <th class="text-center fr">Post Name</th>
                    <th class="text-center fr">Click Here</th>
                  </tr>
                </thead>
                <tbody style="text-align: center;">
                <%
                    String query = "select * from latest_job_details ORDER By latest_job_id DESC";
                    DbManager db = new DbManager();
                    ResultSet rs = db.selectQuery(query);
                    while(rs.next()){
                %>
                  <tr>
                    <td>
                      <div><%= rs.getString("department_name")%></div>
                    </td>
                    <td><%= rs.getString("post_name")%></td>
                    <td>
                      <a class="btn btn-sm m-0 btn-outline-primary waves-effect pl-3 pr-3" href="latest_job.jsp?latest-job=<%= rs.getString("latest_job_id")%>">Click Here</a>
                    </td>
                  </tr>
                <%
                    }
                %>
                  </tbody>
                </table></center>
        <style type="text/css">
                ul._sagj li {
                    list-style-image:url(assets/image/tick.svg);  padding-bottom: 15px;
                    }
                    </style>
               
               <center>
                     <div class="row" style="width: 90%; margin-top: 80px;">
                  <div class="col-md-8 offset-md-2" style="border:2px solid #1289bb;border-radius: 10px ">
                    <center class="pt-3 pb-4">
                      <h3>Steps To Apply Government Jobs</h3>
                    </center>
                  <ul class="_sagj" style="text-align: justify;">
                    <li>Before going to apply for the government Jobs you need to read the notification carefully twice. we have mentioned the Official notification in the PDF / Docs format in every job description open it and then check the eligibility of your age, education qualification, location and many other.</li>
                    
                    <li>There are many ways an application process will be done to recruit the candidate it might be Online Application Process, Off-line application process, or sometimes they directly recruit the candidates through direct Face to face Interview.</li>
                    
                    <li>When everything you are eligible goto the official website and register in that site with all your details mentioned clearly. Do not forgot the Email ID, Password, and Phone number. Note - Not all application process are the same.</li>
                    <li>After done with the application process, you have to pay certain amount based on the caste category, and finish the application process.</li>
                    
                    <li>Once you completed the fee, you need to download the application which mention earlier, check all the details that you have mentioned correct as per the certificate.</li><li>Check your email?s frequently or SMS you will get the alerts regarding you application status. Once it is done download the admit card and attend to the Exam / Interview</li>
                  
                </ul>
                <p style="text-align: justify;">
                  <b>*Note :</b>
                   Not all application process are the same. Read the Official Notification carefully and then start applying for it. Be aware of Frauds and miss-leading website. Never trap into brokers or easy paths for getting into government jobs.
                  </p>
                </div>
              </div>
              </center>
              <br><br>
             
                   
                  
                
                
                  
                    
               


</main><!-- End #main -->
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
  <script>
  $(document).ready(function(){
    $("#myinput").on("keyup",function(){
      var value = $(this).val().toLowerCase();
      $("#myTable tr").filter(function(){
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
      });
    });
  });



</script>

</body>

</html>