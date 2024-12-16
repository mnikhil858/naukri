<%@page import="java.sql.ResultSet"%>
<%@page import="newpackage.DbManager"%>
<%
    String exam_id = request.getParameter("exam_id");
    int extra_test_series = Integer.parseInt(request.getParameter("extra_test_series"));
    DbManager db = new DbManager();
    ResultSet rs = db.selectQuery("select * from exam where exam_id = '"+exam_id+"'");
    int b, i;
    if(rs.next()){
        b = rs.getInt("test_series") + extra_test_series ;
        if(db.executeNonQuery("update exam set test_series = '"+ b+"' where exam_id = '"+exam_id+"'")){
            for(i = 1; i<= extra_test_series; i++){
                String s2 = "insert into test_series(exam_id) values ('"+exam_id+"')";
                if(db.executeNonQuery(s2)){
%>
                <html>
                    <head>
                        <script>
                            function redirectPage()
                                {
                                    alert("Test Series Added");
                                    var url = '<%= response.encodeURL("../test-series.jsp?exam_id="+ exam_id) %>';
                                    window.location.href = url;
                                }
                        </script>
                    </head>
                    <body onload="redirectPage()">

                    </body>
                </html>
<%
                }
                else{
%>
                <html>
                    <head>
                        <script>
                            function redirectPage()
                                {
                                    alert("Test Series Not Added");
                                    var url = '<%= response.encodeURL("../test-series.jsp?exam_id="+ exam_id) %>';
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
        }
    }
%>