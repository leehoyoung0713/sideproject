package com.koreait.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//mybatis사용을 위한 설정파일인 MyBatisConfig클래스 선언
public class MyBatisConfig {
	
//	SQLSession객체를 만들기 위한 SqlSessionFactory클래스 타입의 객체 선언 및 초기화
	private static SqlSessionFactory sqlsessionFactory;
	
	static {
		
//		mybatis설정파일의 경로 설정 및 Resources클래스의 getResourceAsReader()메서드를 통해 상대경로의 파일 읽는다.
		try {
			String resource = "./com/koreait/mybatis/config/config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			
//			sqlsessionFactory객체를 사용하기 위한 SqlSessionFactoryBuilder().build()메서드 사용
			sqlsessionFactory = new SqlSessionFactoryBuilder().build(reader);
			
//			예외 발생 처리 구문
		} catch (IOException e) {
			System.out.println("초기화 문제 발생, MyBatisConfig.java");
			e.printStackTrace();
		}
	}

//	SQLSessionFactory객체 반환을 위한 static getSqlsessionFactory()메서드 선언
	public static SqlSessionFactory getSqlsessionFactory() {
		return sqlsessionFactory;
	}
}











