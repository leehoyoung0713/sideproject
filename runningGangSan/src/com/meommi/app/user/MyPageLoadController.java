package com.meommi.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;

public class MyPageLoadController implements Execute{
@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	Result result = new Result();
	HttpSession session = req.getSession();
	String userId = String.valueOf(req.getSession().getAttribute("userId"));
	UserDAO userDAO = new UserDAO();
	UserVO userVO = new UserVO();
	String profileImg = userDAO.userProfile(userId);
	UserVO loginUser = userDAO.loginUser(userId);
	

	try {
		int userNumber= loginUser.getUserNumber();
		int myPost = userDAO.countMyPost(userNumber);
		int myComment = userDAO.countMyComment(userNumber);
		int myReview = userDAO.countMyReview(userNumber);
		int myPlace = userDAO.countMyPlace(userNumber);
			session.setAttribute("userNumber", userNumber);
			System.out.println("유저넘버"+ userNumber);
			System.out.println(myPlace);
			System.out.println(myComment);
			System.out.println(myReview);
			req.setAttribute("myPost", myPost);
			req.setAttribute("myPlace", myPlace);
			req.setAttribute("myReview", myReview);
			req.setAttribute("myComment", myComment);
			req.setAttribute("profileImg", profileImg);
			req.setAttribute("loginUser",  loginUser);
			
			result.setPath("/app/user/myPage.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			result = new Result();
			result.setPath("/user/login.us");
		}

	return result;
	}
}
