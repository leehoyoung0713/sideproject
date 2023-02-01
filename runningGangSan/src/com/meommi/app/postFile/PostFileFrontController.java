package com.meommi.app.postFile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Result;

public class PostFileFrontController extends HttpServlet {
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
		   
		   if(request.equals("/meommi/PostFile.pf")) {
			   new PostFileController().execute(req, resp);
		   }else if(request.equals("/meommi/PostFileOk.pf")) {
			   new PostFileOkController().execute(req,resp);
		   }else if(request.equals("/meommi/PostFilelistFollower.pf")) {
			   new PostFileListFollowerController().execute(req,resp);
		   }else if(request.equals("/meommi/PostFilelistFollowing.pf")) {
			   new PostFileListFollowingController().execute(req,resp);
		   }else if(request.equals("/meommi/postfileOriginal.pf")) {
			   result=new Result();
			   result.setPath("/app/community/community.jsp");
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
