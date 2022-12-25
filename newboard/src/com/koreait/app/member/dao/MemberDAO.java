package com.koreait.app.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.member.vo.MemberVO;
import com.koreait.mybatis.config.MyBatisConfig;

public class MemberDAO {
   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
   SqlSession sqlSession;
   
   public MemberDAO() {
      sqlSession = sqlSessionFactory.openSession(true);
   }
   
   public boolean checkId(String memberId) {
	   return (Integer)sqlSession.selectOne("Member.checkId", memberId) == 1;
   }
   
   public void join(MemberVO memberVO) {
	   sqlSession.insert("Member.join", memberVO);
   }
   
   public int login(MemberVO memberVO) {
	   return sqlSession.selectOne("Member.login", memberVO);
   }
}


















