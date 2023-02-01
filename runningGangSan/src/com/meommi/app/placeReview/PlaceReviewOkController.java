package com.meommi.app.placeReview;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meommi.app.Execute;
import com.meommi.app.Result;
import com.meommi.app.placeReview.dao.PlaceReviewDAO;
import com.meommi.app.placeReview.vo.PlaceReviewDTO;
import com.meommi.app.placeReview.vo.PlaceReviewVO;
import com.meommi.app.reviewFile.dao.PlaceReviewFileDAO;
import com.meommi.app.reviewFile.vo.PlaceReviewFileVO;
import com.meommi.app.user.dao.UserDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PlaceReviewOkController implements Execute {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      PlaceReviewVO placeReviewVO= new PlaceReviewVO();
      PlaceReviewDTO placeReviewDTO = new PlaceReviewDTO();
      PlaceReviewDAO placeReviewDAO = new PlaceReviewDAO();
      PlaceReviewFileDAO placeReviewFileDAO = new PlaceReviewFileDAO();
      PlaceReviewFileVO placeReviewFileVO = new PlaceReviewFileVO();
      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/review/";
      System.out.println(uploadPath);
      System.out.println(uploadPath);
      int fileSize = 1024 * 1024 * 5; //5M 
      MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
      
      String placeReviewContents = multipartRequest.getParameter("placeReviewContents");
      int reviewRating = Integer.valueOf(multipartRequest.getParameter("reviewRating"));
      req.setCharacterEncoding("UTF-8");

//      request 객체, 업로드 할 경로, 파일의 크키, 인코딩 방식, 이름변경정책
         Enumeration<String> fileNames = multipartRequest.getFileNames();
         
         HttpSession session = req.getSession();
         UserDAO userDAO = new UserDAO();

//       지역 관련 정보
         String placeId = multipartRequest.getParameter("placeId"); 
         String placeName = multipartRequest.getParameter("placeName"); 
         String placeAddress = multipartRequest.getParameter("placeAddress"); 

         System.out.println(placeId);
         System.out.println(placeName);
         System.out.println(placeAddress);
//		 유저 관련 정보         
         int userNumber = (Integer)(session.getAttribute("userNumber"));
         String userId = (String)session.getAttribute("userId");
         String userName = userDAO.loginUser(userId).getUserName();
         
         
         placeReviewDTO.setPlaceReviewRating(reviewRating);
         placeReviewDTO.setPlaceReviewContents(placeReviewContents);
         placeReviewDTO.setPlaceId(placeId);
         placeReviewDTO.setPlaceName(placeName);
         placeReviewDTO.setPlaceAddress(placeAddress);

         placeReviewDTO.setUserNumber(userNumber);
         placeReviewDTO.setUserName(userName);
         
         System.out.println(placeReviewDTO);
         
         placeReviewDAO.insert(placeReviewDTO);



         int currentSequence = placeReviewDAO.selectCurrentSequence();
         
//         화면에서 구현된 type이 file인 input태그 name속성 값을 모두 가져온다.
         while(fileNames.hasMoreElements()) {
            String filePath = null;
            String fileName = fileNames.nextElement();
            String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
            String fileSystemName = multipartRequest.getFilesystemName(fileName);
            if(fileOriginalName == null) {continue;}
            
            placeReviewFileVO.setReviewFileOriginName(fileOriginalName);
            placeReviewFileVO.setReviewFileSystemName(fileSystemName);
            placeReviewFileVO.setPlaceReviewNumber(currentSequence);
            
            placeReviewFileDAO.insert(placeReviewFileVO);
         }
         
         return null;
      }

   }

      
      
      

      
      
      