<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>easyNaukri4u</title>
  <meta content="" name="descriptison">
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
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link href="assets/css/style.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <style >
  a {
  color: #ffffff;
}
a:hover{
  color: black;
}
.services .title {
   
    margin-top: 20px;
}

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
 #row2{
    display: flex;
    flex-direction: row-reverse;
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

.row {
  width: 100%;
  height: 100%;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
}

h3 {
  color: #262626;
  font-size: 17px;
  line-height: 24px;
  font-weight: 700;
  margin-bottom: 4px;
}

p {
  font-size: 17px;
  font-weight: 400;
  line-height: 20px;
  color: #666666;
}
  &.small {
    font-size: 14px;
  }


.go-corner {
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  width: 32px;
  height: 32px;
  overflow: hidden;
  top: 0;
  right: 0;
  background-color: #00838d;
  border-radius: 0 4px 0 32px;
}

.go-arrow {
  margin-top: -4px;
  margin-right: -4px;
  color: white;
  font-family: courier, sans;
}

.card1 {
  display: block;
  position: relative;
  max-width: 262px;
  background-color: #f2f8f9;
  border-radius: 4px;
  padding: 32px 24px;
  margin: 12px;
  text-decoration: none;
  z-index: 0;
  overflow: hidden;
}
  .card1:before {
    content: "";
    position: absolute;
    z-index: -1;
    top: -16px;
    right: -16px;
    background: #00838d;
    height: 32px;
    width: 32px;
    border-radius: 32px;
    transform: scale(1);
    transform-origin: 50% 50%;
    transition: transform 0.25s ease-out;
  }

  .card1:hover:before {
    transform: scale(21);
  }


.card1:hover p{
 
    transition: all 0.3s ease-out;
    color: rgba(255, 255, 255, 0.8);
}
  .card1:hover h3 {
    transition: all 0.3s ease-out;
    color: #ffffff;
 
}
.ico-card{
    position:absolute;
    top: 0;
    left:0;
    bottom:0;
    right: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
  }
  .ico-card i{
    position: relative;
    right: -30%;
    top:60%;
    font-size: 12rem;
    line-height: 0;
    opacity: .2;
    color:rgba(255,255,255,1);
    z-index: 0;
   }
   .services .icon-box-pink .icon {
  background: #fceef3;
}

.services .icon-box-pink .icon i {
  color:  #2282ff;
}

.services .icon-box-pink:hover {
  border-color: blue;
}

.services .icon-box-cyan .icon {
  background: #e6fdfc;
}

.services .icon-box-cyan .icon i {
  color: #3fcdc7;
}

.services .icon-box-cyan:hover {
  border-color: green;
}

.services .icon-box-green .icon {
  background: #eafde7;
}

.services .icon-box-green .icon i {
  color: purple;
}

.services .icon-box-green:hover {
  border-color: purple;
}

.services .icon-box-blue .icon {
  background: #e1eeff;
}

.services .icon-box-blue .icon i {
  color: #41cf2e;

}

.services .icon-box-blue:hover {
  border-color: green;
}
  </style>
</head>

<body>

  <!-- Start header -->
  <%@include file="header.jsp" %>
 <!-- ======= End Header ======= -->

   <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <!-- Slide 1 -->

      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animated fadeInDown">Welcome to <span> Easynaukri4u</span></h2>
          <p class="animated fadeInUp">India has witnessed a high demand for Government jobs for many decades. People prefer Government jobs as their career option considering the wide variety of benefits that are associated with these. <b>Easynaukri4u</b> is a dream for millions of people across the nation, and only a few are lucky to land up with such jobs..</p>
   
          <a href="login.jsp" class="btn-get-started animated fadeInUp"  data-toggle="" data-target="">Register Now</a>
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animated fadeInDown">We are India's No.1 Job Site </h2>
          <p class="animated fadeInUp">Connect with 20000+ employers. Apply to millions of job opportunities across top companies, industries and locations on India's No.1 Job site. Apply online.</p>
          <a href="job.jsp" class="btn-get-started animated fadeInUp">Find Your Jobs</a>
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animated fadeInDown">We Arrange 1000 of Mock Test</h2>
          <p class="animated fadeInUp">State Governments conduct various exams, and the Job Result Info for all these exams can be found online. Job Results in Bihar for all government job exams conducted by the state of Bihar.</p>
          <a href="test.jsp" class="btn-get-started animated fadeInUp">Start Now</a>
        </div>
      </div>

      <!-- Slide 4 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animated fadeInDown">2000+ e-Books Free Download</h2>
          <p class="animated fadeInUp"> Some people are not able to buy books to prepare for exams because they are out of the budget. To solve this problem we introduce e-books where all the books necessary for preparation are available in both online mode and offline mode by downloading it on the system or mobile phone..</p>
          <a href="book.jsp" class="btn-get-started animated fadeInUp">Read Now</a>
        </div>
      </div>

      <!-- Slide 5 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animated fadeInDown">Notes & Video Tutorials</h2>
          <p class="animated fadeInUp">Notes helps to save your time also because pre prepared are available at your hands without wasting your precious time to copy down and make it again. Video tutorials help you to understand the things more clear as one could understand the things by seeing it. </p>
          <a href="note.jsp" class="btn-get-started animated fadeInUp">Find Now</a>
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      </div>
      <img src="assets/svg/home-banner (1).svg" class="sliderimage" >
      
  </section>
  

  <!-- End Hero -->
