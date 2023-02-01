package com.meommi.app.placeReview.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.meommi.app.placeReview.vo.Criteria;
import com.meommi.app.placeReview.vo.PlaceReviewDTO;
import com.meommi.app.placeReview.vo.PlaceReviewVO;
import com.meommi.mybatis.config.MyBatisConfig;


public class PlaceReviewDAO {
	   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlsessionFactory();
	   SqlSession sqlSession;
	   
	   public PlaceReviewDAO() {
		   sqlSession = sqlSessionFactory.openSession(true);
	}
	   
	   public List<PlaceReviewDTO> selectAll(String placeId){
		   return sqlSession.selectList("PlaceReview.selectAll", placeId);
	   }
	   
	   public void insert(PlaceReviewDTO placeReviewDTO) {
           sqlSession.insert("PlaceReview.insertContent", placeReviewDTO);
       }
	   
	   public int selectCurrentSequence() {
		   return sqlSession.selectOne("PlaceReview.selectCurrentSequence");
	   }
	   public String selectFile(int placeReviewNumber) {
		   return sqlSession.selectOne("PlaceReview.selectFile", placeReviewNumber);
	   }
	   
	   public int delete(int placeReviewNumber) {
		   return sqlSession.delete("PlaceReview.delete", placeReviewNumber);
	   }
	   
	   public void update(PlaceReviewVO placeReviewVO) {
		   sqlSession.update("PlaceReview.update", placeReviewVO);
	   }
	   
	   public void updateHelpfulNumberUp(PlaceReviewVO placeReviewVO) {/*도움이 돼요 증가*/
           sqlSession.update("PlaceReview.updateHelpfulNumberUp", placeReviewVO);
       }
       
       public void updateHelpfulNumberDown(PlaceReviewVO placeReviewVO) {/*도움이 돼요 감소*/
           sqlSession.update("PlaceReview.updateHelpfulNumberDown", placeReviewVO);
       }
              
       public int pagingCount(String placeId) { 
    	   return sqlSession.selectOne("PlaceReview.pagingCount");
       }
       
       public List<PlaceReviewDTO> filterSelect(Criteria criteria){
           return sqlSession.selectList("PlaceReview.filterSelect", criteria);
        }
       
       public void addHelp(Map<String, Integer> addMap){
    	   sqlSession.insert("PlaceReview.addHelp", addMap);
       }
       
       public void deleteHelp(Map<String, Integer> deleteMap) {
    	   sqlSession.delete("PlaceReview.deleteHelp", deleteMap);
       }
       
       public boolean isHelp(Map<String, Integer> isHelpMap) {
    	   return (Integer)sqlSession.selectOne("PlaceReview.isHelp", isHelpMap) == 1;
       }
       
       public List<PlaceReviewDTO> noPhotoFilter(Criteria criteria){
           return sqlSession.selectList("PlaceReview.noPhotoFilter", criteria);
        }
       
       public int helpCount(int userNumber) {
    	   return (Integer)sqlSession.selectOne("PlaceReview.helpCount", userNumber);
       }
       
       public List<PlaceReviewDTO> photoFilter(Criteria criteria){
           return sqlSession.selectList("PlaceReview.photoFilter", criteria);
       }
}
