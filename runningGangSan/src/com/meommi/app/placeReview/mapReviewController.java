package com.meommi.app.placeReview;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.userFile.dao.UserFileDAO;

public class mapReviewController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
	
		
		PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        UserDAO userDAO = new UserDAO();
        UserFileDAO userFileDAO = new UserFileDAO();

		String placeId =  req.getParameter("placeId");
		String placeAddress = req.getParameter("placeAddress");
		String placeName = req.getParameter("placeName");
		String userNumber = String.valueOf(req.getSession().getAttribute("userNumber") == null? 0 : req.getSession().getAttribute("userNumber"));
		Boolean helpCheck = false;
		
		HashMap<String, Integer> helpMap = new HashMap<>();

		helpMap.put("userNumber", Integer.valueOf(userNumber));
		
		JSONArray reviews = new JSONArray();
		placeReviewDAO.selectAll(placeId).forEach(
				placeReviewDTO -> {
					helpMap.put("placeReviewNumber", placeReviewDTO.getPlaceReviewNumber());

					placeReviewDTO.setHelp(placeReviewDAO.isHelp(helpMap));
					placeReviewDTO.setPlaceReviewHelful(placeReviewDAO.helpCount(placeReviewDTO.getPlaceReviewNumber()));

					placeReviewDTO.setUserFileSystemName(userFileDAO.selectFile(placeReviewDTO.getUserNumber()));
					placeReviewDTO.setReviewFileSystemName(placeReviewDAO.selectFile(placeReviewDTO.getPlaceReviewNumber()));

					JSONObject review = new JSONObject(placeReviewDTO);

					reviews.put(review);
				}				
		);
		
		
		out.print(reviews.toString());
		out.close();
		
		return null;
	}
}
