package com.demo.login_register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBAccess {

//	private String drv = "com.mysql.jdbc.Driver";
//	private static String url = "jdbc:mysql://localhost:3306/db_jsp";
//	private String usr = "root";
//	private String pwd = "root";

    private String url = "jdbc:mysql://localhost:3306/db_jsp?useUnicode=true&characterEncoding=utf8";
    private String user = "root";
    private String pwd = "root";
    private String driver = "com.mysql.jdbc.Driver";


    private Connection conn = null;

    private Statement stm = null;

    private ResultSet rs = null;

    public boolean createConn() {
        boolean b = false;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, user, pwd);
            b = true;
        } catch (SQLException e) {
        } catch (ClassNotFoundException e) {
        } catch (InstantiationException e) {
        } catch (IllegalAccessException e) {
        }
        return b;
    }

    public boolean update(String sql) {
        boolean b = false;
        try {
            stm = conn.createStatement();
            stm.execute(sql);
            b = true;
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return b;
    }

    public void query(String sql) {
        try {
            stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            System.out.println("对数据的查询已成功！");
        } catch (Exception e) {
        }
    }

    public boolean next() {
        boolean b = false;
        try {
            if (rs.next()) {
                b = true;
            }
        } catch (Exception e) {
        }
        return b;
    }

    public String getValue(String field) {
        String value = null;
        try {
            if (rs != null) {
                value = rs.getString(field);
            }
        } catch (Exception e) {
        }
        return value;
    }

    public void closeConn() {
        try {
            if (conn != null) {
                conn.close();
            }

        } catch (SQLException e) {
        }
    }

    public void closeStm() {
        try {
            if (stm != null) {
                stm.close();
            }

        } catch (SQLException e) {
        }
    }

    public void closeRs() {
        try {
            if (rs != null) {
                rs.close();
            }

        } catch (SQLException e) {
        }
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public String getDrv() {
        return driver;
    }

    public void setDrv(String drv) {
        this.driver = drv;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public Statement getStm() {
        return stm;
    }

    public void setStm(Statement stm) {
        this.stm = stm;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsr() {
        return user;
    }

    public void setUsr(String usr) {
        this.user = usr;
    }
}
