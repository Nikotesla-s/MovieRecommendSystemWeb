package com.sdh.dao.impl;

import com.sdh.dao.IMovieDao;
import com.sdh.domain.Movies;
import com.sdh.util.DBUtil;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author sdh
 */
public class IMovieDaoImpl implements IMovieDao {



    //根据id查询电影
    @Override
    public Movies findById(int id) {
        String sql="select * from movies where id = ?";
        Connection connection = DBUtil.getJDBCConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        Movies movies=new Movies();
        try {
            ps=connection.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while (rs.next()){
                String name=rs.getString(2);
                String type=rs.getString(3);
                movies.setName(name);
                movies.setType(type);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.colse(rs,ps,connection);
        }
        return movies;
    }
    //推荐结果id数组查询
    @Override
    public List<Movies> findByIdList(List<RecommendedItem> recommendedItemList)  {
        Connection connection = DBUtil.getJDBCConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        Movies movies=new Movies();
        List<Movies> movieList=new ArrayList<Movies>();
        String sql="";
        try {
            for (RecommendedItem recommendedItem:recommendedItemList
            ) {
                sql="select * from movies where id=?";
                try {
                    ps=connection.prepareStatement(sql);
                    ps.setInt(1, (int) recommendedItem.getItemID());
                    rs=ps.executeQuery();
                    while (rs.next()){
                        Integer id=rs.getInt(1);
                        String name=rs.getString(2);
                        String type=rs.getString(3);
                        movies.setMovieId(id);
                        movies.setName(name);
                        movies.setType(type);
                        movieList.add(movies);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
        }catch (Exception e){
            System.out.println(e);
        }finally {
            DBUtil.colse(rs,ps,connection);
        }


        return movieList;
    }
}
