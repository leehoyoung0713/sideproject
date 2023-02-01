package com.meommi.app.postFile.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.postFile.vo.PostFileVO;
import com.meommi.mybatis.config.MyBatisConfig;

public class PostFileDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public PostFileDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
	   public List<PostFileVO> selectPostfileDefault(){
		   return sqlSession.selectList("PostFile.selectPostfileDefault");
	   }
	   public List<PostFileVO> selectPostfileRow(int startIndex){
		   return sqlSession.selectList("PostFile.selectPostfileRow",startIndex);
	   }
	   public void insert(PostFileVO postFileVO) {
	         sqlSession.insert("PostFile.insert",postFileVO);
	      }
	   public List<PostFileVO> selectFollowerPostfileDefault(int userNumber){
		   return sqlSession.selectList("PostFile.selectFollowerPostfileDefault",userNumber);
	   }
}
