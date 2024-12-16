<%-- 
    Document   : result
    Created on : 26 Sep, 2021, 3:28:12 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result | easyNaukri4u</title>
        <link href="../assets/css/style.min.1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
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
              #bg-text
                {
                    color:lightgrey;
                    font-size:35px;
                    position: relative;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                }
        </style>
        <script>
            function fod()
            {
                window.history.forward();
                window.setTimeout("window.location.href='user_dashboard.jsp';",300000);
            }
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
    </head>
    <body onload="fod()" class="noselect" oncontextmenu="return false;">
        <%@include file="header.jsp" %>
        <%
            String selectedoption = request.getParameter("selectedoption");
            String savequestion_id = request.getParameter("savequestion_id");
            if(selectedoption.equals("")){
                
            }
            else{
                String quer = "update student_savequestion set selectedoption = '"+selectedoption+"' where savequestion_id = '"+savequestion_id+"'";
                if(db.executeNonQuery(quer)){
                    //Data updated
                }
                else{
                    //Date not updated
                }
            }
            String register_id = session.getAttribute("register_id").toString();
            String exam_id = request.getParameter("exam_id");
            String query = "select * from exam where exam_id = '"+exam_id+"'";
            ResultSet sq = db.selectQuery(query);
            while(sq.next()){
        %>
        <div class="container" style="margin-top: 90px;">
            <center>
                <h4>Your <%= sq.getString("exam_title")%> Result</h4><br/>
                <a href="user_dashboard.jsp"><button class="btn btn-pill" style="float: left;">Go to Home</button>​</a><br/><br/>
                <marquee style="color: #344e7d;">After 5 minutes, you will automatically redirect to dashboard.</marquee><br/><br/>
                <div class="row">
                    <div class="col-md-12 table-responsive">
                        <table class="table table-bordered table">
                            <tr style="background: #fcfcfc;">
                                <th scope="col" style="color: #2b23a8;">Total Questions</th>
                                <th scope="col" style="color: #2376a5;">Total Marks</th>
                                <th scope="col" style="color: #35bc11;">Attempted Questions</th>
                                <th scope="col" style="color: red;">Non-Attempted Questions</th>
                                <th scope="col" style="color: #35bc11;">Correct Answers</th>
                                <th scope="col" style="color: red;">Wrong Answers</th>
                                <th scope="col" style="color: #2376a5;">Obtained Marks</th>
                            </tr>
                            <%
                                String que = "SELECT *  FROM student_savequestion uq, exam_question_tbl q where uq.question_id = q.question_id and uq.register_id='"+register_id+"' and uq.exam_id='"+exam_id+"' ORDER BY savequestion_id ASC";
                                ResultSet rd = db.selectQuery(que);
                                int i = 0, a=0, b=0, c = 0, d = 0;
                                while(rd.next()==true){
                                    i++;
                                    if(rd.getString("selectedoption").equals("null")){
                                        a++;
                                    }
                                    else{
                                        b++;
                                    }
                                    if(rd.getString("selectedoption").equals(rd.getString("exam_answer"))){
                                        c++;
                                    }
                                    else if(rd.getString("selectedoption").equals("null")){
                                        
                                    }
                                    else{
                                        d++;
                                    }
                                }
                                float v = c * sq.getFloat("marks_perquestion");
                                float l = d * sq.getFloat("negative_marking");
                                float sum = v - l;
                            %>
                            <tr>
                                <th scope="col"><%= i%></th>
                                <th scope="col"><%= sq.getInt("total_marks")%></th>
                                <th scope="col"><%= b%></th>
                                <th scope="col"><%= a%></th>
                                <th scope="col"><%= c%></th>
                                <th scope="col"><%= d%></th>
                                <th scope="col"><%= sum %></th>
                            </tr>
                        </table>
                    </div>
                </div>
            </center>
            <%
                String sd = "select * from student_result where exam_id = '"+exam_id+"' and register_id = '"+register_id+"'";
                ResultSet dc = db.selectQuery(sd);
                if(dc.next()== true){
                    if(db.executeNonQuery("update student_result set obtained_marks = '"+sum+"' where exam_id = '"+exam_id+"' and register_id = '"+register_id+"'")){
                        //out.print("Inserted");
                    }
                    else{
                        //out.print("Not Inserted");
                    }
                }
            %>
            <button onclick="printFunction()" class="btn btn-primary" style="float: right;">Download Result</button>​
            <%
                ResultSet fd = db.selectQuery(que);
                int n = 1;
                while(fd.next() == true){
            %>
            <div class="row">
                <div class="col-md-12">
                    <center><p id="bg-text">easyNaukri4u</p></center>
                    <b><%= n%>. </b><%= fd.getString("exam_question")%><br/>
                    <%
                        if(fd.getString("exam_answer").equals("A")){
                    %>
                    <b>A. </b><%= fd.getString("exam_ch1")%><br/>
                    <b>B. </b><%= fd.getString("exam_ch2")%><br/>
                    <b>C. </b><%= fd.getString("exam_ch3")%><br/>
                    <b>D. </b><%= fd.getString("exam_ch4")%><br/>
                    <%
                        }
                        else if(fd.getString("exam_answer").equals("B")){
                    %>
                    <b>A. </b><%= fd.getString("exam_ch1")%><br/>
                    <b>B. </b><%= fd.getString("exam_ch2")%><br/>
                    <b>C. </b><%= fd.getString("exam_ch3")%><br/>
                    <b>D. </b><%= fd.getString("exam_ch4")%><br/>
                    <%
                        }
                        else if(fd.getString("exam_answer").equals("C")){
                    %>
                    <b>A. </b><%= fd.getString("exam_ch1")%><br/>
                    <b>B. </b><%= fd.getString("exam_ch2")%><br/>
                    <b>C. </b><%= fd.getString("exam_ch3")%><br/>
                    <b>D. </b><%= fd.getString("exam_ch4")%><br/>
                    <%
                        }
                        else if(fd.getString("exam_answer").equals("D")){
                    %>
                    <b>A. </b><%= fd.getString("exam_ch1")%><br/>
                    <b>B. </b><%= fd.getString("exam_ch2")%><br/>
                    <b>C. </b><%= fd.getString("exam_ch3")%><br/>
                    <b>D. </b><%= fd.getString("exam_ch4")%><br/>
                    <%
                        }
                    %>
                    <%
                        if(fd.getString("selectedoption").equals("null")){
                    %>
                    <b style="color: red;">Selected Option:</b><br/>
                    <b style="color: #38b00b;">Correct Answer: <%= fd.getString("exam_answer")%> </b>
                    <%
                        }
                        else{
                    %>
                    <b style="color: red;">Selected Option: <%= fd.getString("selectedoption")%></b><br/>
                    <b style="color: #38b00b;">Correct Answer: <%= fd.getString("exam_answer")%> </b>
                    <%
                        }
                    %>
                    <hr/><br/>
                </div>
            </div>
            <%
                n++;
                }
            }
            %>
        </div>
        <script>
                function printFunction() { 
                    window.print(); 
                }
//                function printFunction() {
//                    var divContents = document.getElementById("dive").innerHTML;
//                    var prnt = window.open('', '', 'height=500, width=500');
//                     prnt .document.write(divContents);
//                    prnt .document.close();
//                    prnt .print();
//                }
            </script>
    </body>
</html>
