package com.meommi.app.comments;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.comments.dao.CommentsDAO;

public class CommentListController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		CommentsDAO commentsDAO=new CommentsDAO();
		PrintWriter out=resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		commentsDAO.selectCommentDefault().forEach(comments->{
			JSONObject jsonObject =new JSONObject(comments);  jsonArray.put(jsonObject);
		});
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
