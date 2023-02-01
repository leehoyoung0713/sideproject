package com.meommi.app.placeReview;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.meommi.app.Result;

public class PlaceReviewFrontController extends HttpServlet {
	  @Override
	   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      doProcess(req, resp);
	   }
	   
	   @Override
	   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      doProcess(req, resp);
	   }
	   
	   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		     String requestURI = req.getRequestURI();
		      String contextPath = req.getContextPath();
		      String request = requestURI.substring(contextPath.length());
		      Result result = null;
		   
		   if(request.equals("/map/search.pl")) {	/*지도 검색 기능 컨트롤러*/
			   new MapSearchController().execute(req, resp);
			   
			} else if(request.equals("/map/mapOriginal.pl")) { /* 맵 메인 주소로 전달 */
				result = new Result();
				result.setPath("/app/service/map.jsp");
			} else if(request.equals("/map/lookup.pl")) {	/*장소 조회 기능 컨트롤러*/
				new MapLookupController().execute(req, resp);
			}else if(request.equals("/map/filter.pl")) {	/*장소 필터링 기능 컨트롤러*/
				new MapFilterController().execute(req, resp);
			}else if(request.equals("/map/myLocation.pl")) {	/*사용자 위치 지도 조회 컨트롤러*/
				new MyLocationController().execute(req, resp);
			} else if(request.equals("/map/mapReview.pl")) {
				new mapReviewController().execute(req,resp);
			} else if(request.equals("/map/mapReviewOk.pl")) {/*리뷰 등록 컨트롤러*/
                new PlaceReviewOkController().execute(req,resp);
            } else if(request.equals("/map/mapReviewDelete.pl")) {/*리뷰 삭제 컨트롤러*/
                new PlaceDeleteController().execute(req,resp);
            } else if(request.equals("/map/mapReviewModify.pl")) {/*리뷰 수정 컨트롤러*/
                new PlaceModifyController().execute(req,resp);
            } else if(request.equals("/map/mapHelpfulUp.pl")) {/*도움이 돼요 증가 컨트롤러*/
                new MapHelpfulUpController().execute(req,resp);
            }else if(request.equals("/map/mapHelpfulDown.pl")) {/*도움이 돼요 감소 컨트롤러*/
                new MapHelpfulDownController().execute(req,resp);
            }else if(request.equals("/map/mapPage.pl")) {/*리뷰 페이징처리 컨트롤러*/
                result = new MapPageController().execute(req,resp);
            } else if(request.equals("/map/filterOk.pl")) {/*리뷰 필터 컨트롤러*/
            	new FilterOkController().execute(req,resp);
            }else if(request.equals("/map/helpCheck.pl")) {/*도움이 돼요 클릭 여부*/
			   new HelpCheckOkController().execute(req,resp);
		   }
		   
	      if(result != null) {
	         if(result.isRedirect()) {
	            resp.sendRedirect(result.getPath());
	         }else {
	            RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
	            dispatcher.forward(req, resp);
	         }
	      }
	   }
}
