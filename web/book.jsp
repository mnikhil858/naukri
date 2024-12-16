<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>e-Books | easyNaukri4u</title>
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

body{
 padding-top:50px;
 
}
.flip {
  -webkit-perspective: 800;   
          perspective: 800;
        position: relative;
        text-align: center;
}
.flip .card.flipped {
  -webkit-transform: rotatey(-180deg);
          transform: rotatey(-180deg);
}
.flip .card {
    width: 270px;
    height: 200px;
    -webkit-transform-style: preserve-3d;
    -webkit-transition: 0.5s;
    transform-style: preserve-3d;
    transition: 0.5s;
    background-color: #fff;
   
}
.flip .card .face {
  -webkit-backface-visibility: hidden ;
    backface-visibility: hidden ;
   z-index: 2;
}
.flip .card .front {
   position: absolute;
   width: 270px;
   z-index: 1;
}
.flip .card .front img{
  width: 270px;
  height: 200px;
  padding: 20px;
}
.flip .card .img {
   position: relaitve;
  width: 270px;
  height: 80%;
   z-index: 1;
}
.flip .card .back {
  padding-top: 10%;
   width: 270px;
  height: 80%;
  -webkit-transform: rotatey(-180deg);
          transform: rotatey(-180deg);
  position: absolute;
}
.inner{
  margin:0px !important;
  width: 270px;
}


.wrapper .search-input{
  background: #fff;
  width: 100%;
  border-radius: 20pxpx;
  position: relative;
  box-shadow: 0px 1px 5px 3px rgba(226, 221, 221, 0.12);
}

.search-input input{
  height: 55px;
  width: 100%;
  outline: none;
  border: none;
  border-radius: 20px;
  padding: 0 60px 0 20px;
  font-size: 18px;
  box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
}

.search-input.active input{
  border-radius: 5px 5px 0 0;
}

.search-input .autocom-box{
  padding: 0;
  opacity: 0;
  pointer-events: none;
  max-height: 280px;
  overflow-y: auto;
}

.search-input.active .autocom-box{
  padding: 10px 8px;
  opacity: 1;
  pointer-events: auto;
}

.autocom-box li{
  list-style: none;
  padding: 8px 12px;
  display: none;
  width: 100%;
  cursor: default;
  border-radius: 3px;
}

.search-input.active .autocom-box li{
  display: block;
}
.autocom-box li:hover{
  background: #f2f2f2;
}

.search-input .icon{
  position: absolute;
  right: 0px;
  top: 1px;
  height: 55px;
  width: 55px;
  text-align: center;
  line-height: 50px;
  font-size: 15px;
  color: rgb(112, 106, 106);
  cursor: pointer;
}

