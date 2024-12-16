<%@page import="newpackage.DbManager"%>
<%
    String vacancy_name = request.getParameter("vacancy_name");
    String link = request.getParameter("link");
    String query = "insert into vacancy_result (result_id, vacancy_name, link) values (NULL, '"+vacancy_name+"', '"+link+"')";
    DbManager db = new DbManager();
    if(db.executeNonQuery(query)){
        response.sendRedirect("../vacancy_result.jsp");
}
%>