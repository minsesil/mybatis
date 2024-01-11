package com.study.mybatis.member.service;

import com.study.mybatis.member.vo.Member;

public interface MemberService {
	//인터페이스 : 상수필드(public static final) + 추상메소드(public abstract)
	
	/* public abstract */ Member loginMember(Member m);
	
	int insertMember(Member m);	
	
	int checkId(String userId);
	
	
	int deleteMember(String userId);

	
	//회원정보수정
	int getMemberUpdate(Member m);
	int memberUpdate(Member m);
}
