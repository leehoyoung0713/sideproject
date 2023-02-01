package com.meommi.app.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.funeral.vo.FuneralVO;
import com.meommi.app.main.vo.MainDTO;
import com.meommi.app.main.vo.MainVO;
import com.meommi.mybatis.config.MyBatisConfig;

public class MainDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public MainDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
	   
	   
	   public List<MainDTO> selectAll(){
			return sqlSession.selectList("main.selectAll");
			
		}
	   
}
