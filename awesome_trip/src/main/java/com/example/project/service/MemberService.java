package com.example.project.service;

import java.util.List;

import com.example.project.vo.MemberVO;

public interface MemberService {
	//전체 목록
		public List<MemberVO> memberList();
		
		//삽입
		public void insertMember(MemberVO vo);
		
		// 상세보기
		public MemberVO viewMember(String userId);
		
		// 수정
		public void updateMember(MemberVO vo);
		
		
		//삭제 
		public void deleteMember(String userId);
		
		public boolean checkPw(String userId, String userPw);

}
