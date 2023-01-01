package com.koreait.app.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.app.Execute;
import com.koreait.app.Result;

//Execute 인터페이스를 구현하는 DownloadController클래스 선언
public class DownloadController implements Execute{
	
//	execute메서드 재정의
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		요청과 응답시 타입을 'utf-8'로 지정
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
//		파일 업로드 경로 설정
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
//		"fileSystemName" 및 "fileOriginalName"파라미터에 대한 키값을 저장
		String fileSystemName = req.getParameter("fileSystemName");
		String fileOriginalName = req.getParameter("fileOriginalName");
		
//		파일 업로드 경로에 "fileSystemName" 파라미터에 대한 키값을 연결하여 저장
		uploadPath += fileSystemName;
		
//		파일 입출력을 위한 스트림 객체 선언 및 초기화
		byte[] datas = null;
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		
		try {
			
//			업로드 파일의 경로를 찾는 파일 객체 생성
			File file = new File(uploadPath);
			
//			파일 객체의 문자열 길이만큼 바이트 배열을 생성
			datas = new byte[(int)file.length()];
			
//			바이트 단위로 입력받기 위한 FileInputStream클래스 객체에 file객체를 인자로 전달하여 객체 생성
			inputStream = new FileInputStream(file);
			
//			다운로드 받을때 타입을 설정(8비트 데이터(1바이트 데이터))
			resp.setContentType("application/octet-stream");
			
//			web에 전달되는 data설정(attachment;filename과 같이 주는 경우 body에 오는 값을 다운로드 받으라는 의미)
			resp.setHeader("Content-Disposition", "attachment;filename=\"" + new String(("[출처:한동석]_" + fileOriginalName).getBytes("UTF-8"), "ISO-8859-1") + "\"");
			
//			헤더의 설정으로 첨부파일 다운로드 받을때 타입을 설정(8비트 데이터(1바이트 데이터))
			resp.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
			
//			첨부파일의 url길이 지정을 위한 설정
			resp.setHeader("Content-Length", file.length() + "");
			
//			출력스트림에 resp객체의 설정값들을 읽어들이기 위한 설정
			outputStream = resp.getOutputStream();
			
//		가져온 byte는 0일 수 없기 때문에 " > 0 "도 표현 가능
			while(inputStream.read(datas) != -1) {
				
//				읽을 값이 있다면 출력스트림 객체에 저장
				outputStream.write(datas);
			}
			
//			파일을 차짖 못할 경우의 예외
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			
//			입출력시 발생하는 예외
		} catch (IOException e) {
			e.printStackTrace();
			
//			예외 발생 여부에 관계없이 실행되는 구문
		} finally {
			
//			열어준 스트림의 자원을 반환하기 위한 try-catch 구문
			try {
				
//				outputStream에 저장된 데이터를 flush메서드를 통해 전달하고 사용된 자원 반환
				if(outputStream != null) {
					outputStream.close();
				}
				
//				inputStream에 저장된 데이터를 flush메서드를 통해 전달하고 사용된 자원 반환
				if(inputStream != null) {
					inputStream.close();
				}
				
//				내부 오류로 인해 발생할 수 있는 입출력 예외 구문
			} catch (IOException e) {
				throw new RuntimeException(e);
			}
		}
		
//		파일 다운로드 후 페이지 이동이 없으므로 Result객체에 null값 반환
		return null;
	}
}









