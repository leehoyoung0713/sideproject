package com.example.app.service;

import com.example.app.domain.dao.ReplyDAO;
import com.example.app.domain.vo.Criteria;
import com.example.app.domain.vo.ReplyVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReplyService {
    private final ReplyDAO replyDAO;

    //    추가
    public void register(ReplyVO replyVO){
        replyDAO.save(replyVO);
    }
    //    목록
    public List<ReplyVO> showAll(Long boardNumber, Criteria criteria){
        return replyDAO.findAll(boardNumber, criteria);
    }
    //    수정
    public void modify(ReplyVO replyVO){
        replyDAO.update(replyVO);
    }
    //    삭제
    public void remove(Long replyNumber){
        replyDAO.deleteByReplyNumber(replyNumber);
    }
    //    전체 개수
    public int getTotal(Long boardNumber){
        return replyDAO.findCountByBoardNumber(boardNumber);
    }
    //    조회
    public ReplyVO show(Long replyNumber){
        return replyDAO.findById(replyNumber);
    }
}
