package com.sdh.util;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import javax.sql.DataSource;
import java.sql.*;

public class DBUtil {
    public static DataSource getMysqlDataSource(){
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setServerName("localhost");
        dataSource.setUser("root");
        dataSource.setPassword("ok");
        dataSource.setDatabaseName("movie");
        return dataSource;
    }

    public static Connection getJDBCConnection() {
        String driverClassName = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost/movie";
        String username = "root";
        String password = "ok";
        Connection conn = null;
        try {
            Class.forName(driverClassName);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
    public static void colse(ResultSet rs, PreparedStatement ps, Connection conn){
        if(rs!=null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(ps!=null){
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public static void colse(PreparedStatement ps,Connection conn){

        if(ps!=null){
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
