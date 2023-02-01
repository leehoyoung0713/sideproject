package com.meommi.app.postFile;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.postFile.dao.PostFileDAO;

public class PostFileController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html; charset=utf-8");
		PostFileDAO postFileDAO=new PostFileDAO();
		PrintWriter out=resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		postFileDAO.selectPostfileDefault().forEach(postfile->{
			JSONObject fileobject=new JSONObject(postfile); jsonArray.put(fileobject);
		});
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
