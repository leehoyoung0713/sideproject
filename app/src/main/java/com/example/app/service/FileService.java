/*
* 게시판 서비스에 속해있기 때문에 별도의 서비스를 제작하지 않아도 된다.
* */

package com.example.app.service;

import com.example.app.domain.dao.FileDAO;
import com.example.app.domain.vo.FileVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FileService {
    private final FileDAO fileDAO;

//    추가
    public void register(FileVO fileVO){
        fileDAO.save(fileVO);
    }
//    게시글 번호로 전체 조회
    public List<FileVO> showAll(Long boardNumber){
        return fileDAO.findByBoardNumber(boardNumber);
    }
//    삭제
    public void remove(Long boardNumber){
        fileDAO.deleteByBoardNumber(boardNumber);
    }
//    어제 저장된 첨부파일 전체 조회
    public List<FileVO> showOldFiles(){
        return fileDAO.findOldFilesByBoardNumber();
    }
}
