package com.koreait.app.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.member.vo.MemberVO;
import com.koreait.mybatis.config.MyBatisConfig;

//데이터베이스의 data에 접근하기 위한 dao클래스 선언
public class MemberDAO {
	
//	초기 설정을 하며 db와 연결후 connection객체를 반환받는다.
   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
   SqlSession sqlSession;
   
//	기본 생성자 선언하며, sqlSessionFactory의 openSession메서드를 통해 auto commit옵션을 true로 설정
   public MemberDAO() {
      sqlSession = sqlSessionFactory.openSession(true);
   }
   
//   아이디 중복 여부를 확인하기 위한 메서드
   public boolean checkId(String memberId) {
	   return (Integer)sqlSession.selectOne("Member.checkId", memberId) == 1;
   }
   
//   회원가입을 위한 메서드
   public void join(MemberVO memberVO) {
	   sqlSession.insert("Member.join", memberVO);
   }
   
//   로그인을 위한 메서드
   public int login(MemberVO memberVO) {
	   return sqlSession.selectOne("Member.login", memberVO);
   }
}


















