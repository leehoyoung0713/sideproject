package com.meommi.app.follow;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Result;

public class FollowFrontController extends HttpServlet {
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
		   
		   if(request.equals("/meommi/Follow.fo")) {
			   result = new FollowLoadController().execute(req, resp);
		      }else if(request.equals("/meommi/FollowerOk.fo")) {
		    	  new FollowerListOkController().execute(req, resp);
		      }else if(request.equals("/meommi/FollowingOk.fo")) {
		    	  new FollowingListOkController().execute(req, resp);
		      }else if(request.equals("/meommi/FollowingUserOk.fo")) {
		    	  new FollowingUserOkController().execute(req, resp);
		      }else if(request.equals("/meommi/UnfollowOk.fo")) {
		    	  new UnFollowOkController().execute(req, resp);
		      }else if(request.equals("/meommi/fff.fo")) {
		    	  result = new FollowRecommend().execute(req, resp);
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
