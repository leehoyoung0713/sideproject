package com.meommi.app.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.post.dao.PostDAO;
import com.meommi.app.postFile.dao.PostFileDAO;

public class MainPostListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("utf-8");
		PostDAO postDAO=new PostDAO();
		PrintWriter out=resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		postDAO.selectPostDefault().forEach(posts->{
			JSONObject jsonObject =new JSONObject(posts);  jsonArray.put(jsonObject);
		});
		System.out.println(jsonArray.toString());
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
