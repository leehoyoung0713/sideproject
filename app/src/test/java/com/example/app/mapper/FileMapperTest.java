package com.example.app.mapper;

import com.example.app.domain.vo.FileVO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class FileMapperTest {
    @Autowired
    private FileMapper fileMapper;

    @Test
    public void insertTest(){
        FileVO fileVO = new FileVO();
        fileVO.setFileName("day01.txt");
        fileVO.setFileSize(30L);
        fileVO.setFileUploadPath("test");
        fileVO.setFileUuid("abc111");
        fileVO.setBoardNumber(265L);

        fileMapper.insert(fileVO);
    }

    @Test
    public void selectTest(){
        fileMapper.select(265L).stream().map(FileVO::toString).forEach(log::info);
    }

    @Test
    public void deleteTest(){
        fileMapper.delete(265L);
    }
}















