package com.example.app.domain.dao;

import com.example.app.domain.vo.Criteria;
import com.example.app.domain.vo.ReplyVO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@SpringBootTest
@Slf4j
public class ReplyDAOTest {
    @Autowired
    private ReplyDAO replyDAO;
    @Autowired
    private BoardDAO boardDAO;

    @Test
    public void saveTest(){
//        최신 게시글 5개에 2개씩 댓글 달기
        int amount = 5, replyCount = 2, totalCount = amount * replyCount;

        Criteria criteria = new Criteria();
        criteria.createCriteria(1, amount);
        List<Long> boardNumbers = boardDAO.findAll(criteria).stream().map(board -> board.getBoardNumber()).collect(Collectors.toList());

        IntStream.range(0, totalCount).forEach(i -> {
            ReplyVO replyVO = new ReplyVO("reply" + (i + 1), "replier", boardNumbers.get(i % amount));
            replyDAO.save(replyVO);
        });
    }

    @Test
    public void findAllTest(){
        Criteria criteria = new Criteria();
        criteria.createCriteria(2, 10);
        replyDAO.findAll(401L,criteria).stream().map(ReplyVO::toString).forEach(log::info);
    }

    @Test
    public void updateTest(){
        Criteria criteria = new Criteria();
        criteria.createCriteria(2, 10);
        ReplyVO replyVO = replyDAO.findAll(401L, criteria).get(0);
        replyVO.setReplyContent("updated reply");
        replyDAO.update(replyVO);
    }

    @Test
    public void findCountByBoardNumberTest(){
        int amount = 5, replyCount = 2, totalCount = amount * replyCount;

        Criteria criteria = new Criteria();
        criteria.createCriteria(1, amount);
        List<Long> boardNumbers = boardDAO.findAll(criteria).stream().map(board -> board.getBoardNumber()).collect(Collectors.toList());

        boardNumbers.forEach(boardNumber -> log.info(boardNumber + ": " + replyDAO.findCountByBoardNumber(boardNumber)));
    }

    @Test
    public void deleteByReplyNumberTest(){
        replyDAO.deleteByReplyNumber(22L);
    }
}