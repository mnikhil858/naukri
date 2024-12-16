<%@page import="newpackage.DbManager"%>
<%
    int examid = Integer.parseInt(request.getParameter("examid"));
    String examtitle = request.getParameter("examtitle");
    int totalmarks = Integer.parseInt(request.getParameter("totalmarks"));
    String timelimit = request.getParameter("timelimit");
    int examQuestDipLimit =  Integer.parseInt(request.getParameter("examQuestDipLimit"));
    float marks_perquestion =  Float.parseFloat(request.getParameter("marks_perquestion"));
    int free_test_series = Integer.parseInt(request.getParameter("free_test_series"));
    String negative_marking = request.getParameter("negative_marking");
    String available = request.getParameter("available");
    float cost =  Float.parseFloat(request.getParameter("cost"));
    DbManager db = new DbManager();
    String query = "update exam set  exam_title='"+examtitle+"', total_marks='"+totalmarks+"', marks_perquestion='"+marks_perquestion+"', negative_marking='"+negative_marking+"', time_limt='"+timelimit+"', question_limit='"+examQuestDipLimit+"', free_test_series = '"+free_test_series+"', available = '"+available+"', cost = '"+cost+"' where exam_id ='"+examid+"'";
    if(db.executeNonQuery(query)){
        out.print("<script>alert('Exam Updated'); window.location.href='../manage_exam.jsp';</script>");
    }
    else{
        out.print("<script>alert('Exam Not Updated'); window.location.href='../manage_exam.jsp';</script>");
    }
%>