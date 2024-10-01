package com.arsyux.cgv.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arsyux.cgv.domain.MovieVO;
import com.arsyux.cgv.domain.TheaterVO;
import com.arsyux.cgv.persistence.MovieDAO;

@Service
public class MovieService {

	@Autowired
	private MovieDAO movieDAO;
	
	// 영화 등록
	@Transactional
	public void insertMovie(MovieVO movie) {
		movieDAO.insertMovie(movie);
	}
	
	// 무비 차트 조회
	@Transactional
	public List<MovieVO> getMovieChart() {
		return movieDAO.getMovieChart();
	}
	
	// 무비 상세 조회
	@Transactional
	public MovieVO getMovieDetail(int movie_pk) {
		return movieDAO.getMovieDetail(movie_pk);
	}
	
	// 영화관 추가
	@Transactional
	public void insertTheater(TheaterVO theater) {
		movieDAO.insertTheater(theater);
	}
	
}
