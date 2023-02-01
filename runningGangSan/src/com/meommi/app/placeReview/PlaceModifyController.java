package com.meommi.app.placeReview;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;
import com.meommi.app.placeReview.vo.PlaceReviewVO;

public class PlaceModifyController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int reviewNumber = Integer.valueOf(req.getParameter("reviewNumber"));
		String placeReviewContents = req.getParameter("placeReviewContents");
		System.out.println(reviewNumber);
		System.out.println(placeReviewContents);
		PlaceReviewVO placeReviewVO = new PlaceReviewVO();
		PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
		
		
		placeReviewVO.setPlaceReviewNumber(reviewNumber);
		placeReviewVO.setPlaceReviewContents(placeReviewContents);
		
		placeReviewDAO.update(placeReviewVO);
		return null;
	}

}
