/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Dell
 */
public class DbManager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
        public DbManager()
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
            }
            catch(ClassNotFoundException ex)
            {
                ex.printStackTrace();
            }
        }
            public Connection getCon()
            {
                try
                {
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser", "root", "");
                }
                catch(SQLException ex)
                {
                    con=null;
                }
                return con;
            }
            public boolean executeNonQuery(String query)
            {
                con=getCon();
                try
                {
                ps=con.prepareStatement(query);
                ps.executeUpdate();
                return true;
                }
                catch(SQLException ex)
                {
                    return false;
                }
            }
            public ResultSet selectQuery(String query)
            {
                con=getCon();
                try
                {
                ps=con.prepareStatement(query);
                rs=ps.executeQuery();
                return rs;
                }
                catch(SQLException ex)
                {
                    return rs;
                }
            }
            public  String getDate()
            {
                SimpleDateFormat sdf = new SimpleDateFormat("ddMMyyyy");
                Calendar cal = Calendar.getInstance();  
                cal.add(Calendar.DAY_OF_MONTH, 7);  
                String dateAfter = sdf.format(cal.getTime());
                return dateAfter;
                
            }
            public String currentDate()
            {
                Date d = new Date();
                SimpleDateFormat df = new SimpleDateFormat("ddMMyyyy");
                return df.format(d);
            }
}
