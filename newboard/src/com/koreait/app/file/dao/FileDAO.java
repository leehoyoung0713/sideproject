package com.koreait.app.file.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.file.vo.FileVO;
import com.koreait.mybatis.config.MyBatisConfig;

//데이터베이스의 data에 접근하기 위한 dao클래스 선언
public class FileDAO {
	
//	초기 설정을 하며 db와 연결후 connection객체를 반환받는다.
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	SqlSession sqlSession;

//	기본 생성자 선언하며, sqlSessionFactory의 openSession메서드를 통해 auto commit옵션을 true로 설정
	public FileDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
//	파일 저장을 위한 메서드
	public void insert(FileVO fileVO) {
		sqlSession.insert("File.insert", fileVO);
	}
	
//	게시글에 해당하는 파일 개수를 조회하기 위한 메서드
	public List<FileVO> select(int boardNumber){
		return sqlSession.selectList("File.select", boardNumber);
	}
	
//	게시글의 파일을 제거하기 위한 메서드
	public void delete(int boardNumber) {
		sqlSession.delete("File.delete", boardNumber);
	}
}







