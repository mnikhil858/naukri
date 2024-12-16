<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<html>
<head>
<style>
.top-navbar .bg-light{
 background-image: linear-gradient(#0d2735,#0d2735);
 
}

.top-navbar .navbar-light .navbar-nav .nav-link{
  color: #ffffff;
  font-size: 16px;
  font-weight: 600;
  position: fixed;
}

.top-navbar .navbar-light .navbar-nav .nav-item{
  position: relative;
  display: inline-block;
  margin: 1px 20px;
}
.top-navbar .navbar-light .navbar-nav .nav-item .nav-link{
  padding: 6px 0px;
  position: relative;
  display: block;
  line-height: 55px;
  letter-spacing: 0px;
  text-transform: uppercase;
}

.top-navbar .navbar-light .navbar-nav .nav-item::after {
    position: absolute;
    content: '';
    left: 50%;
    bottom: auto;
    top: 11px;
    width: 5px;
    height: 5px;
    opacity: 0;
    margin-left: -3px;
    margin-top: -5px;
    background-color: #ffffff;
    border-radius: 50px;
    -webkit-transform: translateY(0px);
    transform: translateY(0px);
    transition: all 900ms ease;
    -webkit-transition: all 900ms ease;
    -ms-transition: all 900ms ease;
    -o-transition: all 900ms ease;
    -moz-transition: all 900ms ease;
}

.top-navbar .navbar-light .navbar-nav .nav-item .nav-link::before {
    position: absolute;
    content: '';
    left: 0%;
    bottom: auto;
    top: -4px;
    width: 5px;
  height: 5px;
  border-radius: 50px;
    opacity: 0;
    margin-left: -10px;
    margin-top: 9px;
    background-color: #ffffff;
    -webkit-transform: translateY(0px);
    transform: translateY(0px);
    transition: all 900ms ease;
    -webkit-transition: all 900ms ease;
    -ms-transition: all 900ms ease;
    -o-transition: all 900ms ease;
    -moz-transition: all 900ms ease;
}

.top-navbar .navbar-light .navbar-nav .nav-item .nav-link::after {
    position: absolute;
    content: '';
    right: 0%;
    left: auto;
    bottom: auto;
    top: -4px;
    width: 5px;
  height: 5px;
  border-radius: 50px;
  border: none !important;
    opacity: 0;
    margin-right: -11px;
    margin-top: 9px;
    background-color: #ffffff;
    transition: all 900ms ease;
    -webkit-transition: all 900ms ease;
    -ms-transition: all 900ms ease;
    -o-transition: all 900ms ease;
    -moz-transition: all 900ms ease;
}

@media (max-width: 575px) {
.top-navbar .navbar-light .navbar-nav .nav-item .nav-link::after {
    margin-top: 14px;
}
.top-navbar .navbar-light .navbar-nav .nav-item .nav-link::before {
  margin-top: 14px;
  }
  .top-navbar .navbar-light .navbar-nav .nav-item::after {
    margin-top: -1px;
  }
}

.top-navbar .navbar-light .navbar-nav .nav-item.active::after{
  opacity: 1;
}

.top-navbar .navbar-light .navbar-nav .nav-item.active .nav-link::before {
  opacity: 1;
  left: 40%;
}
.top-navbar .navbar-light .navbar-nav .nav-item.active .nav-link{
  color: #eea412;
}
.top-navbar .navbar-light .navbar-nav .nav-item.active .nav-link::after{
  opacity: 1;
  right: 40%;
}

.top-navbar .navbar-light .navbar-nav .nav-item:hover::after{
  opacity: 1;
}

.top-navbar .navbar-light .navbar-nav .nav-item .nav-link:hover::before{
  opacity: 1;
  left: 40%;
}
.top-navbar .navbar-light .navbar-nav .nav-item .nav-link:hover{
  color: #eea412;
}
.top-navbar .navbar-light .navbar-nav .nav-item .nav-link:hover::after{
  opacity: 1;
  right: 40%;
}

.dropdown:hover>.dropdown-menu {
  display: block;
}

.dropdown>.dropdown-toggle:active {
    pointer-events: none;
}

.dropdown:hover>.dropdown-menu .dropdown-item{
  padding-left: 10px;
}


.top-navbar.fixed-menu .bg-light {
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 9999;
    visibility: visible;
    transform: translate(0,0) scale(1);
    transition: .3s;
}

.top-navbar .bg-light {
    padding-top: 0px;
    padding-bottom: 0px;
    box-shadow: 0 0 18px 0 rgba(0,0,0,.12);
}

.top-navbar .navbar-light .navbar-nav li .dropdown-menu {
    box-shadow: 0 2px 12px 0 rgba(0,0,0,.12);
    border: none;
    border-radius: 0px;
    margin: 0px;
    padding: 10px;
}

.top-navbar .navbar-light .navbar-nav li .dropdown-menu a:hover{
  background:  #68A4C4;
  color: #ffffff;
}

.navbar-right li a{
  position: relative;
  font-size: 18px;
  display: inline-block;
 padding-left: 10px;
 padding-right: 10px;
  margin-left: 20px;
}
.navbar-right li a,
.navbar-right li a.hover-btn-new::after {
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.navbar-right li a.hover-btn-new::before,
.navbar-right li a.hover-btn-new::after {
  background: #fff;
  content: '';
  position: absolute;
  border-radius: 5px;
  z-index: 1;
}

.navbar-right li a.hover-btn-new:hover span {
  color: #eea412;
}
.navbar-right li a.hover-btn-new::before {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}
.navbar-right li a.hover-btn-new::after {
  background: #ffffff !important;
  height: 100%;
  left: 0;
  top: 0;

  width: 100%;
}
.navbar-right li a.hover-btn-new span{
  position: relative;
  z-index: 2;
  color: #333333;
}
.navbar-right li a.hover-btn-new:hover:after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}


.navbar-toggler{
 padding: 10px 10px;
}

.navbar-toggler .icon-bar {
    display: block;
    width: 22px;
    height: 2px;
    border-radius: 1px;
  background: #333333;
}
.navbar-toggler .icon-bar + .icon-bar {
    margin-top: 4px;
}

.navbar-toggler:hover .icon-bar{
  background: #ffffff;
}
        </style>
    </head>
    <body>
        <header class="top-navbar fixed-top">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
      <h2  style="color: white;">easyNaukri4u</h2>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation" >
        <span class="icon-bar" style="background-color:   #FFFFFF;"></span>
                  <span class="icon-bar" style="background-color: #FFFFFF;"></span>
                  <span class="icon-bar" style="background-color: #FFFFFF;"></span>
      </button>
        <%
            String email = session.getAttribute("emailid").toString();
            String query_0 = "select * from register where email = '"+email+"'";
            DbManager db= new DbManager();
            ResultSet r0 = db.selectQuery(query_0);
            String user_name_0 = null;
            while(r0.next()== true)
            {
                user_name_0 = r0.getString("name");
            }
        %>
      <div class="collapse navbar-collapse" id="navbars-host">
        <ul class="navbar-nav ml-auto">
            <li style="color: white;"><h5>Welcome! </h5></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li> 
                <a href="../logout.jsp" class="btn btn-primary" href="logout.jsp" style="padding: 5px; "><span>Logout</span></a>
            </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
</body>
</html>