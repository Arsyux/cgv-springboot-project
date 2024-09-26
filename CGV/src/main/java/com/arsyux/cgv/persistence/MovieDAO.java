package com.arsyux.cgv.persistence;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arsyux.cgv.domain.MovieVO;

@Repository
public class MovieDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 영화 등록
	public void insertMovie(MovieVO movie) {
		mybatis.insert("insertMovie", movie);
	}

}