package com.meommi.app.userFile.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.userFile.vo.UserFileVO;
import com.meommi.mybatis.config.MyBatisConfig;

public class UserFileDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public UserFileDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
	   
//	   내 사진 업로드
	   public void uploadFile(UserFileVO userFileVO) {
		   sqlSession.insert("UserFile.uploadFile", userFileVO);
	   }
	   
//	   내 사진 삭제
	   public void deleteFile(int userNumber) {
		   sqlSession.delete("UserFile.deleteFile", userNumber);
	   }
	   
//	   내 사진 불러오기
	   public String selectFile(int userNumber) {
		   return sqlSession.selectOne("UserFile.selectFile", userNumber);
	   }
}
