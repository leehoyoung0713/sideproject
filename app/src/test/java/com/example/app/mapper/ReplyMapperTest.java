package com.example.app.mapper;

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
public class ReplyMapperTest {
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private BoardMapper boardMapper;

    @Test
    public void insertTest(){
//        최신 게시글 5개에 2개씩 댓글 달기
        int amount = 5, replyCount = 2, totalCount = amount * replyCount;

        Criteria criteria = new Criteria();
        criteria.createCriteria(1, amount);
        List<Long> boardNumbers = boardMapper.getList(criteria).stream().map(board -> board.getBoardNumber()).collect(Collectors.toList());

        IntStream.range(0, totalCount).forEach(i -> {
            ReplyVO replyVO = new ReplyVO("reply" + (i + 1), "replier", boardNumbers.get(i % amount));
            replyMapper.insert(replyVO);
        });
    }

    @Test
    public void selectAllTest(){
        Criteria criteria = new Criteria();
        criteria.createCriteria(2, 10);
        replyMapper.selectAll(401L, criteria).stream().map(ReplyVO::toString).forEach(log::info);
    }

    @Test
    public void updateTest(){
        Criteria criteria = new Criteria();
        criteria.createCriteria(2, 10);
        ReplyVO replyVO = replyMapper.selectAll(401L, criteria).get(0);
        replyVO.setReplyContent("updated reply");
        replyMapper.update(replyVO);
    }

    @Test
    public void selectCountOfReplyNumberTest(){
        int amount = 5, replyCount = 2, totalCount = amount * replyCount;

        Criteria criteria = new Criteria();
        criteria.createCriteria(1, amount);
        List<Long> boardNumbers = boardMapper.getList(criteria).stream().map(board -> board.getBoardNumber()).collect(Collectors.toList());

        boardNumbers.forEach(boardNumber -> log.info(boardNumber + ": " + replyMapper.selectCountOfReply(boardNumber)));
    }

    @Test
    public void deleteTest(){
        replyMapper.delete(22L);
    }

}
