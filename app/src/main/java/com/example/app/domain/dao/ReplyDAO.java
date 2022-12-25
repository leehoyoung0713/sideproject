package com.example.app.domain.dao;

import com.example.app.domain.vo.Criteria;
import com.example.app.domain.vo.ReplyVO;
import com.example.app.mapper.ReplyMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ReplyDAO {
    private final ReplyMapper replyMapper;

    //    추가
    public void save(ReplyVO replyVO){
        replyMapper.insert(replyVO);
    }
    //    목록
    public List<ReplyVO> findAll(Long boardNumber, Criteria criteria){
        return replyMapper.selectAll(boardNumber, criteria);
    }
    //    수정
    public void update(ReplyVO replyVO){
        replyMapper.update(replyVO);
    }
    //    삭제
    public void deleteByReplyNumber(Long replyNumber){
        replyMapper.delete(replyNumber);
    }
    //    전체 개수
    public int findCountByBoardNumber(Long boardNumber){
        return replyMapper.selectCountOfReply(boardNumber);
    }
    //    조회
    public ReplyVO findById(Long replyNumber){
        return replyMapper.select(replyNumber);
    }
}

















