package com.meommi.app.placeReview;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;

public class PlaceDeleteController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
		int reviewNumber = Integer.valueOf(req.getParameter("reviewNumber"));
		placeReviewDAO.delete(reviewNumber);
		return null;
	}

}
