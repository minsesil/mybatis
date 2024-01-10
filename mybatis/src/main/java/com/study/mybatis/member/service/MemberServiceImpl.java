package com.study.mybatis.member.service;

import org.apache.ibatis.session.SqlSession;

import com.study.mybatis.common.Template;
import com.study.mybatis.member.dao.MemberDao;
import com.study.mybatis.member.vo.Member;

public class MemberServiceImpl implements MemberService {
	
	private MemberDao mDao = new MemberDao();

	
	//로그인
	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member loginUser = mDao.loginMember(sqlSession, m);
		sqlSession.close();
		return loginUser;
	}
	
	//체크아이디
	@Override
	public int checkId(String user_id) {
		SqlSession sqlSession = Template.getSqlSession();
		int checkid = mDao.checkId(sqlSession, user_id); //dao로가서 checkId만든다
		sqlSession.close();
		return checkid;
	}
	
	//회원가입
	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int insertUser = mDao.insertMember(sqlSession, m);
		//mybatis-config.xml에서 내가직접 트랜잭션을 관리하겠다고 설정함
		//직접 commit()을 함
		if(insertUser>0) {
			sqlSession.commit();
		}
		sqlSession.close();		
		return insertUser;
	}



	@Override
	public int updateMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
