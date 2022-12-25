package com.koreait.app.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.reply.vo.ReplyDTO;
import com.koreait.app.reply.vo.ReplyVO;
import com.koreait.mybatis.config.MyBatisConfig;

public class ReplyDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public ReplyDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public List<ReplyDTO> selectAll(int boardNumber) {
		return sqlSession.selectList("Reply.selectAll", boardNumber);
	}
	
	public void insert(ReplyVO replyVO) {
		sqlSession.insert("Reply.insert", replyVO);
	}
	
	public void delete(int replyNumber) {
		sqlSession.delete("Reply.delete", replyNumber);
	}
	
	public void update(ReplyVO replyVO) {
		sqlSession.update("Reply.update", replyVO);
	}
}
















