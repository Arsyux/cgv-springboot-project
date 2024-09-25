package com.arsyux.cgv.service;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arsyux.cgv.domain.MovieVO;
import com.arsyux.cgv.persistence.MovieDAO;

@Service
public class MovieService {

	@Autowired
	private MovieDAO movieDAO;
	
	// 영화 등록
	@Transactional
	public void insertMo(MovieVO movie) {
		movieDAO.insertMovie(movie);
	}
	
}
