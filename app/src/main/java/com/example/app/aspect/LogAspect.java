package com.example.app.aspect;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.stream.Collectors;

@Configuration
@Aspect
@Slf4j
public class LogAspect {
    @Before("@annotation(com.example.app.aspect.annotation.LogStatus)")
    public void beforeStart(JoinPoint joinPoint){
        log.info("===================================================");
        log.info("Method " + joinPoint.getSignature().getName() + " Started at " + LocalDateTime.now());
        log.info("Arguments: " + Arrays.stream(joinPoint.getArgs()).map(String::valueOf).collect(Collectors.joining(", ")));
        log.info("===================================================");
    }
}
