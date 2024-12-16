<%@page import="newpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
 if(session.getAttribute("emailid")== null)
 {
    response.sendRedirect("../login.jsp");
 }
 else
 {
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examination | easyNaukri4u</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="./img/svg/logo.svg" type="image/x-icon">
    <!-- Custom styles -->
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
    </style>
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

<!--             Disable CTRL U and Right Click -->
            <script>
              document.onkeydown = function(e) {
                if (e.ctrlKey && e.keyCode === 85) {
                  return false;
                }
              };
            </script>

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
            
    <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
  <style>
    body {
      font-family: "Lato", sans-serif;
      background-color: white;
    }
    #mySidenav{
      width: 300px;
    }
    .sidenav {
      height: 100%;
      width: 0;
      position: fixed;
      z-index: 1;
      top: 0;
      right: 0;
/*      #f6f6ce*/
        background-color: #e8f8e4;
      overflow-x: hidden;
      transition: 0.5s;
      padding-top: 60px;
    }

    .sidenav a {
      padding: 8px 8px 8px 32px;
      text-decoration: none;
      font-size: 25px;
      color: #818181;
      display: block;
      transition: 0.3s;
    }
    .top-details{
      position: relative;
      float: left;
      width: 100%;
      padding: 4px 16px;
      border-bottom: 1px solid #ddd;
    }
    .top-details .img{
      width: 32px;
      height: 32px;
      margin-right: 8px;
      border-radius: 50%;
      display: inline-block;
      vertical-align: middle;
      background: #fff no-repeat center;
      background-size: cover;
    }
    .top-details span{
      display: inline-block;
    }
    .sidenav a:hover {
      color: black;
    }

    .sidenav .closebtn {
      position: absolute;
      top: 50px;
      right: 25px;
      font-size: 36px;
      color: red;
      margin-left: 50px;
    }
    .q-possible-states {
        position: relative;
        float: left;
        width: 100%;
        padding: 10px 0 8px;
        border-bottom: 1px solid #ddd;
        white-space: nowrap;
    }
    div[class^=col-] {
        float: left;
    }
    .u-legend-indicator {
        height: 18px;
        margin: 2px 0 4px;
        padding: 4px 0 0;
        background-color: #f9f9f9;
        color: #000;
        width: 30px;
        display: inline-block;
        font-size: 75%;
        font-weight: 500;
        line-height: 1;
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: 1px;
    }
    
    .u-legend-indicator1 {
        height: 22px;
        margin: 2px 0 4px;
        padding: 4px 0 0;
        background-color: #f9f9f9;
        color: #000;
        width: 35px;
        display: inline-block;
        font-size: 75%;
        font-weight: 500;
        line-height: 1;
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: 1px;
    }
    
    .q-possible-states .qps-state {
        font-size: 80%;
        vertical-align: -1px;
    }
    .attempted {
        border-radius: 20px 20px 0 0!important;
        background-color: #27ae60!important;
        color: #fff!important;
        border-color: #27ae60!important;
    }
    .col-xs-4 {
        width: 33.33333333%;
    }
    .col-xs-5 {
        width: 41.66666667%;
    }
    .col-xs-7 {
        width: 58.33333333%;
    }
    .pad-r0 {
        padding-right: 0!important;
    }
    .pad-l0 {
        padding-left: 0!important;
    }

    .skipped {
        border-radius: 0 0 20px 20px!important;
/*        background-color: red!important;
        border-color: #c0392b!important;*/
        color: black!important;
    }
    
    .skipped2 {
        border-radius: 0 0 20px 20px!important;
        background-color: #ff1414!important;
        border-color: #c0392b!important;
        color: black!important;
    }
    
    .questions-number-holder {
        position: absolute;
        left: 0;
        right: 0;
        top: 140px;
        bottom: 92px;
    }
    .qnh-inner {
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        overflow: auto;
    }
     .mob-sidebar-section {
        display: block;
        padding: 5px 10px 4px;
        background: #dcc149;
        white-space: nowrap;
        overflow: hidden;
        margin-top:150px;
        text-overflow: ellipsis;
    }
     .mob-sidebar-section span {
        font-weight: 700;
        text-transform: uppercase;
    }
    .mob-sidebar-section+.questionList {
        top: 29px;
      }
    .questionList {
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        margin: 0;
        padding: 10px;
        overflow: auto;
    }
    .questionList>li.current-question  {
        border-radius: 50px!important;
    }
    .questionList>li {
        position: relative;
        border: 1px solid #000;
        font-size: 16px;
        color: #000;
        background-color: #f9f9f9;
        margin: 7px;
        float: left;
        cursor: pointer;
        width: 38px;
        padding: 4px 0;
    }
    .label {
        display: inline;
        padding: .1em .3em;
        font-size: 75%;
        font-weight: 500;
        line-height: 1;

        background-color: #fff;
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: 1px;
    }
    ul {
        list-style-type: disc;
    }
    .marks-action {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 8px 16px;
        background: #e8f8e4;
        -webkit-box-shadow: 0 -1px 2px #9ecee5;
        box-shadow: 0 -1px 2px #9ecee5;
    }
    .main-btn-box {
        position: relative;
        float: left;
        width: 100%;
        padding-left: 0;
        list-style: none;
        margin: 0 0 8px;
    }
    .main-btn-box>li:first-child {
        padding-right: 4px;
    }
    .main-btn-box>li {
        float: left;

        margin: 0;
    }
    .btn-info-test {
        background-color: #dcc149;
        border: 1px solid #dcc149;
        color: #333;
        text-shadow: 0 0 0 transparent;
    }
    .main-btn-box>li:last-child {
        padding-left: 4px;
    }

    .btn {
        margin: 0;
    }
    .btn-block {
        display: block;
        width: 100%;
        text-align: center;
    }
    button[type=button], button[type=reset] {
        cursor: pointer;
    }
    [type=reset], [type=submit], button, html [type=button] {
        -webkit-appearance: button;
    }
    .btn-block {
        display: block;
        width: 100%;
        text-align: center;
    }
    .btn {
        display: inline-block;
        margin-bottom: 0;
        font-weight: 500;
        text-align: center;
        vertical-align: middle;
        touch-action: manipulation;
        cursor: pointer;
        background-image: none;
        border: 1px solid transparent;
        white-space: nowrap;
        -webkit-transition: all .3s cubic-bezier(.165,.84,.44,1);
        -o-transition: all .3s cubic-bezier(.165,.84,.44,1);
        transition: all .3s cubic-bezier(.165,.84,.44,1);
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        border-radius: 3px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }
    .btn-theme {
        color: #fff;
        background-color: #dcc149;
        border-color: #dcc149;
        color: black;
    }
    .tb-main-header {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        width: 100%;
        height: 52px;
        padding: 0 16px;
        background: #fff;
        z-index: 41;
        opacity: 1;
        -webkit-transition: all .3s cubic-bezier(.165,.84,.44,1);
        -o-transition: all .3s cubic-bezier(.165,.84,.44,1);
        transition: all .3s cubic-bezier(.165,.84,.44,1);
        -webkit-box-shadow: 0 2px 4px rgb(0 0 0 / 10%);
        box-shadow: 0 2px 4px rgb(0 0 0 / 10%);
    }
    .test-sections-list {
        position: relative;
        height: 40px;
        margin-top: -40px;
        padding: 5px 16px 0;
        background-color: #f9f9f9;
        -webkit-box-shadow: 0 1px 2px rgb(0 0 0 / 20%);
        box-shadow: 0 1px 2px rgb(0 0 0 / 20%);
    }
    .test-sections-list .sl-inner {
        right: 160px;
        left: 18px;
    }
    .test-sections-list .sl-inner {
        position: absolute;
        left: 100px;
        background-color: #166A84;
        right: 145px;
        width: 200px;
        margin: 5px;
        top: 0;
        bottom: 0;
        padding-top: 2px;

        padding-right: 5px;
        padding-bottom: 10px;
        border-radius: 5px;
        padding-left: 10px;

    }
    h6{

      color: white;
    }
    .navbar-toggle {
        position: absolute;
        right: 16px;
        bottom: 55px;
        padding: 0;
        width: 36px;
        height: 36px;
        z-index: 9;
    }
    .navbar-toggle.active  {
        display: block;
    }
    .lang{
        border: 1px solid #ddd;
        background-color: #fff;
        padding: 3px;
        float: left;
        margin-left: 900px;
    }
    #fullscreen{
      margin-left: 70%;
      border: 1px solid #f19527;
      background-color: #f19527;
      color:black;
      margin-top: 5px;
      margin-bottom: 5px;
    }
    .btn-success{
      background-color: white;
      border-color: green;
      color: #1FBADC;
    }
    @media screen and (max-height: 450px) {
      .sidenav {padding-top: 15px;}
      .sidenav a {font-size: 18px;}
    }

    .test-sections-list .sl-inner {
      left: 10px;
    }
    @media (max-width: 576PX){
      .lang{
       float: right;
      }
      #fullscreen{
      margin-left: 50px;
      border: 1 px solid green;
    }
    .navbar-toggle {
        position: absolute;
        right: 16px;
        bottom: 57px;
        padding: 0;
        width: 36px;
        height: 36px;
        z-index: 9;
    }
    
    div.scroll {
        margin:4px, 4px;
        padding:20px;
        width: 100%;
        height: 420px;
        overflow-x: hidden;
        overflow-y: auto;
    }
    div.scroll2{
        margin-top: 10px;
        margin:4px, 4px;
        padding:20px;
        width: 100%;
        height: 320px;
        overflow-x: hidden;
        overflow-y: auto;
    }
    #mySidenav{
      width: 0px;
    }
