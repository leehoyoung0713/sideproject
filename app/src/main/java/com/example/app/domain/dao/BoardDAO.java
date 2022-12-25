package com.example.app.domain.dao;

import com.example.app.domain.vo.BoardVO;
import com.example.app.domain.vo.Criteria;
import com.example.app.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class BoardDAO {
    private final BoardMapper boardMapper;
    //    게시글 목록
    public List<BoardVO> findAll(Criteria criteria){
        return boardMapper.getList(criteria);
    }
    //    게시글 조회
    public BoardVO findById(Long boardNumber){
        return boardMapper.select(boardNumber);
    }
    //    게시글 추가
    public int save(BoardVO boardVO){
        return boardMapper.insert(boardVO);
    }
    //    게시글 수정
    public int setBoard(BoardVO boardVO){
        return boardMapper.update(boardVO);
    }
    //    게시글 삭제
    public int deleteById(Long boardNumber){
        return boardMapper.delete(boardNumber);
    }
    //    게시글 전체 개수
    public int findCount(Criteria criteria){
        return boardMapper.selectCountOfBoard(criteria);
    }
}