<main id="main">
<!-- ======= Services Section ======= -->
<section class="recentjobs">
      
 <!-- section title -->
    <div class="container">
        <div class="text-center">
            <h2>Most Recent Jobs</h2><br/>
            <p>Government jobs offer job security for a lifetime, and hence a lot of youth prefer them. Getting into a Government job requires a person to go through multiple levels of tests. These include a written examination, interview and sometimes even physical examination.  </p>
            <div class="border"></div>
        </div>
    </div>
      
      <div class="row">
   <a class="card1" href="table1.jsp">
    <h3>UP Aganwadi Bharti Various District2021</h3>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
   <a class="card1" href="table1.jsp">
    <h3>RSMSSB VDO 021</h3><br/>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
   <a class="card1" href="table1.jsp">
    <h3>Uttrakhand TET  2021 </h3><br/>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
   <a class="card1" href="table1.jsp">
    <h3>RSMSSB Computer 2021</h3><br/>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
   <a class="card1" href="table1.jsp">
    <h3>CGPSC Professor 2021</h3><br/>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
  <a class="card1" href="table1.jsp">
    <h3>Bank of Maharashtra SO Online Form 2021</h3>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
  <a class="card1" href="table1.jsp">
    <h3>South Indian Bank PO Online Form</h3><br/>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
  <a class="card1" href="table1.jsp">
    <h3>NPCIL Various Trade Apprentice Online Form 2021</h3>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
  <a class="card1" href="table1.jsp">
    <h3>UKPSC APO Online Form 2021</h3><br/>
    <div class="go-corner" >
      <div class="go-arrow">
        
      </div>
    </div>
  </a>