</style>
</head>

<body class="noselect" onkeydown="return (event.keyCode != 116)" oncontextmenu="return false;">

<!-- ! Body -->

<div class="page-flex" id="totalbody">
    <div class="tb-main-header" style="display:flex; background: #0d2735;">
       <h2 style="padding:8px; color: white; font-size:1.25rem;line-height:inherit;white-space:nowrap">easyNaukri4u</h2>
    </div>
    <%
            String exam_id = request.getParameter("exam_id");
            String register_id = session.getAttribute("register_id").toString();
            String already_giventest = request.getParameter("already_giventest");
            String x = request.getParameter("save");
            DbManager db = new DbManager();
            String date = db.getDate();
            
//            Insert Zero value in student result table
            
            String gf = "select * from student_result where exam_id = '"+exam_id+"' and register_id = '"+register_id+"'";
            ResultSet fg = db.selectQuery(gf);
            if(fg.next()== true)
            {
              if((db.executeNonQuery("update student_result set obtained_marks = 0 where exam_id = '"+exam_id+"' and register_id = '"+register_id+"'")) && (db.executeNonQuery("update student_result set result_date = '"+date+"' where exam_id = '"+exam_id+"' and register_id = '"+register_id+"'"))){
                }  
            }
            else{
                if(db.executeNonQuery("insert into student_result (register_id, exam_id, obtained_marks, result_date) values('"+register_id+"', '"+exam_id+"', 0, '"+ date+"')")){
                
            }
            }
                if("save".equals(x))
                    {
                        String question_id=request.getParameter("question_id");
                        String selectedoption= request.getParameter("selectedoption");
                        //String query = "update student_savequestion set selectedoption= '"+selectedoption+"' where question_id='"+question_id+"' and register_id='"+register_id+"'";
                        if(selectedoption.equals("")){
                            if(db.executeNonQuery("update student_savequestion set selectedoption= 'null' where question_id='"+question_id+"' and register_id='"+register_id+"'")==true)
                            {
                            }
                            else
                            {
                            out.print("There are some problem.......");
                            }
                        }
                        else{
                            if(db.executeNonQuery("update student_savequestion set selectedoption= '"+selectedoption+"' where question_id='"+question_id+"' and register_id='"+register_id+"'")==true)
                            {
                            }
                            else
                            {
                            out.print("There are some problem.......");
                            }
                        }

                    }
                else
                    {

                    }
                
                if("already_giventest".equals(already_giventest))
                {
                    if(db.executeNonQuery("delete from student_savequestion where exam_id = '"+exam_id+"' and register_id = '"+ register_id+"'")){
                        
                    }
                    ResultSet am= db.selectQuery("select * from exam_question_tbl where exam_id='"+exam_id+"'");
                    while(am.next()){
                        String qid= am.getString("question_id");
                        String query ="insert into student_savequestion (savequestion_id, register_id, exam_id, question_id, selectedoption) values(NULL,'"+ register_id+"','"+exam_id+"','"+qid+"','null')";
                        if(db.executeNonQuery(query)){
                            //out.print("Data Inserted");
                        }
                        else{
                            //out.print("Data Not Inserted");
                        }
                    }
                }
                else
                {
                    //String selectedoption=request.getParameter("selectedoption");
                    ResultSet ps= db.selectQuery("select * from student_savequestion where exam_id="+exam_id+" and register_id="+ register_id+"");
                    if(ps.next()== true){
                        
                    }
                    else{
                        ResultSet as= db.selectQuery("select * from exam_question_tbl where exam_id='"+exam_id+"'");
                        while(as.next()){
                        String qid= as.getString("question_id");
                        String query ="insert into student_savequestion (savequestion_id, register_id, exam_id, question_id, selectedoption) values(NULL,'"+ register_id+"','"+exam_id+"','"+qid+"','null')";
                        if(db.executeNonQuery(query)){
                            //out.print("Data Inserted");
                        }
                        else{
                            //out.print("Data Not Inserted");
                        }
                    }
                    }
                }
                
                
                
                
                
                
                String query1 = "select * from exam where exam_id = '"+exam_id+"'";
                String query0 = "select * from register where register_id = '"+register_id+"'";
                ResultSet rs = db.selectQuery(query1);
                ResultSet rn = db.selectQuery(query0);
                String user_name = "";
                String exam_name = "";
                String negative_marks = "";
                if(rs.next()){
                    exam_name = rs.getString("exam_title");
                    negative_marks = rs.getString("negative_marking");
                }
                if(rn.next()){
                    user_name = rn.getString("name");
                }
                String que = "select * from student_savequestion where register_id = '"+register_id+"' and exam_id = '"+exam_id+"'";
                ResultSet rl = db.selectQuery(que);
                int ans = 0, not_ans = 0;
                while(rl.next()){
                    if(rl.getString("selectedoption").equals("null")){
                        not_ans++;
                    }
                    else{
                        ans++;
                    }
                }
        %>

