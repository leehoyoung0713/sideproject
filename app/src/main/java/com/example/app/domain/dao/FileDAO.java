package com.example.app.domain.dao;

import com.example.app.domain.vo.FileVO;
import com.example.app.mapper.FileMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class FileDAO {
    private final FileMapper fileMapper;

//    추가
    public void save(FileVO fileVO){
        fileMapper.insert(fileVO);
    }
//    게시글 번호로 전체 조회
    public List<FileVO> findByBoardNumber(Long boardNumber){
        return fileMapper.select(boardNumber);
    }
//    삭제
    public void deleteByBoardNumber(Long boardNumber){
        fileMapper.delete(boardNumber);
    }
//    어제 저장된 첨부파일 전체 조회
    public List<FileVO> findOldFilesByBoardNumber(){
        return fileMapper.selectOldFiles();
    }
}
