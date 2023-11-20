package com.example.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project.dao.ProductDAO;
import com.example.project.vo.ProductVO;

@Service // bean 등록
public class ProductServiceImpl implements ProductService {

	@Inject
	private ProductDAO productDao;

	@Override
	public List<ProductVO> listAll(String searchOption, String keyword) {
		return productDao.listAll(searchOption, keyword);
	}

	@Override
	public int countArticle(String searchOption, String keyword) {
		return productDao.countArticle(searchOption, keyword);
	}

	@Override
	public ProductVO read(int bno) {
		return productDao.read(bno);
	}

}
