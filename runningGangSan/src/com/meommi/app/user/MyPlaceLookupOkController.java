package com.meommi.app.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;
import com.meommi.app.user.dao.UserDAO;

public class MyPlaceLookupOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		//로그인이랑 합쳤을때, 세션에 들어간 유저 넘버로 바꿀것
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		int userNumber = Integer.valueOf(String.valueOf(req.getSession().getAttribute("userNumber")));
		UserDAO userDAO = new UserDAO();
		JSONArray places = new JSONArray();
		PrintWriter out = resp.getWriter();
		String temp = req.getParameter("page"); 
		JSONObject pages = new JSONObject();
		PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
		System.out.println(userNumber);
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int total = userDAO.countMyPlace(userNumber);
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 6;
		int startRow = (page - 1) * rowCount;
		int endPage = (int)Math.ceil(total / (double)rowCount);
		int startPage = endPage - (endPage - 1);
		
		try {
			pages.put("page", page);
			pages.put("total", total);
			pages.put("startPage", startPage);
			pages.put("endPage", endPage);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		pageMap.put("userNumber", userNumber);
		System.out.println(pageMap);
		
		System.out.println(userDAO.selectMyPlace(pageMap));
		
		userDAO.selectMyPlace(pageMap).forEach(v -> {
			v.setPlaceReviewHelful(placeReviewDAO.helpCount(v.getPlaceReviewNumber()));
			 v.setReviewFileSystemName(userDAO.selectReviewFile(v.getPlaceReviewNumber()));
			System.out.println(v);  
			JSONObject place = new JSONObject(v); places.put(place);
			});
		places.put(pages);
		out.print(places.toString());
		out.close();
		
		return null;
	}

}
