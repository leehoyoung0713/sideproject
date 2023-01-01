package com.koreait.app.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.board.vo.BoardDTO;
import com.koreait.app.board.vo.BoardVO;
import com.koreait.mybatis.config.MyBatisConfig;

//데이터베이스의 data에 접근하기 위한 dao클래스 선언
public class BoardDAO {
	
//	초기 설정을 하며 db와 연결후 connection객체를 반환받는다.
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

//	기본 생성자 선언하며, sqlSessionFactory의 openSession메서드를 통해 auto commit옵션을 true로 설정
	public BoardDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
//	List<BoardDTO>타입의 selectAll 메서드를 통해 페이지당 가져올 게시글 수만큼 조회하여 반환하는 메서드
	public List<BoardDTO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("Board.selectAll", pageMap);
	}
	
//	database에 있는 게시글의 전체 수를 조회하는 메서드
	public int selectCount() {
		return sqlSession.selectOne("Board.selectCount");
	}
	
//	작성한 게시글을 저장하는 메서드
	public void insert(BoardVO boardVO) {
		sqlSession.insert("Board.insert", boardVO);
	}
	
//	사용자가 작성한 게시글을 불러오는 메서드
	public BoardDTO select(int boardNumber) {
		return sqlSession.selectOne("Board.select", boardNumber);
	}
	
//	게시글 조회를 하면 조회수를 +1 추가해주는 메서드
	public void updateReadCount(int boardNumber) {
		sqlSession.update("Board.updateReadCount", boardNumber);
	}
	
//	게시글 삭제를 해주는 메서드
	public void delete(int boardNumber) {
		sqlSession.delete("Board.delete", boardNumber);
	}
	
//	게시글 수정시 변경해주는 메서드
	public void update(BoardVO boardVO) {
		sqlSession.update("Board.update", boardVO);
	}
	
//	최근에 작성한 게시글의 번호를 조회하는 메서드
	public int selectCurrentSequence() {
		return sqlSession.selectOne("Board.selectCurrentSequence");
	}
}






