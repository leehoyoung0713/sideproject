package com.meommi.app.favoritePlace.dao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.mybatis.config.MyBatisConfig;
public class FavoritePlaceDAO{
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public FavoritePlaceDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
}