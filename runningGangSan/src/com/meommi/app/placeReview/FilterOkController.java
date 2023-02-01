package com.meommi.app.placeReview;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;
import com.meommi.app.placeReview.vo.Criteria;

public class FilterOkController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  resp.setContentType("text/html;charset=UTF-8");
	   
	  String star = req.getParameter("star");
	  int photo = Integer.valueOf(req.getParameter("photo"));
      String order = req.getParameter("order");
      String placeId = req.getParameter("placeId");
	  String userNumber = String.valueOf(req.getSession().getAttribute("userNumber") == null? 0 : req.getSession().getAttribute("userNumber"));
      Criteria photoCreteria = new Criteria(star, order, photo, placeId);
      Criteria creteria = new Criteria(star, order, placeId);
      PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
      JSONArray reviews = new JSONArray();
      
      HashMap<String, Integer> helpMap = new HashMap<>();
	  helpMap.put("userNumber", Integer.valueOf(userNumber));
      
      if (photo == 0) {
          System.out.println("사진 없음");
          placeReviewDAO.noPhotoFilter(creteria).forEach(v -> {
             v.setPlaceReviewHelful(placeReviewDAO.helpCount(v.getPlaceReviewNumber()));
        	  helpMap.put("placeReviewNumber", v.getPlaceReviewNumber());
        	  v.setHelp(placeReviewDAO.isHelp(helpMap));
              v.setReviewFileSystemName(placeReviewDAO.selectFile(v.getPlaceReviewNumber()));
              JSONObject review = new JSONObject(v);
              System.out.println(review);
              reviews.put(review);
          });
      } else {
          System.out.println("사진 있음");
          placeReviewDAO.photoFilter(photoCreteria).forEach(v -> {
             v.setPlaceReviewHelful(placeReviewDAO.helpCount(v.getPlaceReviewNumber()));
        	  helpMap.put("placeReviewNumber", v.getPlaceReviewNumber());
        	  v.setHelp(placeReviewDAO.isHelp(helpMap));
              v.setReviewFileSystemName(placeReviewDAO.selectFile(v.getPlaceReviewNumber()));
              JSONObject review = new JSONObject(v);
              System.out.println(review);
              reviews.put(review);
          });
      }
      


      PrintWriter out = resp.getWriter();

      out.print(reviews);
      out.close();

      return null;
   }
}