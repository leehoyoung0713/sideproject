package com.example.app.mapper;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class MapperTest {
    @Autowired
    private TimeMapper timeMapper;

    @Test
    public void timeMapperTest(){
        log.info("timeMapper: " + timeMapper);
        log.info("getTime: " + timeMapper.getTime());
    }
}
