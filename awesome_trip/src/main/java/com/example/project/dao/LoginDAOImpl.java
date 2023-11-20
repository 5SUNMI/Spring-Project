package com.example.project.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.vo.MemberVO;

@Repository // 빈 등록
public class LoginDAOImpl implements LoginDAO {

	@Inject // 주입
	private SqlSession sqlSession;
	
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("login.loginCheck", vo);
		return (name==null) ? false : true;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne("login.viewMember", vo);
	}

	@Override
	public void logout(HttpSession session) {
	}

}
