package com.example.app.mybatis;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;

@SpringBootTest
@Slf4j
public class ConnectionTest {
    @Autowired
    private DataSource dataSource;

    @Test
    public void datasourceTest(){
        try(Connection connection = dataSource.getConnection()){
            log.info("datasource connection: " + connection);
        }catch (Exception e){
            log.info(e.getMessage());
        }
    }
}



















