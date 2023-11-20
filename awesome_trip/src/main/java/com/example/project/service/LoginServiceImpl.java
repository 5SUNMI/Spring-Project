package com.example.project.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.project.dao.LoginDAO;
import com.example.project.vo.MemberVO;

@Service // 빈 등록
public class LoginServiceImpl implements LoginService {

	@Inject
	private LoginDAO loginDao;
	
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = loginDao.loginCheck(vo);
		if(result) { // true이면 세션 등록
			MemberVO vo2 = viewMember(vo); // id, pw 값을 vo2에 설정
			
			System.out.println("로그인한 회원 정보 " + vo2);
			
			// 세션 변수 등록
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("userName", vo2.getUserName());
		}
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return loginDao.viewMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate(); // 세션 종료
	}

}
