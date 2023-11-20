package com.example.project.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.project.dao.ContactDAO;
import com.example.project.vo.ContactVO;
import com.example.project.vo.Criteria;

@Service // bean 등록
public class ContactServiceImpl implements ContactService {

	@Inject
	private ContactDAO contactDao;

	@Override
	public void create(ContactVO vo) {
		contactDao.create(vo);
	}

	@Override
	public ContactVO read(int bno) {
		return contactDao.read(bno);
	}

	@Override
	public void update(ContactVO vo) {
		contactDao.update(vo);
	}

	@Override
	public void delete(int bno) {
		contactDao.delete(bno);
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession session) {
		long update_time = 0;

		// 세션에 저장된 조회시간 검색
		if (session.getAttribute("update_time_" + bno) != null) { // 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문 실행 X
			update_time = (Long) session.getAttribute("update_time_" + bno);
		}

		// 시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();

		// 일정시간이 경과 후 조회수 증가 처리
		// 시스템현재시간 - 열람시간 > 일정시간
		if (current_time - update_time > 60 * 1000) { // 60초
			contactDao.increaseViewcnt(bno);

			// 세션에 시간을 저장
			// "update_time_"+bno는 다른 변수와 중복되지 않기 위해서
			session.setAttribute("update_time_" + bno, current_time);
		}
	}
/*
	@Override
	public List<ContactVO> listAll() {
		return contactDao.listAll();
	}

	@Override
	public List<ContactVO> listAll(String searchOption, String keyword) {
		return contactDao.listAll(searchOption, keyword);
	}
*/
	@Override
	public List<ContactVO> listAll(String searchOption, String keyword, Criteria cri) {
		System.out.println(searchOption);
		System.out.println(keyword);
		return contactDao.listAll(searchOption, keyword, cri);
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		return contactDao.countArticle(searchOption, keyword);
	}

}
