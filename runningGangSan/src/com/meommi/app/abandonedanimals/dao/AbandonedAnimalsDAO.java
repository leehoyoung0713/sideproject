package com.meommi.app.abandonedanimals.dao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.mybatis.config.MyBatisConfig;
public class AbandonedAnimalsDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public AbandonedAnimalsDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
}