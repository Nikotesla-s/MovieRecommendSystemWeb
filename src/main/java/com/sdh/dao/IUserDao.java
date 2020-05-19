package com.sdh.dao;

import com.sdh.domain.User;

import java.util.List;

public interface IUserDao {

    /**
     * @param username
     * @return User
     *
     */
    //通过id和password查找用户
    boolean findUserByIdAndPassword(User user);
    //通过id查找user
    User findUserById(int id);
    //通过姓名查找
    User finUserByName(String username);
    //添加喜欢的电影
    void addFavoriteMovie(int uid, int mid);
    //添加不喜欢的电影
    void addDislikeMovie(int uid,int mid);
    //删除喜欢的电影
    void deleteFavoriteMovie(int uid,int mid);
    //删除不喜欢的电影
    void deleteDislikeMovie(int uid,int mid);
    //查询所有喜欢的电影
    List<Integer> findAllFavoriteMovies(int uid);
    //查询所有不喜欢的电影
    List<Integer> findAllDislikeMovies(int uid);
}
