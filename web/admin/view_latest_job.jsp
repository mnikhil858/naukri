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
    <title>View Job | easyNaukri4u</title>
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
            <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <%
                                        int latest_job_id = Integer.parseInt(request.getParameter("latest_job_id"));
                                        DbManager db = new DbManager();
                                        String sql ="SELECT latest_job_id, state, SUBSTRING_INDEX((SUBSTRING_INDEX(advertisement_no,';',1)),';',-1) AS advertisement_no, SUBSTRING_INDEX((SUBSTRING_INDEX(department_name,';',1)),';',-1) AS department_name, SUBSTRING_INDEX((SUBSTRING_INDEX(post_name,';',1)),';',-1) AS post_name, SUBSTRING_INDEX((SUBSTRING_INDEX(description,';',1)),';',-1) AS description, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',1)),';',-1) AS important_dates1, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',2)),';',-1) AS important_dates2, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',3)),';',-1) AS important_dates3, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',4)),';',-1) AS important_dates4, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',5)),';',-1) AS important_dates5, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',6)),';',-1) AS important_dates6, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',7)),';',-1) AS important_dates7, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',8)),';',-1) AS important_dates8, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',9)),';',-1) AS important_dates9, SUBSTRING_INDEX((SUBSTRING_INDEX(important_dates,';',10)),';',-1) AS important_dates10, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',1)),';',-1) AS application_fees1, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',2)),';',-1) AS application_fees2, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',3)),';',-1) AS application_fees3, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',4)),';',-1) AS application_fees4, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',5)),';',-1) AS application_fees5, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',6)),';',-1) AS application_fees6, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',7)),';',-1) AS application_fees7, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',8)),';',-1) AS application_fees8, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',9)),';',-1) AS application_fees9, SUBSTRING_INDEX((SUBSTRING_INDEX(application_fees,';',10)),';',-1) AS application_fees10, SUBSTRING_INDEX((SUBSTRING_INDEX(age_details,';',1)),';',-1) AS age_details1, SUBSTRING_INDEX((SUBSTRING_INDEX(age_details,';',2)),';',-1) AS age_details2, SUBSTRING_INDEX((SUBSTRING_INDEX(age_details,';',3)),';',-1) AS age_details3, SUBSTRING_INDEX((SUBSTRING_INDEX(age_details,';',4)),';',-1) AS age_details4, SUBSTRING_INDEX((SUBSTRING_INDEX(age_details,';',5)),';',-1) AS age_details5, SUBSTRING_INDEX((SUBSTRING_INDEX(total_vacancy,';',1)),';',-1) AS total_vacancy1, SUBSTRING_INDEX((SUBSTRING_INDEX(total_vacancy,';',2)),';',-1) AS total_vacancy2, SUBSTRING_INDEX((SUBSTRING_INDEX(total_vacancy,';',3)),';',-1) AS total_vacancy3, SUBSTRING_INDEX((SUBSTRING_INDEX(total_vacancy,';',4)),';',-1) AS total_vacancy4, SUBSTRING_INDEX((SUBSTRING_INDEX(total_vacancy,';',5)),';',-1) AS total_vacancy5, SUBSTRING_INDEX((SUBSTRING_INDEX(total_vacancy,';',6)),';',-1) AS total_vacancy6, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',1)),';',-1) AS sub_post_details1, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',2)),';',-1) AS post1, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',3)),';',-1) AS eligibility1, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',4)),';',-1) AS sub_post_details2, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',5)),';',-1) AS post2, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',6)),';',-1) AS eligibility2, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',7)),';',-1) AS sub_post_details3, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',8)),';',-1) AS post3, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',9)),';',-1) AS eligibility3, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',10)),';',-1) AS sub_post_details4, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',11)),';',-1) AS post4, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',12)),';',-1) AS eligibility4, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',13)),';',-1) AS sub_post_details5, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',14)),';',-1) AS post5, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',15)),';',-1) AS eligibility5, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',16)),';',-1) AS sub_post_details6, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',17)),';',-1) AS post6, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',18)),';',-1) AS eligibility6, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',19)),';',-1) AS sub_post_details7, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',20)),';',-1) AS post7, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',21)),';',-1) AS eligibility7, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',22)),';',-1) AS sub_post_details8, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',23)),';',-1) AS post8, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',24)),';',-1) AS eligibility8, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',25)),';',-1) AS sub_post_details9, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',26)),';',-1) AS post9, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',27)),';',-1) AS eligibility9, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',28)),';',-1) AS sub_post_details10, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',29)),';',-1) AS post10, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',30)),';',-1) AS eligibility10, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',31)),';',-1) AS sub_post_details11, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',32)),';',-1) AS post11, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',33)),';',-1) AS eligibility11, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',34)),';',-1) AS sub_post_details12, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',35)),';',-1) AS post12, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',36)),';',-1) AS eligibility12, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',37)),';',-1) AS sub_post_details13, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',38)),';',-1) AS post13, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',39)),';',-1) AS eligibility13, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',40)),';',-1) AS sub_post_details14, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',41)),';',-1) AS post14, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',42)),';',-1) AS eligibility14, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',43)),';',-1) AS sub_post_details15, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',44)),';',-1) AS post15, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',45)),';',-1) AS eligibility15, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',46)),';',-1) AS sub_post_details16, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',47)),';',-1) AS post16, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',48)),';',-1) AS eligibility16, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',49)),';',-1) AS sub_post_details17, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',50)),';',-1) AS post17, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',51)),';',-1) AS eligibility17, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',52)),';',-1) AS sub_post_details18, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',53)),';',-1) AS post18, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',54)),';',-1) AS eligibility18, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',55)),';',-1) AS sub_post_details19, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',56)),';',-1) AS post19, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',57)),';',-1) AS eligibility19, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',58)),';',-1) AS sub_post_details20, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',59)),';',-1) AS post20, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',60)),';',-1) AS eligibility20, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',61)),';',-1) AS sub_post_details21, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',62)),';',-1) AS post21, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',63)),';',-1) AS eligibility21, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',64)),';',-1) AS sub_post_details22, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',65)),';',-1) AS post22, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',66)),';',-1) AS eligibility22, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',67)),';',-1) AS sub_post_details23, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',68)),';',-1) AS post23, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',69)),';',-1) AS eligibility23, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',70)),';',-1) AS sub_post_details24, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',71)),';',-1) AS post24, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',72)),';',-1) AS eligibility24, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',73)),';',-1) AS sub_post_details25, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',74)),';',-1) AS post25, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',75)),';',-1) AS eligibility25, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',76)),';',-1) AS sub_post_details26, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',77)),';',-1) AS post26, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',78)),';',-1) AS eligibility26, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',79)),';',-1) AS sub_post_details27, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',80)),';',-1) AS post27, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',81)),';',-1) AS eligibility27, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',82)),';',-1) AS sub_post_details28, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',83)),';',-1) AS post28, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',84)),';',-1) AS eligibility28, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',85)),';',-1) AS sub_post_details29, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',86)),';',-1) AS post29, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',87)),';',-1) AS eligibility29, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',88)),';',-1) AS sub_post_details30, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',89)),';',-1) AS post30, SUBSTRING_INDEX((SUBSTRING_INDEX(sub_post_details,';',90)),';',-1) AS eligibility30, SUBSTRING_INDEX((SUBSTRING_INDEX(apply_link,';',1)),';',-1) AS apply_link,SUBSTRING_INDEX((SUBSTRING_INDEX(notification_link,';',1)),';',-1) AS notification_link from latest_job_details where latest_job_id = '"+latest_job_id+"'";
                                        ResultSet rs = db.selectQuery(sql);
                                        while(rs.next())
                                        {
                                    %>
                                    <div>
                                        <h2><b><%= rs.getString("post_name")%></b></h2>
                                        <div class="page-title-subheading">
                                            <a href="latest_job.jsp">Latest Job</a> / <a style="color: #223568"><%= rs.getString("post_name")%></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form action="manage_latest_job.jsp" method="post">
                            <input type="hidden" name="latest_job_id" value="<%=rs.getString("latest_job_id")%>">
                            <input type="submit" class="btn btn-primary" value="Update Now" style="float: right;"/>
                        </form>
                        <table class="table table-bordered">
                            <tr>
                                <td><b>Advertisement No: </b></td>
                                <td colspan="3"><%= rs.getString("advertisement_no")%></td>
                            </tr>
                            <tr>
                                <td><b>Department Name: </b></td>
                                <td colspan="3"><%= rs.getString("department_name")%></td>
                            </tr>
                            <tr>
                                <td><b>Post Name: </b></td>
                                <td colspan="3"><b><a style="color: #eca517;"><%= rs.getString("post_name")%></a></b>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Description: </b></td>
                                <td colspan="3"><%= rs.getString("description")%></td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                <center>
                                    <p><h5><b style="color: #07a603;">Total Post: <%= rs.getString("total_vacancy1")%></b></h5></p>
                                    <a style="color: #078aa2;"><%= rs.getString("total_vacancy2")%></a>
                                    <a style="color: #a405ae;"><%= rs.getString("total_vacancy3")%></a>
                                    <a style="color: #ab4503;"><%= rs.getString("total_vacancy4")%></a>
                                    <a style="color: #000000;"><%= rs.getString("total_vacancy5")%></a>
                                    <a style="color: #2e4979;"><%= rs.getString("total_vacancy6")%></a>
                                </center>
                                </td>
                            </tr>
                            <tr>
                                <td><b style="color: red;">Important Dates:</b></td>
                                <td>
                                    <p><%= rs.getString("important_dates1")%></p>
                                    <p><%= rs.getString("important_dates2")%></p>
                                    <p><%= rs.getString("important_dates3")%></p>
                                    <p><%= rs.getString("important_dates4")%></p>
                                    <p><%= rs.getString("important_dates5")%></p>
                                    <p><%= rs.getString("important_dates6")%></p>
                                    <p><%= rs.getString("important_dates7")%></p>
                                    <p><%= rs.getString("important_dates8")%></p>
                                    <p><%= rs.getString("important_dates9")%></p>
                                    <p><%= rs.getString("important_dates10")%></p>
                                </td>
                                <td><b style="color: red;">Application Fees:</b></td>
                                <td>
                                    <p><%= rs.getString("application_fees1")%></p>
                                    <p><%= rs.getString("application_fees2")%></p>
                                    <p><%= rs.getString("application_fees3")%></p>
                                    <p><%= rs.getString("application_fees4")%></p>
                                    <p><%= rs.getString("application_fees5")%></p>
                                    <p><%= rs.getString("application_fees6")%></p>
                                    <p><%= rs.getString("application_fees7")%></p>
                                    <p><%= rs.getString("application_fees8")%></p>
                                    <p><%= rs.getString("application_fees9")%></p>
                                    <p><%= rs.getString("application_fees10")%></p>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Age Details</b></td>
                                <td colspan="3">
                                    <p><%= rs.getString("age_details1")%></p>
                                    <p><%= rs.getString("age_details2")%></p>
                                    <p><%= rs.getString("age_details3")%></p>
                                    <p><%= rs.getString("age_details4")%></p>
                                    <p><%= rs.getString("age_details5")%></p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><center><b>Post Name</b></center></td>
                                <td><center><b>Vacancy</b></center></td>
                                <td><center><b>Eligibility</b></center></td>
                            </tr>
                            <%
                                int i;
                                for(i=1; i <=30; i++){
                                    if(rs.getString("sub_post_details"+i).equals("") || rs.getString("post"+i).equals("") || rs.getString("eligibility"+i).equals("")){
                                    }
                                    else{
                            %>
                                <tr>
                                    <td colspan="2"><h6><center><a style="color: #d26c01;"><%= rs.getString("sub_post_details"+i)%></a></center></h6></td>
                                    <td><center><h6><%= rs.getString("post"+i)%></h6></center></td>
                                    <td><h6><%= rs.getString("eligibility"+i)%></h6></td>
                                </tr>
                            <%
                                    }  
                                }
                            %>
                            <tr>
                                <td><b>Apply Link</b></td>
                                <td colspan="3"><a href="<%= rs.getString("apply_link")%>" target="_blank"><%= rs.getString("apply_link")%></a></td>
                            </tr>
                            <tr>
                                <td><b>Official Notification Link</b></td>
                                <td colspan="3"><a href="<%= rs.getString("notification_link")%>" target="_blank"><%= rs.getString("notification_link")%></a></td>
                            </tr>
                            <tr>
                                <td><b>State</b></td>
                                <td colspan="3"><%= rs.getString("state")%></td>
                            </tr>
                        </table>
                        <%
                            } 
                        %> 
                    </div>        
                </div>
            </div>
        </div>
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></body>
</html>
<%
 }
%>

