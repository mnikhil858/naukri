<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Notes | easyNaukri4u</title>
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
  <style>
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


/*Search start here*/
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
  margin-top: 20px;
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
/*Search end here*/
/*Flip Card Starts here*/
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
/*flipcard end here*/
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
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
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
      <h1 class="landing-title">Free Study Materials.</h1>
      <p style="max-width: 420px;">Properly arranged study material available so that you don't get confused and not wasting your time in searching over internet and finding pages in several bundles of book. </p>
      <a class="primary-btn primary-btn--big" href="#">Get Started<i class="fa fa-chevron-right"></i></a><br/><br/>
    </div>
    <div class="right hide-tab"><img src="assets/image/note.png" style=" height: 550px;"></div>
  </div>
</div>
</div>

<div class="wave-shape">
  <img src="assets/image/wave.png">
</div>
<!-- end bg -->
       
<section class="portfolio section-sm" id="portfolio">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-lg-12">
    
                    <!-- section title -->
                    <div class="container">
                        <div class="section-title">
                            <h2><b>Sample Papers</b></h2>
                            <center> 
                                <p>
                                    All categories of Govt Job related course materials found here. We are trying to provided best materials for relative govt jobs, so that a candidate easily study. The learning material has to be clear, fair, efficient, and accessible (both technically and economically).Here We offer Previous year question paper and some Notes.
                                </p>
                            </center>
                            <div class="border"></div>
                        </div>
                    </div>
                    <br/>
                    <!-- /section title -->
                    <form action="">
                        <input type="search" id="myinput" placeholder="Search...">
                        <i class="fa fa-search"></i>
                    </form>
                 </div>
            </div>
        </div>
    </section>

<div class="container" id="card">
<div class="row" >
<div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/samplepaperimages/Series-Alphabet-Reasoning-signature.jpg" >
                <span style="visibility: hidden;"><b>Alphabet Series Tricks</b></span>
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
              <button type="button" class="viewmore"><a href="assets/pdf/Alphabet Series Tricks.pdf">Download now</a></button>
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
              <img src=" assets/samplepaperimages/Analogytest.jpeg"> 
                <span style="visibility: hidden;"><b>Analogy Test</b></span>           
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                            <button type="button" class="viewmore"><a href="assets/pdf/Analogy Test with Answers PDF.pdf">Download now</a></button>

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
            <img src=" assets/samplepaperimages/BLOOD-RELATION.jpg">
              <span style="visibility: hidden;"><b>Blood Relation</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Blood Relations Shortcut Tricks - PDF.pdf">Download now</a></button>

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
              <img src=" assets/samplepaperimages/computer.png">  
                <span style="visibility: hidden;"><b>Computer</b></span>          
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                            <button type="button" class="viewmore"><a href="assets/pdf/Comp. 100.pdf">Download now</a></button>

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
              <img src=" assets/samplepaperimages/RSMSSB-LDC-.jpg">
                <span style="visibility: hidden;"><b>RSMSSB</b></span>
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
              <button type="button" class="viewmore"><a href="assets/pdf/Rajastan Ldc Computer.pdf">Download now</a></button>
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
              <img src="assets/samplepaperimages/RSMSSB-LDC-ENGLISH.jpg">
                <span style="visibility: hidden;"><b>RSMSSB</b></span>            
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Rajastan Ldc english.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/RSMSSB-LDC-general-hindi.jpg">
              <span style="visibility: hidden;"><b>RSMSSB</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Rajastan Subordinate General Hindi.pdf">Download now</a></button>

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
              <img src=" assets/samplepaperimages/RRB-GENERAL-knowledge.jpg"> 
                <span style="visibility: hidden;"><b>RRB</b></span>           
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                        <button type="button" class="viewmore"><a href="assets/pdf/RRB General Knowledge Sample Papers eBook.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/RRB NTPC tier1.png">
              <span style="visibility: hidden;"><b>RRB NTPC</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/rrb-ntpc-tier-1-hindi-paper-2019-held-on-12-02-2021-shift-1.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/RRB NTPC tier2.png">
              <span style="visibility: hidden;"><b>RRB NTPC</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/rrb-ntpc-tier-1-hindi-paper-2019-held-on-12-03-2021-shift-3.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/SBI-Clerk-computer.png">
              <span style="visibility: hidden;"><b>SBI Clerk</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/SBI Clerk Computer Awarness.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/SBI-Clerk-english.png">
              <span style="visibility: hidden;"><b>SBI Clerk</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Sbi Clerk English.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/SBI-Clerk-Numerical Ability hindi.png">
              <span style="visibility: hidden;"><b>SBI Clerk</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/SBI Numerical Ability Hindi.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/SBI-Clerk-Reasoning hindi.png">
              <span style="visibility: hidden;"><b>SBI Clerk</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/Sbi Clerk Reasoning hindi.pdf">Download now</a></button>

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
            <img src="assets/samplepaperimages/ssc.jpg">
              <span style="visibility: hidden;"><b>SSC</b></span>            
          </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                           <button type="button" class="viewmore"><a href="assets/pdf/SSC Aptitude.pdf">Download now</a></button>

            </div>
          </div>
        </div>   
      </div>
    </div>

  </div>
  </div>

<!-- ========================================================================================================================================= -->
<div class="section-title">
<h2>Notes</h2>
<center><p style="text-align: justify; font-size: 20px;width: 80%;">In the preparation for teaching some of the less frequent motifs, based on the need to be curious, to
  discover, to be playful and constructive, the need for security, comfort, contact, the desire for autonomy,
  and the need to manage time.The study materials should respect the hermeneutic approach. </p></center>

</div>

<div class="container" id="card">
<div class="row" >
<div class="col-sm-3" style="padding-top:50px;  padding-bottom: 10px;">
      <div class="flip">
        <div class="card"> 
          <div class="face front"> 
            <div class="inner" id="card">   
              <img src=" assets/samplepaperimages/ias short notes.jpg" >
                <span style="visibility: hidden;"><b>IAS</b></span>
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
              <button type="button" class="viewmore"><a href="assets/pdf/Short Notes IAS CS365 2021 Volume 1 Sample.pdf">Download now</a></button>
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
              <img src=" assets/samplepaperimages/rrb-ntpc-guide.jpeg"> 
                <span style="visibility: hidden;"><b>RRB NTPC</b></span>           
            </div>
          </div> 
          <div class="face back"> 
            <div class="inner text-center"> 
              <h5>We are sharing a compilation of various individual section in the GK topic which is very helpful for upcoming Exams</h5>
                            <button type="button" class="viewmore"><a href="assets/pdf/RRB NTPC Full Notes PDF in English.pdf">Download now</a></button>

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
    <script >
  $('.flip').hover(function(){
        $(this).find('.card').toggleClass('flipped');

 });

</script>
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
</body>
</html>