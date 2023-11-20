package com.example.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project.vo.ProductVO;

@Repository // bean 등록
public class ProductDAOImpl implements ProductDAO {

	@Inject // 주입
	private SqlSession sqlSession;
	
	@Override
	public List<ProductVO> listAll(String searchOption, String keyword) {
		// 검색 옵션, 키워드 map에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectList("product.listAll", map);
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		// 검색 옵션, 키워드 map에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne("product.countArticle", map);
	}

	@Override
	public ProductVO read(int bno) {
		return sqlSession.selectOne("product.view", bno);
	}

}
