package com.meommi.app.placeReview;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;

public class MapPageController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
		Result result = new Result();
		String temp = req.getParameter("page"); 
		String placeId = req.getParameter("placeId");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int total = placeReviewDAO.pagingCount(placeId);
		
		
		return null;
	}

}
