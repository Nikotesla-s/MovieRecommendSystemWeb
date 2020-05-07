package com.sdh.dao.impl;

import com.sdh.dao.IUserDao;
import com.sdh.domain.User;
import com.sdh.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class IUserDaoImpl implements IUserDao {
    @Override
    public User finUserByName(String username) {
        String sql="select * from user where username = ?";
        PreparedStatement ps=null;
        ResultSet rs=null;
        Connection connection=null;
        User user=new User();
        try {
            connection= DBUtil.getJDBCConnection();
            ps=connection.prepareStatement(sql);
            ps.setString(1,username);
            rs=ps.executeQuery();
            while (rs.next()){
                Integer uid=rs.getInt(1);
                String name=rs.getString(2);
                user.setUid(uid);
                user.setUsername(name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addFavoriteMovie(int uid, int mid) {

    }

    @Override
    public void addDislikeMovie(int uid, int mid) {

    }

    @Override
    public void deleteFavoriteMovie(int uid, int mid) {

    }

    @Override
    public void deleteDislikeMovie(int uid, int mid) {

    }

    @Override
    public List<Integer> findAllFavoriteMovies(int uid) {
        return null;
    }

    @Override
    public List<Integer> findAllDislikeMovies(int uid) {
        return null;
    }
}
