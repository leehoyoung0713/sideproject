package com.example.app.controller;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@SpringBootTest
@Slf4j
public class BoardControllerTest {

    @Autowired
    private WebApplicationContext webApplicationContext;

//    브라우저에서 URL을 요청한 것과 같은 환경을 구성해준다.
    private MockMvc mockMvc;

    @BeforeEach
    public void setUp(){
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @Test
    public void showTest() throws Exception{
        log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/list")).andReturn().getModelAndView().getModelMap().toString());
    }

    @Test
    public void writeTest() throws Exception {
//        log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/write")).andReturn().getModelAndView().getViewName());
        log.info(mockMvc.perform(MockMvcRequestBuilders.post("/board/write")
                .param("boardTitle", "새로운 제목1")
                .param("boardContent", "새로운 내용1").param("boardWriter", "testC"))
                .andReturn().getModelAndView().getViewName());
    }

    @Test
    public void updateTest() throws Exception {
//        log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/update")
//                .param("boardNumber", "7")).andReturn().getModelAndView().getModelMap().toString());
        log.info(mockMvc.perform(MockMvcRequestBuilders.post("/board/update")
                .param("boardNumber", "7")
                .param("boardTitle", "수정된 제목1")
                .param("boardContent", "수정된 내용1"))
                .andReturn().getModelAndView().getModelMap().toString());
    }

    @Test
    public void deleteTest() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/board/delete")
                .param("boardNumber", "7"))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
}
















