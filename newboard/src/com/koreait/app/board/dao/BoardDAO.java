package com.koreait.app.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.board.vo.BoardDTO;
import com.koreait.app.board.vo.BoardVO;
import com.koreait.mybatis.config.MyBatisConfig;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

	public BoardDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public List<BoardDTO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("Board.selectAll", pageMap);
	}
	
	public int selectCount() {
		return sqlSession.selectOne("Board.selectCount");
	}
	
	public void insert(BoardVO boardVO) {
		sqlSession.insert("Board.insert", boardVO);
	}
	
	public BoardDTO select(int boardNumber) {
		return sqlSession.selectOne("Board.select", boardNumber);
	}
	
	public void updateReadCount(int boardNumber) {
		sqlSession.update("Board.updateReadCount", boardNumber);
	}
	
	public void delete(int boardNumber) {
		sqlSession.delete("Board.delete", boardNumber);
	}
	
	public void update(BoardVO boardVO) {
		sqlSession.update("Board.update", boardVO);
	}
	
	public int selectCurrentSequence() {
		return sqlSession.selectOne("Board.selectCurrentSequence");
	}
}






