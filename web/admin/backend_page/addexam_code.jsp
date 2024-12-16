<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<%
        String exam_name = request.getParameter("exam_name");
        int total_marks = Integer.parseInt(request.getParameter("total_marks"));
        float marks_perquestion = Float.parseFloat(request.getParameter("marks_perquestion"));
        String negative_marks = request.getParameter("negative_marks"); 
        String total_time = request.getParameter("total_time");
        int total_questions = Integer.parseInt(request.getParameter("total_questions"));
        int test_series = Integer.parseInt(request.getParameter("test_series"));
        int free_test_series = Integer.parseInt(request.getParameter("free_test_series"));
        String available = request.getParameter("available");
        float cost = Float.parseFloat(request.getParameter("cost"));
        DbManager db = new DbManager();
        String s1 = "insert into exam values(NULL,'"+exam_name+"','"+total_marks+"', '"+marks_perquestion+"', '"+negative_marks+"','"+total_time+"','"+total_questions+"', '"+test_series+"', '"+free_test_series+"', '"+available+"', '"+cost+"')";
        //out.print(s1);
        if(db.executeNonQuery(s1)){
            out.print("<script>alert('Exam Added'); window.location.href='../manage_exam.jsp'</script>");
        }
        else{
            out.print("<script>alert('Exam Not Added'); window.location.href='../add_exam.jsp'</script>");
        }
        if(test_series>0){
            String sql = "select * from exam where exam_title='"+exam_name+"'";
            ResultSet rs = db.selectQuery(sql);
            int i;
            while(rs.next()){
                int testseries = Integer.parseInt(rs.getString("test_series"));
                for(i=1; i<= testseries; i++){
                    String s2 = "insert into test_series(exam_id) values ('"+rs.getString("exam_id")+"')";
                    if(db.executeNonQuery(s2)){

                    }
                    else{

                    }
                }
            }
        }
%>