<div id="mySidenav" class="sidenav">
  
  <div class="top-details">
  <span class="img" style="background-image:url(https://icon2.cleanpng.com/20180309/jkq/kisspng-cartoon-drawing-illustration-vector-blond-man-5aa29b54d8c3a1.3044883215206060368879.jpg);"></span>
  <span><%= user_name%></span>
</div>
<div class="q-possible-states hide-on-railway">
    <center>
        <div class="col-xs-4 pad-r0">
            <span class="u-legend-indicator attempted ng-binding"><b><%= ans%></b></span>
           <span class="qps-state">
            <span>Answered</span>
            <!-- <span>Attempted</span> -->
          </span>
        </div>
        <div class="col-xs-5 pad-l0">
            <span class="u-legend-indicator skipped ng-binding"><b><%= not_ans%></b></span>
            <span class="qps-state">
             <span>Not Answered</span>
             <!-- <span>Unattempted</span> -->
            </span>
        </div>
    </center>
</div>

<!-- number -->
<div questions-number-holder>
  <div class="qnh-inner ng-scope">
    <div class="mob-sidebar-section ng-binding ng-scope" ng-if="section.title != ''">
      <span class="ng-binding">Questions</span>
    </div>
        <div class="container scroll2">
            <%
                String query5 = "SELECT * FROM student_savequestion where register_id = '"+ register_id+"' and exam_id = '"+ exam_id+"' ORDER BY savequestion_id ASC";
                ResultSet rd = db.selectQuery(query5);
                int i= 1;
                while(rd.next())
                {
                    if(rd.getString("selectedoption").equals("null"))
                    {
            %>
                    <form action="test_exam_question.jsp" method="get">
                        <div style="float: left; margin-top: 5px;">
                            <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                            <input type="hidden" name="savequestion_id" value="<%= rd.getInt("savequestion_id")%>"/>
                            <input class="u-legend-indicator skipped" type="submit" value= "<%= i %>" style="cursor: pointer;"/>&nbsp;&nbsp;
                        </div>
                    </form>
                <%
                    }
                    else{
                %>
                    <form action="test_exam_question.jsp" method="get">
                        <div style="float: left; margin-top: 5px;">
                            <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                            <input type="hidden" name="savequestion_id" value="<%= rd.getInt("savequestion_id")%>"/>
                            <input class="u-legend-indicator attempted" type="submit" value= "<%= i %>" style="cursor: pointer;"/>&nbsp;&nbsp;
                        </div>
                    </form>
                <%
                        }
                        i++;
                    }
                %>
        </div>
  </div>
  <%
                        String query2 = "";
                        String savequestion_id = request.getParameter("savequestion_id");
                        if(savequestion_id==null)
                        {
                            query2="SELECT *  FROM student_savequestion uq, exam_question_tbl q where uq.question_id = q.question_id and uq.register_id='"+register_id+"' and uq.exam_id='"+exam_id+"' ORDER BY savequestion_id ASC";
                        }
                        else
                        {
                            query2="SELECT * FROM student_savequestion uq, exam_question_tbl q where uq.question_id = q.question_id and uq.register_id='"+register_id+"' and uq.exam_id='"+exam_id+"' and uq.savequestion_id='"+savequestion_id+"' ORDER BY savequestion_id ASC";
                        }
                        ResultSet ra = db.selectQuery(query2);
                        while (ra.next())
                        {
                    %>
</div>
<div class="marks-action">
  <ul id="mainBtnBox" class="main-btn-box" role="tablist">
      <form action="question-paper.jsp" method="get">
            <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
            <input type="hidden" name="savequestion_id" value="<%= ra.getInt("savequestion_id")%>"/>
            <input type="hidden" name="question_id" value="<%= ra.getString("question_id")%>"/>
            <input class="btn btn-info-test" type="submit" value="Question Paper"/>
      </form>
<!--    <li><button type="button" class="btn btn-info-test btn-block ng-binding" ng-click="setTab('qpaper')">Question Paper</button></li>-->
<!--    <li><button type="button" class="btn btn-info-test btn-block ng-binding" ng-click="getDynamicInstructions()">Instructions</button></li>-->
  </ul>
    <form action="result.jsp" method="get">
        <input type="hidden" name="question_id" value="<%= ra.getString("question_id")%>"/>
        <input type="hidden" name="selectedoption" id="n2"/>
        <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
        <input type="hidden" name="submit_test" value="submit_test"/>
        <input type="hidden" name="savequestion_id" value="<%= ra.getInt("savequestion_id")%>"/>
        <input class="btn btn-block for-all-exams ng-binding" style="background-color: #1e283e; color: white;" onclick="return confirm('Do you really want to save this Test ?')" type="submit" value="SUBMIT TEST" class="btn btn-success"/>
    </form>
<!--  <button type="button" class="btn btn-theme btn-block for-all-exams ng-binding" ng-click="submitBtnPressed()">Submit Test</button>-->
 </div>
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

</div>
<div class="main-wrapper" style="margin-top:95px">
    <!-- ! Main nav -->
        <div class="test-sections-list">
            <center><h6 class="sl-inner"><%= exam_name%></h6></center>
            <div id="google_translate_element" style="float: right;"></div>
        </div>
    <!-- ! Main -->
    <main class="main users chart-page" id="skip-target" style="background-color:white;">
      <div class="container-fluid scroll">
        <b id="time">Question:</b><p style="float: right"><b>Marks: </b><b class="u-legend-indicator1 attempted">+2</b><b class="u-legend-indicator1 skipped2">-<%= negative_marks%></b></p><hr/>
        <p style="line-height: 25px;"><%= ra.getString("exam_question")%></p>
        <%
                        String query ="select selectedoption from student_savequestion where savequestion_id = '"+ra.getInt("savequestion_id")+"'";
                        ResultSet rc = db.selectQuery(query);
                        while(rc.next()== true){
                            if(rc.getString("selectedoption").equals("A"))
                            {
                    %>
                    <div id="selectedoptions">
                        <label><input type="radio" id="radio-a" onchange="sync(this)" value="A" name="selectedoption" checked=""/> <%= ra.getString("exam_ch1")%></label><br/>
                        <label><input type="radio" id="radio-b" onchange="sync(this)" value="B" name="selectedoption" /> <%= ra.getString("exam_ch2")%></label><br/>
                        <label><input type="radio" id="radio-c" onchange="sync(this)" value="C" name="selectedoption" /> <%= ra.getString("exam_ch3")%></label><br/>
                        <label><input type="radio" id="radio-d" onchange="sync(this)" value="D" name="selectedoption" /> <%= ra.getString("exam_ch4")%></label><br/>
                    </div>
                    <%
                            }
                            else if(rc.getString("selectedoption").equals("B"))
                            {
                    %>
                    <div id="selectedoptions">
                        <label><input type="radio" id="radio-a" onchange="sync(this)" value="A" name="selectedoption" /> <%= ra.getString("exam_ch1")%></label><br/>
                        <label><input type="radio" id="radio-b" onchange="sync(this)" value="B" name="selectedoption" checked=""/> <%= ra.getString("exam_ch2")%></label><br/>
                        <label><input type="radio" id="radio-c" onchange="sync(this)" value="C" name="selectedoption" /> <%= ra.getString("exam_ch3")%></label><br/>
                        <label><input type="radio" id="radio-d" onchange="sync(this)" value="D" name="selectedoption" /> <%= ra.getString("exam_ch4")%></label><br/>
                    </div>
                    <%
                            }
                            else if(rc.getString("selectedoption").equals("C"))
                            {
                    %>
                    <div id="selectedoptions">
                        <label><input type="radio" id="radio-a" onchange="sync(this)" value="A" name="selectedoption" /> <%= ra.getString("exam_ch1")%></label><br/>
                        <label><input type="radio" id="radio-b" onchange="sync(this)" value="B" name="selectedoption" /> <%= ra.getString("exam_ch2")%></label><br/>
                        <label><input type="radio" id="radio-c" onchange="sync(this)" value="C" name="selectedoption" checked=""/> <%= ra.getString("exam_ch3")%></label><br/>
                        <label><input type="radio" id="radio-d" onchange="sync(this)" value="D" name="selectedoption" /> <%= ra.getString("exam_ch4")%></label><br/>
                    </div>
                    <%
                            }
                            else if(rc.getString("selectedoption").equals("D"))
                            {
                    %>
                    <div id="selectedoptions">
                        <label><input type="radio" id="radio-a" onchange="sync(this)" value="A" name="selectedoption" /> <%= ra.getString("exam_ch1")%></label><br/>
                        <label><input type="radio" id="radio-b" onchange="sync(this)" value="B" name="selectedoption" /> <%= ra.getString("exam_ch2")%></label><br/>
                        <label><input type="radio" id="radio-c" onchange="sync(this)" value="C" name="selectedoption" /> <%= ra.getString("exam_ch3")%></label><br/>
                        <label><input type="radio" id="radio-d" onchange="sync(this)" value="D" name="selectedoption" checked=""/> <%= ra.getString("exam_ch4")%></label><br/>
                    </div>
                    <%
                            }
                            else{
                    %>
                    <div id="selectedoptions">
                        <label><input type="radio" id="radio-a" onchange="sync(this)" value="A" name="selectedoption" /> <%= ra.getString("exam_ch1")%></label><br/>
                        <label><input type="radio" id="radio-b" onchange="sync(this)" value="B" name="selectedoption" /> <%= ra.getString("exam_ch2")%></label><br/>
                        <label><input type="radio" id="radio-c" onchange="sync(this)" value="C" name="selectedoption" /> <%= ra.getString("exam_ch3")%></label><br/>
                        <label><input type="radio" id="radio-d" onchange="sync(this)" value="D" name="selectedoption" /> <%= ra.getString("exam_ch4")%></label><br/>
                    </div>
                    
<%
                            }
%>
        </div>
    </main>
    <!-- ! Footer -->
    <footer class="footer"  style="background-color:white; position: fixed; bottom: 0; width: 100%;">
  <div class="container " >
                        <table>
                            <tr>
                                <td>
                                    <input id="clear-button" type="submit" class="btn btn-theme" value="Clear Response" onclick="document.getElementById('n1').value = ''"/>
                                </td>
      <%
                            int a = ra.getInt("savequestion_id");
                            String query3 = "SELECT *  FROM student_savequestion where register_id = '"+ register_id+"' and exam_id = '"+exam_id+"' ORDER BY savequestion_id ASC";
                            String query4 = "SELECT *  FROM student_savequestion where register_id = '"+ register_id+"' and exam_id = '"+exam_id+"' ORDER BY savequestion_id DESC";
                            ResultSet pr = db.selectQuery(query3);
                            ResultSet nt = db.selectQuery(query4);
                            if(pr.next()){
                                int s = pr.getInt("savequestion_id");
                                if( s == a){
                            }
                            else{
                                    String ds = "SELECT * FROM `student_savequestion` WHERE savequestion_id < '"+a+"' and register_id = '"+register_id+"' ORDER BY savequestion_id DESC LIMIT 1";
                                    ResultSet rf = db.selectQuery(ds);
                                    if(rf.next()){
                        %>
                                <td>
                                    <form action="test_exam_question.jsp" method="get">
                                        <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                                        <input type="hidden" name="savequestion_id" value="<%= rf.getInt("savequestion_id")%>"/>
                                        <input type="submit" value="Previous" class="btn btn-theme"/>
                                    </form>
                                </td>
                        <%
                                    }
                                }
                            }
                            if(nt.next()){
                                int p = nt.getInt("savequestion_id");
                                if(p == a){
                                }
                                else{
                                    String sd = "SELECT * FROM `student_savequestion` WHERE savequestion_id <= '"+p+"' and savequestion_id > '"+a+"' and register_id = '"+register_id+"' ORDER BY savequestion_id LIMIT 1";
                                    ResultSet fd = db.selectQuery(sd);
                                    if(fd.next()){
                        %>
                            <td>
                                <form action="#" method="get">
                                    <input type="hidden" name="exam_id" value="<%= exam_id%>"/>
                                    <input type="hidden" name="savequestion_id" value="<%= fd.getInt("savequestion_id")%>"/>
                                    <input type="hidden" name="question_id" value="<%= ra.getString("question_id")%>"/>
                                    <input type="hidden" name="selectedoption" id="n1"/>
                                    <input type="hidden" name="save" value="save"/>
                                    <input type="submit" onclick=" checkButton()" value="Save & Next" class="btn btn-theme"/>
                                </form>
                            </td>
                            </tr>
                        </table>
                        <%
                                    }
                                }
                            }
                        %>
   </div>
</footer>
                    <%
                            }
                            break;
                        }
                    %>
  </div>
  <button type="button"class="btn btn-theme navbar-toggle js-trigger-toggle"  onclick="openNav()">&#9776;</button>
