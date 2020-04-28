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
    Movies findById(int id);

    List<Movies> findByIdList(List<RecommendedItem> recommendedItemList);
}
