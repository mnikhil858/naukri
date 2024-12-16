<%-- 
    Document   : instructions
    Created on : 10 Sep, 2021, 7:06:42 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 if( session.getAttribute("emailid")==null)
 {
     response.sendRedirect("../login.jsp");
 }
 else
 {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instructions</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="../assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="../assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
  <link href="../assets/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript">
            function preventBack() { 
                window.history.forward(); 
                }
            setTimeout("preventBack()", 0);
            window.onunload = function () { null };
        </script>
        <script type="text/javascript"> 
            function googleTranslateElementInit() { 
                new google.translate.TranslateElement(
                    {pageLanguage: 'en'}, 
                    'google_translate_element'
                ); 
            } 
        </script>
        <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        <script>
        document.onkeydown = function(e) {
        if (e.ctrlKey && 
            (e.keyCode === 67 || 
             e.keyCode === 86 || 
             e.keyCode === 85 || 
             e.keyCode === 117)) {
            return false;
            } else {
                return true;
            }
            };
            $(document).keypress("u",function(e) {
              if(e.ctrlKey)
              {
            return false;
            }
            else
            {
            return true;
            }
            });
            </script>

<!--             Disable CTRL U and Right Click -->
            <script>
              document.onkeydown = function(e) {
                if (e.ctrlKey && e.keyCode === 85) {
                  return false;
                }
              };
            </script>
            <body oncontextmenu="return false;"></body>

<!--             disable f12 and ctrl+shift+i -->

            <script>
              $(document).keydown(function (event) {
            // Prevent F12 -
            if (event.keyCode == 123) {
               return false;
            }
            // Prevent Ctrl+a = disable select all
            // Prevent Ctrl+u = disable view page source
            // Prevent Ctrl+s = disable save
            if (event.ctrlKey && (event.keyCode === 85 || event.keyCode === 83 || event.keyCode ===65 )) {
               return false;
            }
            // Prevent Ctrl+Shift+I = disabled debugger console using keys open
            else if (event.ctrlKey && event.shiftKey && event.keyCode === 73)
            {
               return false;
            }
            });

            </script>
            <!-- Disable cut copy paste -->
            <script>
              $(document).ready(function(){
               $('body').bind('cut copy paste', function (e)
               {
                  e.preventDefault();
               });
            });
        </script>
        <style>
            /*    This below code is for to disable text selection*/
            .noselect {
                -webkit-touch-callout: none; /* iOS Safari */
                  -webkit-user-select: none; /* Safari */
                   -khtml-user-select: none; /* Konqueror HTML */
                     -moz-user-select: none; /* Firefox */
                      -ms-user-select: none; /* Internet Explorer/Edge */
                          user-select: none; /* Non-prefixed version, currently
                                                supported by Chrome and Opera */
                  
                  @media (min-width: 338px){
                  #general{
                   text-align: center;
                   
                  }
              }
              }
        </style>
    </head>
    <body class="noselect" onkeydown="return (event.keyCode != 116)" oncontextmenu="return false;">
        <%@include file="header.jsp" %>
        <%
            String exam_id = request.getParameter("exam_id");
            String register_id = session.getAttribute("register_id").toString();
            String query = "select * from exam where exam_id = '"+exam_id+"'";
            ResultSet rs = db.selectQuery(query);
            while(rs.next()){
        %>
            
            <div class="container-fluid" id="dive">
                <center><h3 style="margin-top: 90px;"><%= rs.getString("exam_title")%></h3></center>
                <br/>
                <div id="google_translate_element" style="float: right;">
                    <center><h6 class="sl-inner"></h6></center>
                </div>
                <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <b id="general" style="font-size: 150%;">General Instructions:</b><br/>
                        <p style="text-align: justify;">
                           <div class="row">
                           <div id="bold" style="height:0px; width:0px; ">
                            <b>1.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                            The exam contains total <b style="color: orange;"><%= rs.getString("question_limit")%></b> questions.
                            </div>
                            </div>
                            <!--1 st instructiin ends here-->
                            <div class="row" style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>2.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                             Each question has 4 options out of which only one is correct.
                           </div>
                            </div>
                            <!--.......2nd..........................-->
                             <div class="row" style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>3.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                                You have to finish the test in  <b style="color: orange;"><%= rs.getString("time_limt")%> </b>minutes.
                             </div>
                            </div>
                             <!--......................3rd.............-->
                            <div class="row" style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>4.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                             You will be awarded <b style="color: green;"><%= rs.getString("marks_perquestion")%></b> mark for each correct answer and <b style="color: red;"><%= rs.getString("negative_marking")%></b> marks will be deducted for each wrong answer.
                             </div>
                            </div>
                            <!--..........5.........................-->
                             <div class="row"style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>5.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                             There is no negative marking for the questions that you have not attempted.
                             </div>
                            </div>
                            <!--..................6.............-->
                             <div class="row"style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>6.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                                Make sure that you complete the test before you submit the test and/or close the browser.
                             </div>
                            </div><br/>
                            <!--........7....Navigating to a Question:..............................................-->
                            <div class="row">
                            <b id="general" style="font-size: 130%;">Navigating to a Question:</b><br/>
                            </div>
                            <br/>
                            <div class="row">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>1.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                             Click on the question number in the Question Palette at the right of your screen to go to that numbered question directly. Note that using this option does NOT save your answer to the current question
                             </div>
                            </div>
                            <!--..................................-->
                            <div class="row"style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>2.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                                Click on <b style="color: blue;">Save & Next</b> to save your answer for the current question and then go to the next question.
                             </div>
                            </div>
                            <!--.................................................-->
                              <div class="row" style="margin-top:5px;">
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                                <b style="color: red;">*</b> Note that your answer for the current question will not be saved, if you navigate to another question directly by clicking on a question number without saving the answer to the previous question.
                             </div>
                            </div>
                            <!--...............................................-->
                            <div class="row"style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b></b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                                <b style="color: red;">*</b> You can view all the questions by clicking on the Question Paper button. <a style="color: #d16b04;">This feature is provided, so that if you want you can just see the entire question paper at a glance</a>
                            </div>
                            </div><br/>
                           <!--..................Answering a Question start here...................................-->
                           <div class="row">
                            <b id="general" style="font-size: 130%;">Answering a Question</b><br/>
                            </div>
                            <br/>
                            <div class="row" style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>1.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                            Procedure for answering a multiple choice (MCQ) type question:
                           </div>
                            </div>
                           <!--.........................................-->
                           <div class="row"style="margin-top:5px;">
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                            <b>A).</b> Choose one answer from the 4 options (A,B,C,D) given below the question, click on the bubble placed before the chosen option.
                            </div>
                            </div>
                           <!--............................................-->
                           <div class="row"style="margin-top:5px;">
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                            <b>B).</b> To deselect your chosen answer, click on the Clear Response button and then click Save & Next button.
                            </div>
                            </div>
                           <!--..................................................-->
                           <div class="row"style="margin-top:5px;">
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                            <b>C).</b> To change your chosen answer, click on the bubble of another option.
                             </div>
                            </div>
                           <!--............................................-->
                           <div class="row"style="margin-top:5px;">
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                            <b>D).</b> To save your answer, you MUST click on the Save & Next.
                            </div>
                            </div>
                           <!--..................................................-->
                           <div class="row"style="margin-top:5px;">
                            <div id="bold" style="height:0px; width:0px;">
                            <b>2.</b>
                            </div>
                            <div class="col-lg-12 col-xs-8" style=" float:right;text-align: justify; margin-left:1px;">
                             To change your answer to a question that has already been answered, first select that question for answer then follow the procedure for answering that type of question.
                            </div>
                            </div>
                           <br/>
                    </p>
                    </div>
                </div>
        </div>
        <div style="position: fixed; bottom: 0; width: 100%; background-color: white; padding: 15px; border-top: 1px solid #ececec;">
            <form action="test_exam_question.jsp" method="post">
                <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                <center>
                    <input type="hidden" name="already_giventest" value="already_giventest"/>
                    <input type="submit" value="Start Test" class="btn btn-primary">
                </center>
            </form>
        </div>
            </div>
        </div>
        <br/><br/>
        <%
            }
        %>
            <!-- Vendor JS Files -->
  <script src="../assets/vendor/jquery/jquery.min.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="../assets/vendor/php-email-form/validate.js"></script>
  <script src="../assets/vendor/venobox/venobox.min.js"></script>
  <script src="../assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="../assets/vendor/counterup/counterup.min.js"></script>
  <script src="../assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="../assets/js/main.js"></script>
    </body>
</html>
<%
    }
%>