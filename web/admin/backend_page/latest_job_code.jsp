<%@page import="newpackage.DbManager"%>
<%
    String advertisement_no = request.getParameter("advertisement_no");
    String department_name = request.getParameter("department_name");
    String post_name = request.getParameter("post_name");
    String description = request.getParameter("description");
    String important_dates = request.getParameter("important_dates");
    String application_fees = request.getParameter("application_fees");
    String age_details = request.getParameter("age_details");
    String total_vacancy = request.getParameter("total_vacancy");
    String sub_post_details = request.getParameter("sub_post_details");
    String apply_link = request.getParameter("apply_link");
    String notification_link = request.getParameter("notification_link");
    String state = request.getParameter("state");
    String query = "insert into latest_job_details values (NULL, '"+advertisement_no+"', '"+department_name+"', '"+post_name+"', '"+description+"', '"+important_dates+"', '"+application_fees+"', '"+age_details+"', '"+total_vacancy+"', '"+sub_post_details+"', '"+apply_link+"', '"+notification_link+"', '"+state+"')";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Details Inserted Successfully');window.location.href='../latest_job.jsp'</script>");
    }
    else{
        out.print("<script>alert('Details not Inserted');window.location.href='../add_latest_job.jsp'</script>");
    }
%>