package com.sdh.web.servlet;

import com.sdh.domain.Movies;
import com.sdh.domain.User;
import com.sdh.service.impl.MovieDaoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/RecommendServlet")
public class RecommendServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user=new User();
        //封装用户信息
        //IUserDaoImpl iUserDao=new IUserDaoImpl();
        //user=iUserDao.finUserByName(username);
        //调用服务返回推荐的电影信息
        MovieDaoServiceImpl movieDaoService=new MovieDaoServiceImpl();
        List<Movies> movieList = movieDaoService.recommendedMovies(user);
        //转发至主页
        request.setAttribute("movieList",movieList);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
