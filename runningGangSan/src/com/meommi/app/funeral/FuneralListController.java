package com.meommi.app.funeral;


import java.io.IOException;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.funeral.dao.FuneralDAO;
import com.meommi.app.funeral.vo.FuneralVO;

public class FuneralListController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		FuneralDAO funeralDAO = new FuneralDAO();
		Result result = new Result();
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int total = funeralDAO.selectCount();
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 6;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;

		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		System.out.println(funeralDAO.selectAll(pageMap));
//		System.out.println(total);
		req.setAttribute("funerals", funeralDAO.selectAll(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/app/service/funeral.jsp");
		
		return result;
	}

}
