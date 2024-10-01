package com.arsyux.cgv.persistence;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arsyux.cgv.domain.MovieVO;
import com.arsyux.cgv.domain.ScreeningVO;
import com.arsyux.cgv.domain.TheaterVO;

@Repository
public class MovieDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 영화 등록
	public void insertMovie(MovieVO movie) {
		mybatis.insert("insertMovie", movie);
	}
	
	// 무비 차트 조회
	public List<MovieVO> getMovieChart() {
		return mybatis.selectList("getMovieChart");
	}
	
	// 무비 상세 조회
	public MovieVO getMovieDetail(int movie_pk) {
		return mybatis.selectOne("getMovieDetail", movie_pk);
	}
	
	// 영화관 추가
	public void insertTheater(TheaterVO theater) {
		mybatis.insert("insertTheater", theater);
	}
	
	// 영화관 조회
	public List<TheaterVO> getTheaterList() {
		return mybatis.selectList("getTheaterList");
	}
	
	// 상영 등록
	public void insertScreening(ScreeningVO screening) {
		mybatis.insert("insertScreening", screening);
	}
	
	// 상영 조회
	public List<ScreeningVO> getScreeningList(ScreeningVO screening) {
		return mybatis.selectList("getScreeningList", screening);
	}
	
}
