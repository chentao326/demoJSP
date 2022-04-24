package com.demo.login_register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author : chentao
 * @time : 10:41 2022/3/25
 */
public class loginDao {
    static Connection conn = null;
    static PreparedStatement prst = null;
    static ResultSet rs = null;

    private User user = new User();


    //用户登录
    public static int login(User user) throws Exception {
        int result = -1;

        //获取数据库连接
        conn = JDBCUtill.getCon();
        //SQL语句
        String sql = "select * from jsp_user where username=? and password=?";

        prst = conn.prepareStatement(sql);
        prst.setString(1, user.getUsername());
        prst.setString(2, user.getPassword());

        //执行sql语句
        rs = prst.executeQuery();

        if (rs.next())
            result = rs.getInt(1);
        if (result > 0)
            return 1;
        else
            return 0;
    }

    //用户注册
    public static boolean register(User user) throws Exception{
        conn = JDBCUtill.getCon();

        //编写sql语句
        String sql = "insert into `jsp_user` values(?,?)";
//        String sql = "inster into jsp_user values(id,username,password)";

        prst = conn.prepareStatement(sql); // 对sql语句进行预处理

        prst.setString(1, user.getUsername());
        prst.setString(2, user.getPassword());
        boolean result = prst.executeUpdate() > 0; // 执行sql语句
        return result;

    }

}
