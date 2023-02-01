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
import com.meommi.app.postFile.dao.PostFileDAO;

public class MainPostFileOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PostFileDAO postfileDAO=new PostFileDAO();
		int startIndex=6;
		PrintWriter out=resp.getWriter();
		JSONArray jsonArray=new JSONArray();
		postfileDAO.selectPostfileRow(startIndex).forEach(postfile->{
			JSONObject fileobject=new JSONObject(postfile); jsonArray.put(fileobject);
		});
		out.print(jsonArray.toString());
		out.close();
		return null;
	}

}
