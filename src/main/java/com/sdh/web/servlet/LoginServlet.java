package com.sdh.web.servlet;

import com.sdh.dao.impl.IUserDaoImpl;
import com.sdh.domain.Movies;
import com.sdh.domain.User;
import com.sdh.service.IMovieDaoService;
import com.sdh.service.impl.MovieDaoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author win10
 * 登录页面验证
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("UTF-8");
        System.out.println("loginservlet");
        //获取登录信息
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        //封装用户信息
        //IUserDaoImpl iUserDao=new IUserDaoImpl();
        //user=iUserDao.finUserByName(username);
        //调用服务返回推荐的电影信息
        MovieDaoServiceImpl movieDaoService=new MovieDaoServiceImpl();
        List<Movies> movieList = movieDaoService.recommendedMovies(user);
        //转发至主页
        request.setAttribute("movieList",movieList);
        request.setAttribute("user",user);
        request.getRequestDispatcher("/index.html").forward(request,response);


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
