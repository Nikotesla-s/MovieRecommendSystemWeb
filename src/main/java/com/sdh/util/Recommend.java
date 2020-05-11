package com.sdh.util;

import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.apache.mahout.cf.taste.similarity.precompute.example.GroupLensDataModel;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * @author win10
 */
public class Recommend {

    public static List<RecommendedItem> getRecommendResults(int uid, int size) throws TasteException, IOException {
        //准备电影评分数据
        File file = new File("D:\\下载\\迅雷下载\\ml-10M100K\\ratings.dat");
        DataSource dataSource=DBUtil.getMysqlDataSource();
        JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"movie_preference","userID","movieID","preference","timestamp");
        //把MySQLJDBCDataModel对象赋值给DataModel
        //DataModel model = dataModel;
        //将数据加载到内存中，GroupLensDataModel是针对开放电影评论数据的
        DataModel model = new GroupLensDataModel(file);
        //计算相似度
        UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
        //计算最近领域：固定数量的邻居
        UserNeighborhood userNeighborhood = new NearestNUserNeighborhood(1000, similarity, model);
        //构建推荐器：基于用户的协同过滤算法
        Recommender recommender = new GenericUserBasedRecommender(model, userNeighborhood, similarity);
        //给用户的用户推荐电影
        List<RecommendedItem> recommendedItemList = recommender.recommend(uid, size);

        return recommendedItemList;
    }

}
