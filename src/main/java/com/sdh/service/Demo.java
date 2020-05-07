package com.sdh.service;

import com.sdh.util.DBUtil;
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
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 * @author sdh
 */
public class Demo {
    public static void main(String[] args) {
        //准备电影评分数据
        DataSource dataSource=DBUtil.getMysqlDataSource();
        JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"movie_preference","userID","movieID","preference","timestamp");
        //使用文件类型数据，可以改成从数据库加载数据对象的形式实现持久化
        File file = new File("D:\\下载\\迅雷下载\\ml-10M100K\\ratings.dat");
        try {
            //把MySQLJDBCDataModel对象赋值给DataModel
            //DataModel model = dataModel;
            //将数据加载到内存中，GroupLensDataModel是针对开放电影评论数据的
            DataModel model = new GroupLensDataModel(file);
            //计算相似度
            UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
            //计算最近领域：固定数量的邻居
            UserNeighborhood userNeighborhood = new NearestNUserNeighborhood(100, similarity, model);
            //构建推荐器：基于用户的协同过滤算法
            Recommender recommender = new GenericUserBasedRecommender(model, userNeighborhood, similarity);
            //给用户ID为5的用户推荐10部电影
            List<RecommendedItem> recommendedItemList = recommender.recommend(5, 10);
            System.out.println(recommendedItemList);
            //处理结果
            for (RecommendedItem recommendedItem : recommendedItemList) {

                System.out.println(recommendedItem);
            }

        } catch (TasteException | IOException e) {
            e.printStackTrace();
        }
    }
}