package com.meommi.app.follow.dao;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.follow.vo.FollowVO;
import com.meommi.app.user.vo.UserDTO;
import com.meommi.mybatis.config.MyBatisConfig;

public class FollowDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public FollowDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
//	   팔로잉 목록
	   public List<UserDTO> followingList(int userNumber){
		   return sqlSession.selectList("Follow.followingList", userNumber);
	   }
	   
//	   팔로워 목록
	   public List<UserDTO> followerList(int userNumber){
		   return sqlSession.selectList("Follow.followerList", userNumber);
	   }
	   
//	   팔로잉 목록
	   public int followingCount(int userNumber){
		   return sqlSession.selectOne("Follow.followingCount", userNumber);
	   }
	   
//	   팔로워 목록
	   public int followerCount(int userNumber){
		   return sqlSession.selectOne("Follow.followerCount", userNumber);
	   }
	   
//	   맞팔여부
	   public boolean FollowForFollower(Map<String, Integer> userMap) {
		   return (Integer)sqlSession.selectOne("Follow.f4f", userMap) == 1;
	   }
	   
//	   언팔로우
	   public void deleteFollower(Map<String, Integer> userMap) {
		   sqlSession.delete("Follow.deleteFollower", userMap);
	   }
	   
//	   팔로잉
	   public void following(Map<String, Integer> userMap) {
		   sqlSession.insert("Follow.following", userMap);
	   }
	   
//	   랜덤 유저 목록
	   public List<UserDTO> randomUser() {
		   return sqlSession.selectList("Follow.randomUser");
	   }
	   public List<FollowVO> selectFollower(int followingNumber){
		   return sqlSession.selectList("Follow.selectFollower",followingNumber);
	   }
	   public List<FollowVO> selectFollowing(int followerNumber){
		   return sqlSession.selectList("Follow.selectFollowing",followerNumber);
	   }
}
