package com.meommi.app.user;

import java.io.File;
import java.io.IOException;
import java.util.Base64;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.user.dao.UserDAO;
import com.meommi.app.user.vo.UserVO;
import com.meommi.app.userFile.dao.UserFileDAO;
import com.meommi.app.userFile.vo.UserFileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class PrivacySetOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		UserFileVO userFileVO = new UserFileVO();
		UserFileDAO userFileDAO = new UserFileDAO();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();
		String fileName = null;
		String fileOriginalName = null;
		String fileSystemName = null;
		
//		req.getSession().getServletContext().getRealPath("/") + "/uploaed/user/"
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/user/";
//		String uploadPath = "D:\\JSP_Project\\personal_workspace\\gangsan\\WebContent\\upload\\user\\";
		int fileSize = 1024 * 1024 * 5; //5M 
		
//		request 객체, 업로드 할 경로, 파일의 크키, 인코딩 방식, 이름변경정책
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		String pw = multipartRequest.getParameter("check");
		String name = multipartRequest.getParameter("nickname");
		String userId= multipartRequest.getParameter("userId");
		boolean uploadCheck = Boolean.valueOf(multipartRequest.getParameter("uploadChange"));
		boolean editCheck = Boolean.valueOf(multipartRequest.getParameter("editChange"));
		
		userVO = userDAO.loginUser(userId);

		if(uploadCheck) {
			fileOriginalName = multipartRequest.getOriginalFileName("upload");
			fileSystemName = multipartRequest.getFilesystemName("upload");
			System.out.println(fileSystemName);
			
			userFileVO.setUserFileOriginName(fileOriginalName);
			userFileVO.setUserFileSystemName(fileSystemName);
			userFileVO.setUserNumber(userVO.getUserNumber());
			
			userFileDAO.selectFile(userVO.getUserNumber());

			String path = uploadPath + userFileDAO.selectFile(userVO.getUserNumber());
			new File(path).delete();
			
			userFileDAO.deleteFile(userVO.getUserNumber());
			userFileDAO.uploadFile(userFileVO);
		}
		else if(editCheck) {
			fileName = "edit";
			fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			userFileVO.setUserFileOriginName(fileOriginalName);
			userFileVO.setUserFileSystemName(fileSystemName);
			userFileVO.setUserNumber(userVO.getUserNumber());
			
			String path = uploadPath + userFileDAO.selectFile(userVO.getUserNumber());
			new File(path).delete();
			
			userFileDAO.deleteFile(userVO.getUserNumber());
			userFileDAO.uploadFile(userFileVO);
		}
		System.out.println(name);
		System.out.println(name == "");
		System.out.println(name == null);
		System.out.println(pw);
		
		if(name != "" && name != null) {
			userVO.setUserName(name);
		}
		if(pw != "" && pw != null) {
			pw = new String(Base64.getEncoder().encode(pw.getBytes()));
			userVO.setUserPassword(pw);
		}
		userDAO.updateMyProfile(userVO);
		
		result.setPath(req.getContextPath() + "/index.jsp");
		return result;
	}

}
