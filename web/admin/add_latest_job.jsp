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
<html lang="en">
    <%@ page import ="java.sql.*" %>
    <%@ page import="java.io.*" %>
    
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add Latest Job | easyNaukri4u</title>
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
     <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Latest Job Details</h5>
        
      </div>
        <form class="refreshFrm"  method="post" action="backend_page/latest_job_code.jsp">
      <div class="modal-body">
        <div class="col-md-12">
          <div class="form-group">
              <label><b>Advertisement Number</b></label>
            <input type="text" name="advertisement_no" class="form-control" required="">
          </div>

          <fieldset>
            <div class="form-group">
                <label><b>Department Name</b></label>
                <input type="text" name="department_name" class="form-control" required="">
            </div>

            <div class="form-group">
                <label><b>Post Name</b></label>
                <input type="text" name="post_name" class="form-control" required="">
            </div>
              
            <div class="form-group">
                <label><b>Description</b></label>
                <textarea class="form-control" name="description" required=""></textarea>
            </div>

            <div class="form-group">
                <label><b>Important Dates</b></label>
                <textarea class="form-control" name="important_dates" required=""></textarea>
            </div>

            <div class="form-group">
                <label><b>Application Fees</b></label>
                <textarea class="form-control" name="application_fees" required=""></textarea>
            </div>
              
            <div class="form-group">
                <label><b>Age Details</b></label>
                <textarea class="form-control" name="age_details" required=""></textarea>
            </div>
              
            <div class="form-group">
                <label><b>Total Vacancy</b></label>
                <input type="text" name="total_vacancy" class="form-control" required="">
            </div>
              
            <div class="form-group">
                <label><b>Sub Post Details (Like Post Name, Age Limit, Eligibility)</b></label>
                <textarea class="form-control" name="sub_post_details" required=""></textarea>
            </div>
            
            <div class="form-group">
                <label><b>Apply Link</b></label>
                <input type="text" name="apply_link" class="form-control" required="">
            </div>
              
            <div class="form-group">
                <label><b>Official Notification Link</b></label>
                <input type="text" name="notification_link" class="form-control" required="">
            </div>
              
            <div class="form-group">
                <label><b>Select State</b></label>
                <select name="state" class="form-control" required>
                    <option>--Select--</option>
                    <option value="Across India">Across India</option>
                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                    <option value="Assam">Assam</option>
                    <option value="Bihar">Bihar</option>
                    <option value="Chandigarh">Chandigarh</option>
                    <option value="Chhattisgarh">Chhattisgarh</option>
                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                    <option value="Daman and Diu">Daman and Diu</option>
                    <option value="Delhi">Delhi</option>
                    <option value="Goa">Goa</option>
                    <option value="Gujarat">Gujarat</option>
                    <option value="Haryana">Haryana</option>
                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                    <option value="Jharkhand">Jharkhand</option>
                    <option value="Karnataka">Karnataka</option>
                    <option value="Kerala">Kerala</option>
                    <option value="Lakshadweep">Lakshadweep</option>
                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                    <option value="Maharashtra">Maharashtra</option>
                    <option value="Manipur">Manipur</option>
                    <option value="Meghalaya">Meghalaya</option>
                    <option value="Mizoram">Mizoram</option>
                    <option value="Nagaland">Nagaland</option>
                    <option value="Odisha">Odisha</option>
                    <option value="Puducherry">Puducherry</option>
                    <option value="Punjab">Punjab</option>
                    <option value="Rajasthan">Rajasthan</option>
                    <option value="Sikkim">Sikkim</option>
                    <option value="Tamil Nadu">Tamil Nadu</option>
                    <option value="Telangana">Telangana</option>
                    <option value="Tripura">Tripura</option>
                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                    <option value="Uttarakhand">Uttarakhand</option>
                    <option value="West Bengal">West Bengal</option>
                </select>
            </div>
              
          </fieldset>
        </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Add Now</button>
      </div>
    </div>
   </form>
                    </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>

<script src="../assets/js/main_2.js" type="text/javascript"></script>
<script src="../assets/js/main_1.js" type="text/javascript"></script></body>
</html>
<%
 }
%>