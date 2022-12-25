package com.example.app.service;

import com.example.app.domain.dao.BoardDAO;
import com.example.app.domain.dao.FileDAO;
import com.example.app.domain.vo.BoardVO;
import com.example.app.domain.vo.Criteria;
import com.example.app.domain.vo.FileVO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service @Qualifier("community") @Primary
@RequiredArgsConstructor
public class CommunityService implements BoardService{
    private final BoardDAO boardDAO;
    private final FileDAO fileDAO;

    @Override
    public List<BoardVO> show(Criteria criteria) {
        return boardDAO.findAll(criteria);
    }

    @Override
    public BoardVO find(Long boardNumber) {
        BoardVO boardVO = boardDAO.findById(boardNumber);
        boardVO.setFiles(fileDAO.findByBoardNumber(boardNumber));
        return boardVO;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void add(BoardVO boardVO) {
        List<FileVO> files = boardVO.getFiles();
        boardDAO.save(boardVO);

        if(files != null){
            files.forEach(file -> {
                file.setBoardNumber(boardVO.getBoardNumber());
                fileDAO.save(file);
            });
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BoardVO boardVO) {
        List<FileVO> files = boardVO.getFiles();
        fileDAO.deleteByBoardNumber(boardVO.getBoardNumber());

        if(files != null){
            files.forEach(file -> {
                file.setBoardNumber(boardVO.getBoardNumber());
                fileDAO.save(file);
            });
        }
        boardDAO.setBoard(boardVO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Long boardNumber) {
        fileDAO.deleteByBoardNumber(boardNumber);
        boardDAO.deleteById(boardNumber);
    }

    @Override
    public int getTotal(Criteria criteria) {
        return boardDAO.findCount(criteria);
    }
}
