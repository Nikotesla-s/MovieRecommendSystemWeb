package com.sdh.service.impl;

import com.sdh.dao.impl.IMovieDaoImpl;
import com.sdh.domain.Movies;
import com.sdh.domain.User;
import com.sdh.service.IMovieDaoService;
import com.sdh.util.Recommend;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MovieDaoServiceImpl implements IMovieDaoService {

    @Override
    public List<Movies> recommendedMovies(User user) {
        Integer uid=user.getUid();
        Integer size=20;
        List<RecommendedItem> recommendedItemList=null;
        List<Movies> movieList=new ArrayList<>();
        //创建recommend对象
        Recommend recommend=new Recommend();

        IMovieDaoImpl iMovieDao=new IMovieDaoImpl();
        try {
            recommendedItemList=recommend.getRecommendResults(uid,size);
            movieList = iMovieDao.findByIdList(recommendedItemList);
        } catch (TasteException | IOException e) {
            e.printStackTrace();
        }
        return movieList;
    }
}
