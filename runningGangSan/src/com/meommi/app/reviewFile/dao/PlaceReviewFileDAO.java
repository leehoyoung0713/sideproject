package com.meommi.app.reviewFile.dao;
import org.apache.ibatis.session.SqlSession;

import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.reviewFile.vo.PlaceReviewFileVO;
import com.meommi.mybatis.config.MyBatisConfig;
import com.mysql.cj.x.protobuf.MysqlxCrud.Insert;

public class PlaceReviewFileDAO {
      SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
      SqlSession sqlSession;
      
      public PlaceReviewFileDAO() {
         sqlSession = sqlSessionFactory.openSession(true);
   }
      
      public void insert(PlaceReviewFileVO placeReviewFileVO) {
         sqlSession.insert("PlaceReviewFile.insert", placeReviewFileVO);
      }
}