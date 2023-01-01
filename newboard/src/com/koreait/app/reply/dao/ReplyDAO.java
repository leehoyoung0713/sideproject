package com.koreait.app.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.reply.vo.ReplyDTO;
import com.koreait.app.reply.vo.ReplyVO;
import com.koreait.mybatis.config.MyBatisConfig;

//데이터베이스의 data에 접근하기 위한 dao클래스 선언
public class ReplyDAO {
	
//	초기 설정을 하며 db와 연결후 connection객체를 반환받는다.
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

//	기본 생성자 선언하며, sqlSessionFactory의 openSession메서드를 통해 auto commit옵션을 true로 설정
	public ReplyDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
//	게시글에 해당하는 모든 댓글을 조회하기 위한 메서드
	public List<ReplyDTO> selectAll(int boardNumber) {
		return sqlSession.selectList("Reply.selectAll", boardNumber);
	}
	
//	댓글 작성시 저장을 위한 메서드
	public void insert(ReplyVO replyVO) {
		sqlSession.insert("Reply.insert", replyVO);
	}
	
//	댓글 삭제를 위한 메서드
	public void delete(int replyNumber) {
		sqlSession.delete("Reply.delete", replyNumber);
	}
	
//	댓글 변경을 위한 메서드
	public void update(ReplyVO replyVO) {
		sqlSession.update("Reply.update", replyVO);
	}
}
















