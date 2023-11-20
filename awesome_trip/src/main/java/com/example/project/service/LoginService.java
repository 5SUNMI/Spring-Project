package com.example.project.service;

import javax.servlet.http.HttpSession;

import com.example.project.vo.MemberVO;

public interface LoginService {

		// 회원 로그인 체크
		public boolean loginCheck(MemberVO vo, HttpSession session);
		
		// 로그인 정보
		public MemberVO viewMember(MemberVO vo);
		
		// 회원 로그아웃
		public void logout(HttpSession session);
}
