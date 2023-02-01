package com.meommi.app.post;

import java.io.IOException;


import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.post.dao.PostDAO;
import com.meommi.app.post.vo.PostVO;
import com.meommi.app.postFile.dao.PostFileDAO;
import com.meommi.app.postFile.vo.PostFileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PostRegistrationController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      PostDAO postDAO = new PostDAO();
      PostVO postVO = new PostVO();
      PostFileDAO postFileDAO = new PostFileDAO();
      PostFileVO postFileVO = new PostFileVO();
      int currentSequence = 0;
     
      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
//      String uploadPath="C:\\gb_0900_lhy\\jsp\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\runningtests\\upload";
      int fileSize = 1024 * 1024 * 5; //5M 
//      request 객체, 업로드 할 경로, 파일의 크키, 인코딩 방식, 이름변경정책
      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
      Enumeration<String> fileNames = multipartRequest.getFileNames();
      
      String postContent = multipartRequest.getParameter("postContent");
            
      String userNumber = String.valueOf(req.getSession().getAttribute("userNumber"));
      /* int userNumber = Integer.valueOf(req.getParameter("userNumber")); */
      
      
      postVO.setPostContent(postContent);
      postVO.setUserNumber(Integer.valueOf(userNumber));
      
      
      
      postDAO.insertContent(postVO);
      currentSequence = postDAO.selectCurrentSequence();
      



//      화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
      System.out.println(fileNames);
      System.out.println(fileNames.toString());
      while(fileNames.hasMoreElements()) {
         String fileName = fileNames.nextElement();
         String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
         String fileSystemName = multipartRequest.getFilesystemName(fileName);
         System.out.println(fileName);
         if(fileOriginalName == null) {continue;}
         
         postFileVO.setPostFileOriginName(fileOriginalName);
         postFileVO.setPostFileSystemName(fileSystemName);
         
         
         postFileVO.setPostNumber(currentSequence);
         postFileVO.setUserNumber(Integer.valueOf(userNumber));
         postFileDAO.insert(postFileVO);
      }
      
      
      return null;
   }

}
   
