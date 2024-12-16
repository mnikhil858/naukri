<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<!doctype html>
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Question List | easyNaukri4u</title>
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
                String exam_id = request.getParameter("exam_id");
                DbManager db = new DbManager();
                String s1 = "select * from exam where exam_id = '"+exam_id+"'";
                String sq ="SELECT * FROM exam_question_tbl where exam_id = '"+exam_id+"'";
                ResultSet rc = db.selectQuery(sq);
                ResultSet ra = db.selectQuery(s1);
                int i =1, a =0;
                while(rc.next()){
                    a++;
                }
                if(ra.next())
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
                                    <div><h2><b>Question's List</b></h2>
                                        <div class="page-title-subheading"><%= ra.getString("exam_title")%>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <table align="center" cellpadding="5" cellspacing="5" border="1">          
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <div class="btn-actions-pane-right">
                                <%
                                    if( a < (ra.getInt("question_limit"))){
                                %>
                                    <button onclick="printFunction()" class="btn btn-success">Print to PDF</button>
                                    <form action="add_questions.jsp" method="post">
                                        <input type="hidden" name="examid" value="<%=exam_id%>">
                                        <input type="submit" value="Add Question" class="btn btn-success " >
                                    </form>
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
                                     <%
                                            }
                                                if(a >=1){
                                            %>
                                            <thead>
                                                <tr style="background-color: #e4e7fa;">
                                                    <td><b>Sr. No.</b></td>
                                                    <td><b>Question Name</b></td>
                                                    <td><b>Option A</b></td>
                                                    <td><b>Option B</b></td>
                                                    <td><b>Option C</b></td>
                                                    <td><b>Option D</b></td>
                                                    <td><b>Correct Option</b></td>
                                                    <td colspan="2"><center><b>Action</b></center></td>
                                                </tr>
                                            </thead>
                                            <%
                                            String sql ="SELECT * FROM exam_question_tbl where exam_id = '"+exam_id+"'";
                                            ResultSet rs = db.selectQuery(sql);
                                            while(rs.next())
                                            {
                                            %>
                                            <tbody>
                                                <tr>
                                                    <td><b><%= i %>.</b></td>
                                                    <td>
                                                        <%
                                                            if(rs.getString("exam_question").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                            <%=rs.getString("exam_question")%><br/>
                                                        <%    
                                                            }
                                                            if(rs.getString("image1").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                        <img src="../assets/Questions_img/<%=rs.getString("image1")%>" height="130px" width="auto"/><br/>
                                                        <%
                                                            }
                                                        %>
                                                    </td>
                                                    <td>
                                                        <%
                                                            if(rs.getString("exam_ch1").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                            <%=rs.getString("exam_ch1")%><br/>
                                                        <%    
                                                            }
                                                            if(rs.getString("image_option1").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                        <img src="../assets/Questions_img/<%=rs.getString("image_option1")%>" height="90px" width="auto"/><br/>
                                                        <%
                                                            }
                                                        %>
                                                    </td>
                                                    <td>
                                                        <%
                                                            if(rs.getString("exam_ch2").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                            <%=rs.getString("exam_ch2")%><br/>
                                                        <%    
                                                            }
                                                            if(rs.getString("image_option2").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                        <img src="../assets/Questions_img/<%=rs.getString("image_option2")%>" height="90px" width="auto"/><br/>
                                                        <%
                                                            }
                                                        %>
                                                    </td>
                                                    <td>
                                                        <%
                                                            if(rs.getString("exam_ch3").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                            <%=rs.getString("exam_ch3")%><br/>
                                                        <%    
                                                            }
                                                            if(rs.getString("image_option3").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                        <img src="../assets/Questions_img/<%=rs.getString("image_option3")%>" height="90px" width="auto"/><br/>
                                                        <%
                                                            }
                                                        %>
                                                    </td>
                                                    <td>
                                                        <%
                                                            if(rs.getString("exam_ch4").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                            <%=rs.getString("exam_ch4")%><br/>
                                                        <%    
                                                            }
                                                            if(rs.getString("image_option4").equals("")){

                                                            }
                                                            else{
                                                        %>
                                                        <img src="../assets/Questions_img/<%=rs.getString("image_option4")%>" height="90px" width="auto"/><br/>
                                                        <%
                                                            }
                                                        %>
                                                    </td>
                                                    <td><center><%=rs.getString("exam_answer") %></center></td>
                                                    <form action="update_question.jsp" method="post">
                                                        <td>
                                                            <input type="hidden" name="exam_id" value="<%=rs.getString("exam_id")%>">
                                                            <input type="hidden" name="question_id" value="<%=rs.getString("question_id")%>">
                                                            <input type="submit" class="btn btn-primary btn-sm" value="Manage"/>
                                                        </td>
                                                    </form>
                                                    <form action="delete.jsp" method="post">
                                                        <td>
                                                            <input type="hidden" name="page" value="question">
                                                            <input type="hidden" name="exam_id" value="<%=rs.getString("exam_id")%>">
                                                            <input type="hidden" name="question_id" value="<%=rs.getString("question_id")%>">
    <!--                                                        <input type="submit" class="btn btn-danger btn-sm" value="Delete"/>-->
                                                            <button onclick="return confirm('Are you sure want to Delete this question ?');" value="Delete" class="btn btn-danger btn-sm" ><i class="fa fa-trash"></i></button>
                                                        </td>
                                                    </form> 
                                                </tr>
                                            </tbody>

                                            <% 
                                                i++; 
                                                }
                                                }
                                                else
                                                {
                                            %>
                                        </table>
                                        <h4 class="text-primary">No Question found...</h4>
                                            <%
                                                }
                                            %>
                                    </div>
                                </div>
                            </div>
                        </div>
</table>
                            
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

