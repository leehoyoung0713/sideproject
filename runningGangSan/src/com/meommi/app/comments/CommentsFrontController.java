package com.meommi.app.comments;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Result;

public class CommentsFrontController extends HttpServlet {

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
			   
			   if(request.equals("/meommi/Commentlist.co")) {
			       new CommentListController().execute(req,resp);
			   }else if(request.equals("/meommi/CommentlistOk.co")) {
			      new CommentListOkController().execute(req, resp);
			   }else if(request.equals("/meommi/CommentRegistration.co")) {
				   new CommentRegistrationController().execute(req, resp);
			   }else if(request.equals("/meommi/CommentRetouch.co")) {
				   new CommentRetouchController().execute(req, resp);
			   }else if(request.equals("/meommi/CommentDelete.co")) {
				   new CommentDeleteController().execute(req, resp);
			   }else if(request.equals("/meommi/CommentlistFollower.co")) {
				   new CommentListFollowerController().execute(req,resp);
			   }else if(request.equals("/meommi/CommentlistFollowing.co")) {
				   new CommentListFollowingController().execute(req,resp);
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
		   
		   