</div>

<!-- Chart library -->
<script src="../assets/js/chart.min.js" type="text/javascript"></script>
<!-- Icons library -->
<script src="../assets/js/feather.min.js" type="text/javascript"></script>
<!-- Custom scripts -->
<script src="../assets/js/script.js" type="text/javascript"></script>
<script>
        document.getElementById('clear-button').addEventListener('click', function () {
          ["radio-a", "radio-b", "radio-c", "radio-d"].forEach(function(id) {
            document.getElementById(id).checked = false;
          });
          return false;
        })
    </script>
<script>
    function sync(el){
        var n1 = document.getElementById('n1');
        n1.value = el.value;
        var n2 = document.getElementById('n2');
        n2.value = el.value;
    }
    function openNav() {
      document.getElementById("mySidenav").style.width = "300px";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }
    
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}
window.onload = function () {
    var fiveMinutes = 60 * 5,
    display = document.querySelector('#time');
    startTimer(fiveMinutes, display);
};
//    function checkButton() {  
//            if(document.getElementById('radio-a').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("A").value(); 
//            } 
//            else if(document.getElementById('radio-b').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("B").value();   
//            } 
//            else if(document.getElementById('radio-c').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("C").value();   
//            } 
//            else if(document.getElementById('radio-d').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("D").value();   
//            } 
//            else if(document.getElementById('radio-a-1').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("A").value();   
//            } 
//            else if(document.getElementById('radio-b-1').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("B").value();   
//            } 
//            else if(document.getElementById('radio-c-1').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("C").value();   
//            } 
//            else if(document.getElementById('radio-d-1').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("D").value();   
//            }
//            else if(document.getElementById('radio-a-2').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("A").value();   
//            } 
//            else if(document.getElementById('radio-b-2').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("B").value();   
//            } 
//            else if(document.getElementById('radio-c-2').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("C").value();   
//            } 
//            else if(document.getElementById('radio-d-2').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("D").value();   
//            }
//            else if(document.getElementById('radio-a-3').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("A").value();   
//            } 
//            else if(document.getElementById('radio-b-3').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("B").value();   
//            } 
//            else if(document.getElementById('radio-c-3').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("C").value();   
//            } 
//            else if(document.getElementById('radio-d-3').checked) { 
//                document.getElementById("disp").innerHTML 
//                    = document.getElementById("D").value();   
//            }
//            else { 
//                document.getElementById("error").value(); 
//            }
//        } 
</script>
</body>

</html>
<%
    }
%>