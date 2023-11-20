package com.example.project.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.project.dao.ReviewDAO;
import com.example.project.vo.Criteria;
import com.example.project.vo.ReviewVO;

@Service // bean 등록
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewDAO reviewDao;

	@Override
	public void create(ReviewVO vo) {
		reviewDao.create(vo);
	}

	@Override
	public ReviewVO read(int bno) {
		return reviewDao.read(bno);
	}

	@Override
	public void update(ReviewVO vo) {
		reviewDao.update(vo);
	}

	@Override
	public void delete(int bno) {
		reviewDao.delete(bno);
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
			reviewDao.increaseViewcnt(bno);

			// 세션에 시간을 저장
			// "update_time_"+bno는 다른 변수와 중복되지 않기 위해서
			session.setAttribute("update_time_" + bno, current_time);
		}
	}

/*	@Override
	public List<ReviewVO> listAll() {
		return reviewDao.listAll();
	}

	@Override
	public List<ReviewVO> listAll(String searchOption, String keyword) {
		return reviewDao.listAll(searchOption, keyword);
	}*/

	@Override
	public List<ReviewVO> listAll(String searchOption, String keyword, Criteria cri) {
		return reviewDao.listAll(searchOption, keyword, cri);
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		return reviewDao.countArticle(searchOption, keyword);
	}

}
