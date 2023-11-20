package com.example.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.vo.ContactVO;
import com.example.project.vo.Criteria;

@Repository // bean 등록
public class ContactDAOImpl implements ContactDAO {

	@Inject // 주입
	private SqlSession sqlSession;

	@Override
	public void create(ContactVO vo) {
		sqlSession.insert("contact.insert", vo);
	}

	@Override
	public ContactVO read(int bno) {
		return sqlSession.selectOne("contact.view", bno);
	}

	@Override
	public void update(ContactVO vo) {
		sqlSession.update("contact.update", vo);
	}

	@Override
	public void delete(int bno) {
		sqlSession.delete("contact.delete", bno);
	}

	@Override
	public void increaseViewcnt(int bno) {
		sqlSession.update("contact.increaseViewcnt", bno);
	}
/*
	@Override
	public List<ContactVO> listAll() {
		return sqlSession.selectList("contact.listAll");
	}

	@Override
	public List<ContactVO> listAll(String searchOption, String keyword) {
		// 검색 옵션, 키워드 map에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectList("contact.listAll", map);
	}
*/
	@Override
	public List<ContactVO> listAll(String searchOption, String keyword, Criteria cri) {
		// 검색 옵션, 키워드 map에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("pageNum", cri.getPageNum()); // 페이지 번호
		map.put("amount", cri.getAmount()); // 페이지 목록(기본값 10)
		map.put("skip", cri.getSkip()); // 
		return sqlSession.selectList("contact.listAll", map);
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		// 검색 옵션, 키워드 map에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne("contact.countArticle", map);
	}

}
