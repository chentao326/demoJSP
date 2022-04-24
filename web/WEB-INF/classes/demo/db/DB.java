package com.demo.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author : chentao
 * @time : 14:37 2022/4/24
 */
public class DB {
    public Connection getConnection() {
        try {
//			加载注册驱动程序
            try {
                Class.forName("org.gjt.mm.mysql.Driver");
            } catch (Exception e) {
                e.printStackTrace();
            }
            String url="jdbc:mysql://127.0.0.1:3306/stu?user=root&password=&characterEncoding=utf-8";
            return DriverManager.getConnection(url);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