form{
  position: absolute;
  width: 60px;
  height: 60px;
  left: 50%;
  top: ;
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
  top: ;
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


  </style>
</head>

<body>

    
 <!-- Start header -->
 <%@include file="header.jsp" %>
 <!-- ======= End Header ======= -->
<!-- ======= Hero Section ======= -->

<!-- start bg -->
<div class="banner banner--landing">
  <div class="opacity"></div>
<div class="container">
  <div class="content">
    <div class="left">
      <h1 class="landing-title">Our Range of Free e-Books</h1>
      <p style="max-width: 420px;">Start your preparation by reading our free e-Books with Free download option. </p>
      <a class="primary-btn primary-btn--big" href="#"> Get Started<i class="fa fa-chevron-right"></i></a><br/><br/>
    </div>
    <div class="right hide-tab"><img src="assets/image/e-book.png" style="height: 600px; width: 400px" ></div>
  </div>
</div>
</div>

<div class="wave-shape">
  <img src="assets/image/wave.png">
</div>
<!-- end bg -->
<section class="services">
  




 <!-- section title -->
 <div class="section-title">
          <h2>Download For free</h2>
        </div>
        <br>
 <form action="">
   <input type="search" id="myinput" placeholder="Search...">
   <i class="fa fa-search"></i>
 </form>
</section>
<div class="container" id="card">
<div class="row" >
<div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/image/UPSC.png" >
                <span style="visibility: hidden;"><b>UPSC</b></span>
                <span style="visibility: hidden;"><b>History of Modern India for UPSC</b></span>
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the upsc topic which is very helpful for upcoming Exams</h5>
              <button type="button" class="viewmore"><a href="assets/pdf/A brief History of Modern India for UPSC ( PDFDrive ).pdf">Download now</a></button>
            </div>
          </div>
        </div>   
      </div>
    </div>
    
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/image/airport.png"> 
                <span style="visibility: hidden;"><b>Airport</b></span>           
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Airport system topic which is very helpful for upcoming Exams</h5>
                            <button type="button" class="viewmore"><a href="assets/pdf/Airport Systems_ Planning, Design and Management 2_E ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>
    
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/banking.png">
              <span style="visibility: hidden;"><b>Banking</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the banking topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Bank 4.0_ banking everywhere, never at a bank ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/general knowledge.png">
              <span style="visibility: hidden;"><b>general knowledge</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in General Knowledge  topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf//10000 general knowledge questions and answers.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/computer.png">
              <span style="visibility: hidden;"><b>computer awareness</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in Computer Awareness topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf//Computer Awareness.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/current affairs.png">
              <span style="visibility: hidden;"><b>Current-Affairs</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Current-Affairs topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf//Current-Affairs-June-2017.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/process piping.png">
              <span style="visibility: hidden;"><b>process piping</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Process Piping topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/PROCESS PIPING ASME CODE FOR PRESSURE PIPING, B31 ASME B31.3-2002 ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/Banking and Financial.png">
              <span style="visibility: hidden;"><b>Banking and Financial Awareness Digest</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Banking and Financial Awareness Digest topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Banking-and-Financial-Awareness-Digest-May-2021.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/banking services.png">
              <span style="visibility: hidden;"><b>A Guide to Banking Services</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in  A Guide to Banking Services topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Banking Beyond Banks and Money_ A Guide to Banking Services in the Twenty-First Century ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/cds-english.png">
              <span style="visibility: hidden;"><b>CDS_I_ENGLISH</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the CDS_I-2020 ENGLISH topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/CDS_I_2020_ENGLISH.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/cds-gk.png">
              <span style="visibility: hidden;"><b>CDS_I_2020_GK</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the CDS_I_2020_GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/CDS_I_2020_GK.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/CSAT.png">
              <span style="visibility: hidden;"><b>CSAT General Studies</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the CSAT General Studies topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/CSAT General Studies PAPER 1 ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/HVAC.png">
              <span style="visibility: hidden;"><b>Fundamentals of HVAC Control Systems_ SI</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of Fundamentals of HVAC Control Systems_ SI topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Fundamentals of HVAC Control Systems_ SI Edition Hardbound Book ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/rrb-silent.png">
              <span style="visibility: hidden;"><b>RRB_silent_letters</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of RRB_silent_letters topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Examdays RRB_silent_letters.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/RRB-locopilot.png">
              <span style="visibility: hidden;"><b>RRB locopilot</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of RRB locopilot topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Examdays RRB_RRB locopilot Upkar book pdf.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">
              <img src=" assets/image/RRB-Pshycho.png">
              <span style="visibility: hidden;"><b>RRB Pshycho odd figures</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of RRB Pshycho odd figures topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Examdays -RRB Pshycho odd figures book.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">
              <img src=" assets/image/Environmental.png">
              <span style="visibility: hidden;"><b>Environmental Social Studies</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of Environmental Social Studies topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Environmental-Social-Studies-in-English1.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">
              <img src=" assets/image/defence.png">
              <span style="visibility: hidden;"><b>defence</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of defence topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/defence1.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">
              <img src=" assets/image/Current affairs2.png">
              <span style="visibility: hidden;"><b>Current Affairs May 2017</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of Current-Affairs-May-2017 topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Current-Affairs-May-2017.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/Assessing research-doctorate.png">
              <span style="visibility: hidden;"><b>Assessing research-doctorate programs</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of Assessing research-doctorate programs topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Assessing research-doctorate programs_ a methodology study   ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/API.png">
              <span style="visibility: hidden;"><b>API</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various section in the API topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/API 574 2016.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/Web Programming.png">
              <span style="visibility: hidden;"><b>Beginning Web Programming with HTML, XHTML, and CSS</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Accounting and Financial Management for BCA & MCA topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Beginning Web Programming with HTML, XHTML, and CSS (Wrox Beginning Guides) ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/API2.png">
              <span style="visibility: hidden;"><b>A quick guide to API</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of A quick guide to API topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/A quick guide to API 570 certified pipework inspector syllabus_ Example questions and worked answers.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">
              <img src=" assets/image/Basic Engineering Mathematics.png">
              <span style="visibility: hidden;"><b>Basic Engineering Mathematics</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of Basic Engineering Mathematics topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Basic Engineering Mathematics.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/account.png">
              <span style="visibility: hidden;"><b>Accounting and Financial Management for BCA & MCA</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Accounting and Financial Management for BCA & MCA topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Accounting and Financial Management for BCA & MCA.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/piping.png">
              <span style="visibility: hidden;"><b>Piping and Pipeline Calculations Manual Construction</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Piping and Pipeline Calculations Manual Construction topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Piping and Pipeline Calculations Manual_ Construction, Design Fabrication and Examination ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

    <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/railway pilot.png">
              <span style="visibility: hidden;"><b>Railway Assistant Loco Pilot</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Railway Assistant Loco Pilot topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Examdays_Upkar_Railway_Assistant_Loco_Pilot_Examdays.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>
   
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/image/railway.png">  
                <span style="visibility: hidden;"><b>railway</b></span>          
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the railway topic which is very helpful for upcoming Exams</h5>
                            <button type="button" class="viewmore"><a href="assets/pdf/Modern Railway Track ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>
  </div>
    
  <div class="row" >
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/image/quantitative.png">
                <span style="visibility: hidden;"><b>Aptitude and Reasoning</b></span>
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Aptitude and Reasoning topic which is very helpful for upcoming Exams</h5>
              <button type="button" class="viewmore"><a href="assets/pdf/Quantitative Aptitude and Reasoning ( PDFDrive ).pdf">Download now</a></button>
            </div>
          </div>
        </div>   
      </div>
    </div>
    
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/image/polity.png">
                <span style="visibility: hidden;"><b>IAS</b></span>
                <span style="visibility: hidden;"><b>POLITY</b></span>            
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the Polity & Governance topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/The Polity & Governance Compendium for IAS Prelims General Studies CSAT Paper 1, UPSC & State PSC ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>
   
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
            <img src=" assets/image/ssc math.png">
              <span style="visibility: hidden;"><b>ssc</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Disha SSC Mathematics Guide in English.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>
    
  <div class="col-sm-3" style="padding-top:50px;  padding-bottom: 50px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/image/upsc2.png"> 
                <span style="visibility: hidden;"><b>upsc</b></span>           
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the upsc topic which is very helpful for upcoming Exams</h5>
                        <button type="button" class="viewmore"><a href="assets/pdf/A Beginers Guide to UPSC Preparation ( PDFDrive ).pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>
  </div>
  </div>
    





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
      $("#card div").filter(function(){
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
      });
    });
  });



</script>
<script >
  $('.flip').hover(function(){
        $(this).find('.card').toggleClass('flipped');

 });

</script>
</body>

</html>