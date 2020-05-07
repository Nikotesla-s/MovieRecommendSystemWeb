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

    Connection connection = DBUtil.getJDBCConnection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    Movies movie=new Movies();
    List<Movies> moviesList=null;
    //根据id查询电影
    @Override
    public Movies findById(int id) {
        String sql="select * from movies where id = ?";
        try {
            ps=connection.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while (rs.next()){
                String name=rs.getString(2);
                String type=rs.getString(3);
                movie.setName(name);
                movie.setType(type);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.colse(rs,ps,connection);
        }
        return movie;
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

    @Override
    public List<Movies> findByName(String name) {
        String sql="select * from movies where name like ?";
        try {
            ps=connection.prepareStatement(sql);
            ps.setString(1,name);
            rs=ps.executeQuery();
            while (rs.next()){
                String MName=rs.getString(2);
                String type=rs.getString(3);
                movie.setName(MName);
                movie.setType(type);
                moviesList.add(movie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.colse(rs,ps,connection);
        }
        return moviesList;

    }

    @Override
    public List<Movies> findByType(String type) {
        String sql="select * from movies where type like ?";
        try {
            ps=connection.prepareStatement(sql);
            ps.setString(1,type);
            rs=ps.executeQuery();
            while (rs.next()){
                String MName=rs.getString(2);
                String MType=rs.getString(3);
                movie.setName(MName);
                movie.setType(MType);
                moviesList.add(movie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.colse(rs,ps,connection);
        }
        return moviesList;
    }

    @Override
    public List<Movies> findByTime(String time) {
        String sql="select * from movies where name like ?";
        try {
            ps=connection.prepareStatement(sql);
            ps.setString(1,time);
            rs=ps.executeQuery();
            while (rs.next()){
                String MName=rs.getString(2);
                String type=rs.getString(3);
                movie.setName(MName);
                movie.setType(type);
                moviesList.add(movie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.colse(rs,ps,connection);
        }
        return moviesList;
    }
}
