<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="newpackage.DbManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<%
 if( session.getAttribute("emailid")==null)
 {
     response.sendRedirect("../login.jsp");
 }
 else
 {
%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Questions | easyNaukri4u</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../assets/css/main.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <%@include file="header.jsp" %>
        <div class="app-main">
            <%@include file="sidebar.jsp" %>
            <%
                DbManager db = new DbManager();
                int exam_id = Integer.parseInt(request.getParameter("exam_id"));
                int test_series_id = Integer.parseInt(request.getParameter("test_series_id"));
                String sql ="SELECT * FROM exam where exam_id='"+exam_id+"'";
                ResultSet rs = db.selectQuery(sql);
                while(rs.next())
                {
            %>
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div><b><%= rs.getString("exam_title")%></b>
                                        <div class="page-title-subheading">
                                            Test Series
                                        </div>
                                    </div>
                                </div></div>
                        </div>
</table>

<div class="app-main__outer" style="margin-left: -290px;">
        <div class="app-main__inner">       

            <div class="col-md-16">
            <div id="refreshData" >
                                    <%
                                            String query = "select * from exam_question_tbl where exam_id = '"+exam_id+"'  and test_series = '"+test_series_id+"'";
                                            ResultSet ra = db.selectQuery(query);
                                            ResultSet rb = db.selectQuery(query);
                                            int i = 1, a=0;
                                            while(rb.next()){
                                                a++;
                                            }
                                        %>
                                    <div class="row">
                                        <div class="col-md-12">
                                         <div class="main-card mb-3 card">
                        <div class="card-header">
                            <i class="header-icon lnr-license icon-gradient bg-plum-plate"> </i>Exam Question's 
                            <span class="badge badge-pill badge-primary ml-2"><%= a%></span>
                            <div class="btn-actions-pane-right">
                                <%
                                    if( a < (rs.getInt("question_limit"))){
                                %>
                                <table>
                                    <tr>
                                        <td><button onclick="printFunction()" class="btn btn-success">Print to PDF</button></td>
                                        <td>
                                            <form action="add_questions.jsp" method="post">
                                                <input type="hidden" name="examid" value="<%=exam_id%>" />
                                                <input type="hidden" name="test_series_id" value="<%= test_series_id%>"/>
                                                <input type="submit" value="Add Question" class="btn btn-primary"/>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                                <%
                                    }
                                    else{
                                %>
                                <button onclick="printFunction()" class="btn btn-success">Print to PDF</button>
                                <button onclick="showAlert()" class="btn btn-secondary">Add Question</button>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                          <div class="card-body">
                               <div class="scrollbar-container ps">
                                   <%
                                        if( a >=1 ){
                                        while( ra.next()){
                                            Blob image = null;
                                            byte[ ] imgData = null;
                                            String imgDataBase64 = null ;
                                   %>
                                        <div class="row">
                                            <div class="col-md-10">
                                                <!-- Question Display Start Here-->
                                                <b><%= i%>. </b>
                                                <%
                                                    if(ra.getString("exam_question").equals("")){
                                                        
                                                    }
                                                    else{
                                                %>
                                                    <%=ra.getString("exam_question")%><br/>
                                                <%    
                                                    }
                                                    if(ra.getString("image1").equals("")){
                                                        
                                                    }
                                                    else{
                                                        image = ra.getBlob("image1");
                                                        imgData = image.getBytes(1,(int)image.length());
                                                        imgDataBase64=new String(Base64.getEncoder().encode(imgData));
                                                %>
                                                    <img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="images Here" width="auto" height="150px"/><br/><br/>
                                                <%
                                                    }
                                                %>
                                                <!-- Question Display End Here-->
                                                
                                                <!-- Option 1 Display Start Here-->
                                                <b>A). </b>
                                                <%
                                                    if(ra.getString("exam_ch1").equals("")){
                                                        
                                                    }
                                                    else{
                                                %>
                                                    <%=ra.getString("exam_ch1")%><br/>
                                                <%    
                                                    }
                                                    if(ra.getString("image_option1").equals("")){
                                                        
                                                    }
                                                    else{
                                                        image = ra.getBlob("image_option1");
                                                        imgData = image.getBytes(1,(int)image.length());
                                                        imgDataBase64=new String(Base64.getEncoder().encode(imgData));
                                                %>
                                                    <img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="images Here" width="auto" height="150px"/><br/><br/>
                                                <%
                                                    }
                                                %>
                                                <!-- Option 1 Display End Here-->
                                                
                                                <!-- Option 2 Display Start Here-->
                                                <b>B). </b>
                                                <%
                                                    if(ra.getString("exam_ch2").equals("")){
                                                        
                                                    }
                                                    else{
                                                %>
                                                    <%=ra.getString("exam_ch2")%><br/>
                                                <%    
                                                    }
                                                    if(ra.getString("image_option2").equals("")){
                                                        
                                                    }
                                                    else{
                                                        image = ra.getBlob("image_option2");
                                                        imgData = image.getBytes(1,(int)image.length());
                                                        imgDataBase64=new String(Base64.getEncoder().encode(imgData));
                                                %>
                                                    <img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="images Here" width="auto" height="150px"/><br/><br/>
                                                <%
                                                    }
                                                %>
                                                <!-- Option 2 Display End Here-->
                                                
                                                <!-- Option 3 Display Start Here-->
                                                <b>C). </b>
                                                <%
                                                    if(ra.getString("exam_ch3").equals("")){
                                                        
                                                    }
                                                    else{
                                                %>
                                                    <%=ra.getString("exam_ch3")%><br/>
                                                <%    
                                                    }
                                                    if(ra.getString("image_option3").equals("")){
                                                        
                                                    }
                                                    else{
                                                        image = ra.getBlob("image_option3");
                                                        imgData = image.getBytes(1,(int)image.length());
                                                        imgDataBase64=new String(Base64.getEncoder().encode(imgData));
                                                %>
                                                    <img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="images Here" width="auto" height="150px"/><br/><br/>
                                                <%
                                                    }
                                                %>
                                                <!-- Option 3 Display End Here-->
                                                
                                                <!-- Option 4 Display Start Here-->
                                                <b>D). </b>
                                                <%
                                                    if(ra.getString("exam_ch4").equals("")){
                                                        
                                                    }
                                                    else{
                                                %>
                                                    <%=ra.getString("exam_ch4")%><br/>
                                                <%    
                                                    }
                                                    if(ra.getString("image_option4").equals("")){
                                                        
                                                    }
                                                    else{
                                                        image = ra.getBlob("image_option4");
                                                        imgData = image.getBytes(1,(int)image.length());
                                                        imgDataBase64=new String(Base64.getEncoder().encode(imgData));
                                                %>
                                                    <img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="images Here" width="auto" height="150px"/><br/><br/>
                                                <%
                                                    }
                                                %>
                                                <!-- Option 4 Display End Here-->
                                                <b style="color: #2d9d0a;">Correct Answer. </b><b><%= ra.getString("exam_answer")%></b><hr/>
                                            </div>
                                            <div class="col-md-2" style="margin-top: 30px;">
                                                <center>
                                                    <form action="update_question.jsp" method="post">
                                                        <input type="hidden" name="exam_id" value="<%= ra.getString("exam_id")%>"/>
                                                        <input type="hidden" name="question_id" value="<%= ra.getString("question_id")%>"/>
                                                        <button class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></button>
                                                    </form><br/>
                                                    <form action="delete.jsp" method="post">
                                                        <input type="hidden" name="page" value="question"/>
                                                        <input type="hidden" name="exam_id" value="<%= ra.getString("exam_id")%>"/>
                                                        <input type="hidden" name="question_id" value="<%= ra.getString("question_id")%>"/>
<!--                                                        <input type="submit" class="btn btn-danger btn-sm" value="Delete"/>-->
                                                        <button onclick="return confirm('Are you sure want to Delete this question ?');" value="Delete" class="btn btn-danger btn-sm" ><i class="fa fa-trash"></i></button>
                                                    </form>
                                                </center>
                                            </div>
                                        </div>
<!--                                    <h4 class="text-primary">No Question's </h4>
                                    <div class="ps_rail-x" style="left: 0px; bottom: 0px;"><div class="psthumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="psrail-y" style="top: 0px; right: 0px;"><div class="ps_thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div-->
                                        <%
                                            i++;
                                            }
                                        }
                                        else{
                                        %>
                                        <h4 class="text-primary">No Question Found...</h4>
                                        <%
                                                }
                                            }
                                        %>
                               </div>
                      </div>
                  </div>
              </div>  
                                    </div>
        </div>

            </div>
               
</div>
    
                    </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>
<script>
    function printFunction() {
        var divContents = document.getElementById("dive").innerHTML;
        var prnt = window.open('', '', 'height=500, width=500');
        prnt .document.write(divContents);
        prnt .document.close();
        prnt .print();
    }
    
    function showAlert(){
        alert("Question Add limit has been reached. If you want add new questions then delete previous questions.");
    }
</script>
<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></body>
</html>
<%
 }
%>