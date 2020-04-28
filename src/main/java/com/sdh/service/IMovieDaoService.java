package com.sdh.service;

import com.sdh.domain.Movies;
import com.sdh.domain.User;

import java.util.List;

/**
 * @author win10
 */
public interface IMovieDaoService {
    //用户推荐部分
    public List<Movies> recommendedMovies(User user);
}
