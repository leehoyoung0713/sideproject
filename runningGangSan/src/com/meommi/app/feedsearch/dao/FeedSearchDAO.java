package com.meommi.app.feedsearch.dao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.mybatis.config.MyBatisConfig;
public class FeedSearchDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public FeedSearchDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
}
