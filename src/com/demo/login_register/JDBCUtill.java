package com.demo.login_register;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author : chentao
 * @time : 10:49 2022/3/25
 */
public class JDBCUtill {
    private static String url = "jdbc:mysql://localhost:3306/db_jsp?useUnicode=true&characterEncoding=utf8";
    private static String user = "root";
    private static String password = "root";
    private static String driver = "com.mysql.jdbc.Driver";

    public static Connection getCon() throws Exception{
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url,user,password);
        return con;
    }

    public static void getClose(Connection con) throws SQLException{
        if (con!=null){
            con.close();
        }

    }
}
