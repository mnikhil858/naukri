<%@page import="newpackage.DbManager"%>
<%
    String latest_job_id = request.getParameter("latest_job_id");
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
    String query = "update latest_job_details set advertisement_no = '"+advertisement_no+"', department_name= '"+department_name+"', post_name = '"+post_name+"', description= '"+description+"', important_dates= '"+important_dates+"', application_fees= '"+application_fees+"', age_details='"+age_details+"', total_vacancy= '"+total_vacancy+"', sub_post_details= '"+sub_post_details+"', apply_link= '"+apply_link+"', notification_link = '"+notification_link+"', state = '"+state+"' where latest_job_id = '"+latest_job_id+"'";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Details Updated Successfully');window.location.href='../latest_job.jsp'</script>");
    }
    else{
        out.print("<script>alert('Details Not Updated');window.location.href='../latest_job.jsp'</script>");
    }
%>