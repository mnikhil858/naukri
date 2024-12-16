<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.File"%>
<%@page import="newpackage.DbManager"%>
<%
    String register_id = request.getParameter("register_id");
    String exam_id = request.getParameter("exam_id");
    String admit_card_id = request.getParameter("admit_card_id");
    String result_id = request.getParameter("result_id");
    String code_id = request.getParameter("code_id");
    String page_name = request.getParameter("page");
    String latest_job_id = request.getParameter("latest_job_id");
    String question_id = request.getParameter("question_id");
    String test_series_id = request.getParameter("test_series_id");
    
    DbManager db = new DbManager();
    if(page_name.equals("user")){
        if(db.executeNonQuery("delete from register where register_id='"+register_id+"'"))
        {
            out.print("<script>window.location.href='user_details.jsp';</script>");
        }
    }
    else if(page_name.equals("result_delete")){
        if(db.executeNonQuery("delete from vacancy_result where result_id = '"+result_id+"'")){
            response.sendRedirect("vacancy_result.jsp");
        }
    }
    else if(page_name.equals("referral_page")){
        if(db.executeNonQuery("delete from referral_code where code_id = '"+code_id+"'")){
            response.sendRedirect("referral.jsp");
        }
    }
    else if(page_name.equals("admitcard_delete")){
        if(db.executeNonQuery("delete from admit_card where admit_card_id = '"+admit_card_id+"'")){
            response.sendRedirect("admit_card.jsp");
        }
    }
    else if(page_name.equals("exam_delete")){
        if ((db.executeNonQuery("delete from exam where exam_id='"+ exam_id+"'")) && (db.executeNonQuery("delete from exam_question_tbl where exam_id='"+ exam_id+"'")) && (db.executeNonQuery("delete from student_savequestion where exam_id='"+ exam_id+"'")) && (db.executeNonQuery("delete from test_series where exam_id='"+ exam_id+"'")))
        {
            out.print("<script>window.location.href='manage_exam.jsp';</script>");
        }
    }
    else if(page_name.equals("latest_job_page")){
        if(db.executeNonQuery("delete from latest_job_details where latest_job_id = '"+latest_job_id+"'")){
            response.sendRedirect("latest_job.jsp");
        }
    }
    
    else if(page_name.equals("test_series")){
        if(db.executeNonQuery("delete from test_series where test_series_id = '"+test_series_id+"'") && db.executeNonQuery("delete from exam_question_tbl where test_series = '"+test_series_id+"'") ){
            ResultSet rs = db.selectQuery("select * from test_series where exam_id = '"+exam_id+"'");
            int a= 0;
            while(rs.next()){
                a++;
            }
            if(db.executeNonQuery("update exam set test_series= '"+a+"' where exam_id = '"+exam_id+"'")){
                out.print("<script>alert('Test Series Deleted');</script>");
                response.sendRedirect("test-series.jsp?exam_id="+exam_id);
            }
        }
    }
    
    else if(page_name.equals("question")){
        if ((db.executeNonQuery("delete from exam_question_tbl where question_id='"+ question_id+"'")) && (db.executeNonQuery("delete from student_savequestion where question_id = '"+ question_id+"'")))
        {
            %>
            <html>
                <head>
                    <script>
                        function redirectPage()
                            {
                                alert("Question Deleted");
                                var url = '<%= response.encodeURL("display_questions.jsp?exam_id="+ exam_id) %>';
                                window.location.href = url;
                            }
                    </script>
                </head>
                <body onload="redirectPage()">
                    
                </body>
            </html>
<%
        }
    }
    else
    {
        out.print("<script>alert('Entry not Deleted');window.location.href='user_details.jsp';</script>");
    }
%>