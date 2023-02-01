package com.meommi.app.comments;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.comments.dao.CommentsDAO;
import com.meommi.app.comments.vo.CommentsDTO;

public class CommentRegistrationController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CommentsDAO commentsDAO=new CommentsDAO();
		CommentsDTO commentsDTO=new CommentsDTO();
		String content=req.getParameter("content");
		int memberNumber=(int) req.getSession().getAttribute("userNumber");
		System.out.println(req.getParameter("postNumber"));
		int postNumber= Integer.valueOf(req.getParameter("postNumber"));
		commentsDTO.setCommentsContent(content);
		commentsDTO.setPostNumber(postNumber);
		commentsDTO.setUserNumber(memberNumber);
		commentsDAO.insertComment(commentsDTO);
		return null;
	}

}
