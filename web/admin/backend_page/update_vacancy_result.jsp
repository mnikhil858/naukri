<%@page import="newpackage.DbManager"%>
<%
    String vacancy_name = request.getParameter("vacancy_name");
    String link = request.getParameter("link");
    String result_id = request.getParameter("result_id");
    String query = "update vacancy_result set vacancy_name= '"+vacancy_name+"', link = '"+ link+"' where result_id = '"+result_id+"'";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Result Details Updated');window.location.href='../vacancy_result.jsp'</script>");
    }
    else{
        out.print("<script>alert('Result Details Not Updated');window.location.href='../vacancy_result.jsp'</script>");
    }
%>