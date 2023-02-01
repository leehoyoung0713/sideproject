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

public class PostFileOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		req.setCharacterEncoding("utf-8");
		PostFileDAO postfileDAO=new PostFileDAO();
		int startIndex=Integer.valueOf(req.getParameter("Increment"));
		PrintWriter out=resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		postfileDAO.selectPostfileRow(startIndex).forEach(postfile->{
			JSONObject fileobject=new JSONObject(postfile); jsonArray.put(fileobject);
		});
		System.out.println(jsonArray.toString());
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
