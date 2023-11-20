package com.example.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project.dao.MemberDAO;
import com.example.project.vo.MemberVO;

@Service //빈등록
public class MemberServiceImpl implements MemberService {
	
	@Inject //주입
	private MemberDAO memberDao;

	@Override
	public List<MemberVO> memberList() {
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}
	 // 03. 회원 정보 상세 조회 
    public MemberVO viewMember(String userId) {
        return memberDao.viewMember(userId);
    }
    
    // 04. 회원 정보 수정 처리
    @Override
    public void deleteMember(String userId) {
        memberDao.deleteMember(userId);
    }
    // 05. 회원 정보 삭제 처리
    @Override
    public void updateMember(MemberVO vo) {
        memberDao.updateMember(vo);
    }
    // 06. 회원 정보 수정 및 삭제를 위한 비밀번호 체크
    public boolean checkPw(String userId, String userPw) {
        return memberDao.checkPw(userId, userPw);
    }

}
