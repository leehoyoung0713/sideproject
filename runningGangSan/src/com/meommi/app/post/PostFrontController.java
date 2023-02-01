package com.meommi.app.post;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Result;

public class PostFrontController extends HttpServlet {
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
         
         if(request.equals("/meommi/Postlist.po")) {
             new PostListController().execute(req, resp);
         }else if(request.equals("/meommi/PostlistOk.po")) {
            new PostListOkController().execute(req, resp);
         }else if (request.equals("/meommi/PostRegistration.po")) {
            new PostRegistrationController().execute(req, resp);
         }else if(request.equals("/meommi/PostRetouch.po")) {
        	 new PostRetouchController().execute(req, resp);
         }else if(request.equals("/meommi/PostDelete.po")) {
        	 new PostDeleteController().execute(req, resp);
         }else if(request.equals("/meommi/PostlistFollower.po")) {
        	 new PostListFollowerController().execute(req, resp);
         }else if(request.equals("/meommi/PostlistFollowing.po")) {
        	 new postListFollowingController().execute(req,resp);
         }
            
         /*
          * if(result != null) { if(result.isRedirect()) {
          * resp.sendRedirect(result.getPath()); }else { RequestDispatcher dispatcher =
          * req.getRequestDispatcher(result.getPath()); dispatcher.forward(req, resp); }
          * }
          */
         }
}