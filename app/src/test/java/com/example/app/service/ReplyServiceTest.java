package com.example.app.service;

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
public class ReplyServiceTest {
    @Autowired
    private ReplyService replyService;
    @Autowired
    private BoardService boardService;

    @Test
    public void registerTest() {
//        최신 게시글 5개에 2개씩 댓글 달기
        int amount = 5, replyCount = 2, totalCount = amount * replyCount;

        Criteria criteria = new Criteria();
        criteria.createCriteria(1, amount);
        List<Long> boardNumbers = boardService.show(criteria).stream().map(board -> board.getBoardNumber()).collect(Collectors.toList());

        IntStream.range(0, totalCount).forEach(i -> {
            ReplyVO replyVO = new ReplyVO("reply" + (i + 1), "replier", boardNumbers.get(i % amount));
            replyService.register(replyVO);
        });
    }

    @Test
    public void showAllTest() {
        Criteria criteria = new Criteria();
        criteria.createCriteria(2, 10);
        replyService.showAll(401L, criteria).stream().map(ReplyVO::toString).forEach(log::info);
    }

    @Test
    public void modifyTest() {
        Criteria criteria = new Criteria();
        criteria.createCriteria(2, 10);
        ReplyVO replyVO = replyService.showAll(401L, criteria).get(0);
        replyVO.setReplyContent("updated reply");
        replyService.modify(replyVO);
    }

    @Test
    public void getTotalTest() {
        int amount = 5, replyCount = 2, totalCount = amount * replyCount;

        Criteria criteria = new Criteria();
        criteria.createCriteria(1, amount);
        List<Long> boardNumbers = boardService.show(criteria).stream().map(board -> board.getBoardNumber()).collect(Collectors.toList());

        boardNumbers.forEach(boardNumber -> log.info(boardNumber + ": " + replyService.getTotal(boardNumber)));
    }

    @Test
    public void removeTest() {
        replyService.remove(22L);
    }
}













