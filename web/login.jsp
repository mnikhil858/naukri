<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/login.css" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <title>Sign In & Sign Up | easyNaukri4u</title>
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <style>
        
    </style>
  </head>
  <body style="overflow-x: hidden;">
    <!-- Start header -->
    <%@include file="header.jsp" %>
    <!-- End header -->
    <section class="form">
    <div class="row">
      <div class="forms-container">
        <div class="signin-signup">
            <form action="login_code.jsp" class="sign-in-form">
            <h2 class="title">Log In</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="email" name="email" placeholder="Email" required="">
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password" required="">
            </div>
            <input type="submit" value="Login" class="btn solid" />
          </form>
            <form action="register.jsp" class="sign-up-form">
              <br/><h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="name" placeholder="Name" required />
            </div>
            <div class="input-field">
              <i class="fas fa-phone"></i>
              <input type="number" name="Contact_No" placeholder="Contact number" required/>
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" placeholder="Email" required/>
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password" id="txtPassword" required />
            </div>
             <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="confirmPassword" placeholder="Confirm Password" id="txtConfirmPassword" required/>
            </div>
            
            <input type="submit" class="btn" value="Sign up" id="btnSubmit"/>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here</h3>
            <p>
             Sign Up Now . Create an Account.
            </p>
            <button class="btn transparent" id="sign-up-btn">Sign Up</button>
          </div>
          <img src="assets/svg/log.svg" class="image" alt="" style="margin-top: -100px;"/>
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us !</h3>
            <p>
            Already have an account! Log in YourSelf.
            </p>
            <button class="btn transparent" id="sign-in-btn" >Log In</button>
          </div>
          <img src="assets/svg/register.svg" class="image" alt="" style="margin-top: -100px;"/>
        </div>
      </div>
    </div>    
</section>
<!-- ======= Footer ======= -->
<%@include file="footer.jsp" %>  
<!-- End Footer -->
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnSubmit").click(function () {
                var password = $("#txtPassword").val();
                var confirmPassword = $("#txtConfirmPassword").val();
                if (password !== confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }
                return true;
            });
        });
    </script>
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
 
    <script src="assets/js/login.js"></script>
  </body>
</html>
