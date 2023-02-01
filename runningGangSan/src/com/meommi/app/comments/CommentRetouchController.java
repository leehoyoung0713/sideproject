package com.meommi.app.comments;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.comments.dao.CommentsDAO;
import com.meommi.app.comments.vo.CommentsDTO;

public class CommentRetouchController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CommentsDAO commentsDAO=new CommentsDAO();
		CommentsDTO commentsDTO=new CommentsDTO();
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date now=new Date();
		String commentUpdateTime=simpleDateFormat.format(now);
		String content=req.getParameter("commentContent");
		int commentNumber=Integer.valueOf(req.getParameter("commentNumber"));
		
		commentsDTO.setCommentsContent(content);
		commentsDTO.setCommentsNumber(commentNumber);
		commentsDTO.setCommentsDatetime(commentUpdateTime);
		commentsDAO.updateComment(commentsDTO);
		return null;
	}

}