</div>

    </section><!-- End Services Section -->

    
    


    <!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">
         <!-- section title -->
        <div class="text-center">
          <h2>Updates</h2><br/>
          <p>This includes the timeline when the exam is conducted, admit card information, the number of seats offered, application forms, result & dates etc. </p>
          <div class="border"></div>
        </div>
        <!-- /section title -->

        <div class="row">
          <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink" style="height : 480px;background: linear-gradient(170deg, #01E4F8 0%, #1D3EDE 100%); ">
              <div class="icon"><i class='bx bxs-bell bx-tada'></i></div>
              <div class="ico-card">
                 <i class="fa fa-rebel"></i>
             
              <h4 class="title"><a href="result.jsp">Results</a></h4>
                <ul>
                <%
                    String query = "select * from vacancy_result ORDER By result_id DESC";
                    DbManager db = new DbManager();
                    ResultSet rs = db.selectQuery(query);
                    int i = 1;
                    while(rs.next()){
                    if (i<=6){
                %>
                    <li><a href="<%= rs.getString("link")%>" style="color: white;" target="_blank"><%= rs.getString("vacancy_name")%></a></li>
                <%
                    }
                    i++;
                    }
                %>
                </ul>
                <a href="result.jsp"><button type="button" class="viewmore">View More</button></a> 

             </div>
             </div>

          </div>


          <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-blue" style="height : 480px;background: linear-gradient(170deg, #B4EC51 0%, #429321 100%);">
              <div class="icon"><i class="bx bxs-file bx-tada"></i></div>
              <div class="ico-card">
        <i class="fa fa-codepen"></i>
              <h4 class="title"><a href="">Latest Job</a></h4>
             <ul>
              <%
                    String quer = "select * from latest_job_details ORDER By latest_job_id DESC";
                    ResultSet rn = db.selectQuery(quer);
                    int b = 1;
                    while(rn.next()){
                    if (b<=6){
                %>
                <li><a href="latest_job.jsp?latest-job=<%= rn.getString("latest_job_id")%>" style="color: white;"><%= rn.getString("post_name")%></a></li>
                <%
                    }
                    b++;
                    }
                %>
              </ul>
                <a href="job.jsp"><button type="button" class="viewmore">View More</button></a>

            </div>
            
      </div>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green" style="height : 480px;background: linear-gradient(170deg, #C86DD7 0%, #3023AE 100%); ">
              <div class="icon"><i class="bx bxs-pin bx-tada"></i></div>
              <div class="ico-card">
        <i class="fa fa-empire"></i>
              <h4 class="title"><a href="">Admit card</a></h4>
              <ul>
                <%
                    String que = "select * from admit_card ORDER By admit_card_id DESC";
                    ResultSet rc = db.selectQuery(que);
                    int a = 1;
                    while(rc.next()){
                    if (a<=6){
                %>
                    <li><a href="<%= rc.getString("link")%>" style="color: white;" target="_blank"><%= rc.getString("vacancy_name")%></a></li>
                <%
                    }
                    a++;
                    }
                %>
              </ul>
              <a href="admitcard.jsp"><button type="button" class="viewmore">View More</button></a> 
            </div>
             
      </div>
          </div>
  </div>
   <!-- ======= Services Section ======= -->


   <!-- ======= Services Section ======= -->
   <div class="container">
       <div class="row align-items-center" id="row1">
        <div class="text-center">
          <h2>What We Offer</h2><br/>
          <p>This includes when the exam is conducted, 24*7 Free e-Book , Mock Interviews, Free Study Materials & Latest Government Job Openings etc. </p>
          <div class="border"></div>
        </div>
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch"  data-aos="fade-up" data-aos-delay="100">
                    <div class="message-box">
                        <h4>e-Books</h4>
                        <p>As we know books are called best friend of a human as it provides us knowledge of anything which we are keen to learn.But some people are not able to buy books to prepare for exams because they are out of the budget. To solve this problem we introduce e books where all the books necessary for preparation are available in both online mode and offline mode by downloading it on the system or mobile phone..</p>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
        
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch"  data-aos="fade-up" data-aos-delay="100">
            <center>
                    <div class="wow fadeIn">
                        <img src="assets/svg/book.svg" height="auto" width="70%" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
            </center>
                </div><!-- end col -->
        </div>
        <br>
        <div class="row align-items-center" id="row2" style="display:flex;"> 
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch"  data-aos="fade-up" data-aos-delay="100">
                    <div class="message-box">
                        <h4>Mock Test</h4>
                        <p><b>"easyNaukri4u"</b> have a page for Mock test so that one can know that he or she is prepared or not, how much preparation is done, on which parts to focus or how much effort is needed and most important the pattern of exam.State Governments conduct various exams, and the Sarkari Result Info for all these exams can be found online. Sarkari Results in Bihar for all government job exams conducted by the state of Bihar..</p>

                   </div><!-- end messagebox -->
                </div><!-- end col -->
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch"  data-aos="fade-up" data-aos-delay="100">
            <center>    
                    <div class="wow fadeIn">
                        <img src="assets/svg/mocktest.svg" height="auto" width="70%" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
            </center>
                </div><!-- end col -->
            </div><!-- end row -->


                <div class="row align-items-center" id="row1">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="message-box">
                        <br/>
                        <h4>Free Study Materials</h4>
                        <p>The problem to get properly arranged or a proper material to study is also available so that you don't get confused and not wasting your time in right swipe on mobile, searching over internet and finding pages in several bundles of book. Video tutorials help you to understand the things more clear as one could understand the things by seeing it.</p>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
        
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <center>
                    <div class="wow fadeIn">
                        <img src="assets/svg/noted.svg" height="auto" width="70%" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
            </center>
                </div><!-- end col -->
        </div>
        <br>
        <div class="row align-items-center" id="row2" style="display:flex;"> 
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                    <div class="message-box">
                        <h4>Job Opportunity</h4>
                        <p>India has witnessed a high demand for Government jobs for many decades. People prefer Government jobs as their career option considering the wide variety of benefits that are associated with these. <b>"easyNaukri4u"</b> is a dream for millions of people across the nation, and only a few are lucky to land up with such jobs. People tend to take pride in having a Sarkari or Government job.</p>

                   </div><!-- end messagebox -->
                </div><!-- end col -->
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <center>
                    <div class="post-media wow fadeIn">
                        <img src="assets/svg/interview.svg" height="auto" width="70%" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
            </center>
                </div><!-- end col -->
            </div><!-- end row -->

          </div></div>
      </div>
    </section><!-- End Services Section -->
<!-- ======= Features Section ======= -->
<div class="container">
                <div class="col-md-8 offset-md-2">
                  <div class="title1 text-center"><br/>
                 <h2>Why Should We Need A Government Job?</h2>
                  <div class="border"></div>
                </div>
                  
                  <div class="row" style="text-align: center;">
                  <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/job_security.svg?v=0.1" class="img-fluid">
                      <div class="pt-3"><b>Job Security</b></div>
                  </div>
                       <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/service _to_nation.svg" class="img-fluid">
                      <div class="pt-3"><b>Service to Nation</b></div>
                    </div>
               
                    <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/good_salary.svg" class="img-fluid">
                      <div class="pt-3"><b>Good Salary</b></div>
                    </div>
                </div>
                     <div class="row" style="text-align: center;">
                       <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/flexible_time.svg" class="img-fluid">
                      <div class="pt-3"><b>Flexible Time</b></div>
                  </div>
                       <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/easy_promotions.svg" class="img-fluid">
                      <div class="pt-3"><b>Easy Promotions</b></div>
                  </div>
                    <div class="col-md-4 col-sm-6 col-xs-12 align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/highly_respective.svg" class="img-fluid">
                      <div class="pt-3"><b>Highly Respective</b></div>
                  </div>
                  </div>
                </div>
             
              

</div></div></div></div>
<br><br>


             
<!------------------------------------THINGS YOU SHOULD KNOW ABOUT GOVT JOBS---------------------> 
 <div class="container">
             <div class="title1 text-center">
                 <h2> Things You Should Know About Government Jobs !</h2>
                  <div class="border"></div>
                </div>
             
                <div class="col-md-8 offset-md-2">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="row">
                        <div class="col-md-12 _box_abj align-items-stretch" data-aos="fade-up" data-aos-delay="100 ">
                          <div class="_box_abj_numbox ">
                            <div class="_box_num ">
                              <b>1</b>
                            </div>
                          </div>
                          <div class="_box_text">Every Notification has a Lakhs of applicants</div>
                          <div style="clear: both;"></div>
                          <br>
                        </div>
                        <div class="col-md-12 _box_abj align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                          <div class="_box_abj_numbox">
                            <div class="_box_num">
                              <b>2</b>
                            </div>
                          </div>
                          <div class="_box_text">You must be intelligent and sharp to Crack exam</div>
                          <div style="clear: both;"></div>
                          <br>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="row">
                        <div class="col-md-12 _box_abj align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                          <div class="_box_abj_numbox">
                            <div class="_box_num"><b>3</b></div>
                          </div
                          ><div class="_box_text">Dedicate all your time before going to prepare</div>
                          <div style="clear: both;"></div><br>
                        </div>
                        <div class="col-md-12 _box_abj align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                          <div class="_box_abj_numbox">
                            <div class="_box_num">                         
                              <b>4</b>
                            </div>
                          </div>
                          <div class="_box_text">Communicate with others to share your knowledge</div>
                          <div style="clear: both;">
                          </div>
                          <br>
                        </div>
                      </div
                      ></div>
                      </div>
                    </div>
                  </div>
                  <br><br><br>
                  <div class="container">
                    <div class="col-md-8 offset-md-2">
                      <div class="section-title">
                        <h2>Some Best Government Jobs In India.</h2>
                      <br>
                      <div class="row">
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                          <img src="assets/svg/bank_jobs.svg" class="img-fluid" alt="Bank Jobs">
                        <div class="pt-2">
                            Bank jobs
                      </div>
                    </div>
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/railway_jobs.svg" class="img-fluid" alt="Railway jobs">
                      <div class="pt-2">
                        Railway jobs
                      </div>
                    </div>
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/engineering_jobs.svg" class="img-fluid" alt="Engineering Jobs">
                      <div class="pt-2">
                        Engineering Jobs
                    </div>
                  </div>
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                    <img src="assets/svg/army_jobs.svg" class="img-fluid" alt="Army jobs">
                    <div class="pt-2">
                        Army jobs
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                          <img src="assets/svg/ssc_notification.svg" class="img-fluid" alt="SSC Notification">
                          <div class="pt-2">
                            SSC Notification
                      </div>
                    </div>
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                      <img src="assets/svg/medical_jobs.svg" class="img-fluid" alt="Medical jobs">
                      <div class="pt-2">
                            Medical jobs
                          </div>
                        </div>
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                          <img src="assets/svg/phamacy_jobs.svg" class="img-fluid" alt="Pharmacy jobs">
                          <div class="pt-2">
                            Pharmacy jobs
                          </div>
                        </div>
                       
                        <div class="col-md-3 col-6 mb-4 text-center align-items-stretch" data-aos="fade-up">
                          <img src="assets/svg/diploma_jobs.svg" class="img-fluid" alt="Diploma Jobs">
                          <div class="pt-2">
                            Diploma Jobs
                          </div>
                        </div>
                      </div>
                    </div>
                  
                    </div>
</div>

                    
               </div></div></section>


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