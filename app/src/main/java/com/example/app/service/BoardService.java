package com.example.app.service;

import com.example.app.domain.vo.BoardVO;
import com.example.app.domain.vo.Criteria;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BoardService {
    //    게시글 목록
    public List<BoardVO> show(Criteria criteria);
    //    게시글 조회
    public BoardVO find(Long boardNumber);
    //    게시글 추가
    public void add(BoardVO boardVO);
    //    게시글 수정
    public void update(BoardVO boardVO);
    //    게시글 삭제
    public void delete(Long boardNumber);
    //    게시글 삭제
    public int getTotal(Criteria criteria);
}
