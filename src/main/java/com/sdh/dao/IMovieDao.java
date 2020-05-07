package com.sdh.dao;

import com.sdh.domain.Movies;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;

import java.util.List;

/**
 * @author 10
 */
public interface IMovieDao {
    /**
     * @param id
     * @return Movies
     *
     */
    //根据id查找电影
    Movies findById(int id);
    //根据推荐结果list查找电影具体信息
    List<Movies> findByIdList(List<RecommendedItem> recommendedItemList);
    //根据电影name查找电影
    List<Movies> findByName(String name);
    //根据电影类型查找电影
    List<Movies> findByType(String type);
    //根据电影时间查找电影
    List<Movies> findByTime(String time);
}
