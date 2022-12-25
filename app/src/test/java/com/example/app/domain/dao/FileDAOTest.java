package com.example.app.domain.dao;

import com.example.app.domain.vo.FileVO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class FileDAOTest {
    @Autowired
    private FileDAO fileDAO;

    @Test
    public void saveTest(){
        FileVO fileVO = new FileVO();
        fileVO.setFileName("day01.txt");
        fileVO.setFileSize(30L);
        fileVO.setFileUploadPath("test");
        fileVO.setFileUuid("abc111");
        fileVO.setBoardNumber(265L);

        fileDAO.save(fileVO);
    }

    @Test
    public void findByBoardNumberTest(){
        fileDAO.findByBoardNumber(265L).stream().map(FileVO::toString).forEach(log::info);
    }

    @Test
    public void deleteByBoardNumberTest(){
        fileDAO.deleteByBoardNumber(265L);
    }
}
