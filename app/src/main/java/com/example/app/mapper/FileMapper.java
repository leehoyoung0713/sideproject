package com.example.app.mapper;

import com.example.app.domain.vo.FileVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FileMapper {
//    추가
    public void insert(FileVO fileVO);
//    게시글 번호로 전체 조회
    public List<FileVO> select(Long boardNumber);
//    삭제
    public void delete(Long boardNumber);
//    어제 저장된 첨부파일 전체 조회
    public List<FileVO> selectOldFiles();
}
