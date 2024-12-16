<%-- 
    Document   : question-paper
    Created on : 25 Sep, 2021, 8:18:48 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if( session.getAttribute("emailid")==null)
 {
     response.sendRedirect("../login.jsp");
 }
 else
 {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../assets/css/style.min.1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript"> 
            function googleTranslateElementInit() { 
                new google.translate.TranslateElement(
                    {pageLanguage: 'en'}, 
                    'google_translate_element'
                ); 
            } 
        </script>
        <script type="text/javascript">
            function preventBack() { 
                window.history.forward(); 
                }
            setTimeout("preventBack()", 0);
            window.onunload = function () { null };
        </script>
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

            <!-- Disable CTRL U and Right Click -->
            <script>
              document.onkeydown = function(e) {
                if (e.ctrlKey && e.keyCode === 85) {
                  return false;
                }
              };
            </script>
            <body oncontextmenu="return false;"></body>

            <!-- disable f12 and ctrl+shift+i -->

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
        <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
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
              }
        </style>
    </head>
    <body class="noselect" oncontextmenu="return false;">
        <%@include file="header.jsp" %>
        <div class="container" style="margin-top: 90px;">
            <div id="google_translate_element" style="float: right;">
                <center><h6 class="sl-inner"></h6></center>
            </div>
            <center><h2>Question Paper</h2></center>
            <%
                String register_id = session.getAttribute("register_id").toString();
                String exam_id = request.getParameter("exam_id");
                String savequestion_id = request.getParameter("savequestion_id");
                String query = "SELECT *  FROM student_savequestion uq, exam_question_tbl q where uq.question_id = q.question_id and uq.register_id='"+register_id+"' and uq.exam_id='"+exam_id+"' ORDER BY savequestion_id ASC";
                ResultSet r = db.selectQuery(query);
                int i = 1;
                while(r.next()== true){
            %>
            <div class="row">
                <div class="col-md-12" style="margin-bottom: 30px;">
                    <b><%= i%>. </b><%= r.getString("exam_question")%><br/>
                    <b>A. </b><%= r.getString("exam_ch1")%><br/>
                    <b>B. </b><%= r.getString("exam_ch2")%><br/>
                    <b>C. </b><%= r.getString("exam_ch3")%><br/>
                    <b>D. </b><%= r.getString("exam_ch4")%><hr/><br/>
                </div>
            </div>
            <%
                    i++;
                }
            %>
        </div>
        <div style="position: fixed; bottom: 0; width: 100%; background-color: #fdfdfd; padding: 15px; border-top: 1px solid #ececec;">
            <form action="test_exam_question.jsp" method="post">
                <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                <input type="hidden" name="savequestion_id" value="<%= savequestion_id%>"/>
                <center><input type="submit" value="Back to Test" class="btn" style="background: #dcc149;"></center>
            </form>
        </div>
    </body>
</html>
<%
    }
%>