package com.meommi.app.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.comments.vo.CommentsVO;
import com.meommi.app.favoritePlace.vo.FavoritePlaceVO;
import com.meommi.app.placeReview.vo.PlaceReviewDTO;
import com.meommi.app.post.vo.PostDTO;
import com.meommi.app.user.vo.UserVO;
import com.meommi.mybatis.config.MyBatisConfig;

public class UserDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public UserDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
	   
//	   아이디 중복체크
	   public boolean checkId(String inputId) {
		   return (Integer)sqlSession.selectOne("User.checkId", inputId)==1;
	   }
	   
//	   회원가입
	   public void join(UserVO userVO) {
		   sqlSession.insert("User.join", userVO);
	   }
	   
//	   로그인
	   public int login(UserVO userVO) {
		   return sqlSession.selectOne("User.login", userVO);
	   }
	   
//	   비밀번호 변경
	   public void update(UserVO userVO) {
		   sqlSession.update("User.update", userVO);
	   }
	   
//	   내 게시글 불러오기
	   public List<PostDTO> selectMyPost(Map<String, Integer> pageMap){
		   return sqlSession.selectList("User.selectMyPost", pageMap);
	   }
	   
//	   내 게시글 사진
	   public String selectPostFile(int postNumber){
		   return sqlSession.selectOne("User.selectPostFile", postNumber);
	   }
	   
//	   내 게시글 수
	   public int countMyPost(int userNumber) {
		   return sqlSession.selectOne("User.countMyPost", userNumber);
	   }

//	   내 댓글 불러오기
	   public List<CommentsVO> selectMyComment(Map<String, Integer> pageMap){
		   return sqlSession.selectList("User.selectMyComment", pageMap);
	   }
	   
//	   내 댓글 수
	   public int countMyComment(int userNumber) {
		   return sqlSession.selectOne("User.countMyComment", userNumber);
	   }
	   
//	   내 리뷰 목록
	   public List<PlaceReviewDTO> selectMyReview(Map<String, Integer> pageMap){
		   return sqlSession.selectList("User.selectMyReview", pageMap);
	   }
	   
//	   내 리뷰 수
	   public int countMyReview(int userNumber) {
		   return sqlSession.selectOne("User.countMyReview", userNumber);
	   }
	   
//	   내 리뷰 사진
	   public String selectReviewFile(int postNumber){
		   return sqlSession.selectOne("User.selectReviewFile", postNumber);
	   }
	   
//	   내 장소 불러오기
	   public List<PlaceReviewDTO> selectMyPlace(Map<String, Integer> pageMap){
		   return sqlSession.selectList("User.selectMyPlace", pageMap);
	   }
	   
//	   내 장소 수
	   public int countMyPlace(int userNumber) {
		   return sqlSession.selectOne("User.countMyPlace", userNumber);
	   }
	   
//	   로그인 회원 정보
	   public UserVO loginUser(String userId) {
		   return sqlSession.selectOne("User.loginUser", userId);
	   }
	   
//	   로그인 회원사진 정보
	   public String userProfile(String userId) {
		   return sqlSession.selectOne("User.userProfile", userId);
	   }

//	   내 정보 수정
	   public void updateMyProfile(UserVO userVO) {
		   sqlSession.update("User.updateMyProfile",  userVO);
	   }

}
