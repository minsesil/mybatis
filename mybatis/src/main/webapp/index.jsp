<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="WEB-INF/views/main.jsp" />
	<!-- 
	 * 프레임워크
	 	- 개발자가 보다 편리한 환경에서 개발할 수 있도록 제공해주는 틀, 뼈대
	 	- 소프트웨어 개발의 입장에서는 공통적으로 사용되는 라이브러리/개발도구/인터페이스 등을 의미
	 	
	 * 프레임워크의 필요성
	 	- 규모가 큰 프로젝트 작업시 많은 개발자들이 필요
	 	  -> 모든 개발자들이 "통일성" 있고 "빠르게" "안정적"으로 개발하기 위한 프레임워크를 쓰는것이 좋다.
		  -> 생산성 향상
		  
	 * 프레임워크의 특징
	 	- 개발자들이 따라야 하는 가이드라인 제공
	 	  -> 자유롭게 설계/코딩, 가이드 대로 설계/코딩을 해야됨
	 	- 개발할 수 있는 범위가 정해져 있다.
	 	- 개발자들을 위한 다양한 도구들이 지원
	 	
	 * 프레임워크의 장점
	 	- 개발 시간을 줄일 수 있다.
	 	- 유지보수 용이
	 	
	 * 프레임워크의 단점
	 	- 프레임워크에 너무 의존하여 개발자들의 능력이 떨어짐
	 	- 익숙해지기까지 시간이 걸림
	 	
	 * 프레임워크의 종류
	 	- 영속성 : 데이터에 관련된 DRUD 기능들을 보다 편리하게 작업할 수 있도록 제공해주는 프레임워크
	 			 ex) Mybatis, Hibernate, JPA...
	 	- 자바 : 웹 애플리케이션에 초점을 맞춰 필요한 요소들을 모듈화하여 제공해주는 프레임워크
	 			ex) spring, struts
	 	- 화면구현 : Front-end를 보다 쉽게 구현할 수 있도록 제공해주는 프레임워크
	 			ex) Bootstrap...
	 	- 기능 및 지원 : 특정 기능이나 업무 수행에 도움을 줄 수 있게 제공해주는 프레임워크
	 			ex) Log4j...
	 -->
</body>
</html>
<!--폴더생성
member
board

com.study.mybatis.board.controller (servlet)
						.dao (DB연동 메서드정의)
						.service (interface(서버와 접속할 메서드),인터페이스를 구현)
						.vo (bean파일)


com.study.mybatis.member.controller
						.dao
						.service
						.vo


com.study.mybatis.common
						.dao
						.service
						.vo
-->

