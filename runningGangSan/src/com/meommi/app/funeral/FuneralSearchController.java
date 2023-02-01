package com.meommi.app.funeral;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.funeral.dao.FuneralDAO;

public class FuneralSearchController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("들어옴");
		FuneralDAO funeralDAO = new FuneralDAO();
		Result result = new Result();
		String funeralSearch = req.getParameter("funeralSearch");
		System.out.println(funeralSearch);
		
		req.setAttribute("funeralSearch", funeralDAO.selectOne(funeralSearch));
		System.out.println(funeralDAO.selectOne(funeralSearch));
		result.setPath("/app/service/funeral.jsp");
		
		return result;
	}

}
