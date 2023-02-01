package com.meommi.app.comments.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.comments.vo.CommentsDTO;
import com.meommi.mybatis.config.MyBatisConfig;

public class CommentsDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public CommentsDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	   }
	   public List<CommentsDTO> selectCommentDefault(){
		   return sqlSession.selectList("Comments.selectCommentDefault");
	   }

		 public List<CommentsDTO> selectCommentRow(HashMap<String,Integer>Outputindex){ 
			 return sqlSession.selectList("Comments.selectCommentRow",Outputindex); 
		}
		public void insertComment(CommentsDTO commentsDTO) {
			sqlSession.insert("Comments.insertComment",commentsDTO);
		}
	   public void updateComment(CommentsDTO commentsDTO) {
		   sqlSession.update("Comments.updateComment",commentsDTO);
	   }
	   public void deleteComment(int commentsNumber) {
		   sqlSession.delete("Comments.deleteComment",commentsNumber);
	   }
	   public List<CommentsDTO> selectFollowerCommentDefault(int userNumber){
		   return sqlSession.selectList("Comments.selectFollowerCommentDefault",userNumber);
	   }
}
