package com.arsyux.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.arsyux.cgv.domain.MovieVO;


@Mapper
public interface MovieMapper {
	
	// 영화 등록
	@Insert("INSERT INTO tb_movie("
		  + "movieMainImg, movieTopImg, movieTopBackgroundColor, movieMainVideo, "
		  + "title, en_title, director, actor, genre, info, detail, "
		  + "screening_date, end_date) "
		  + "VALUES("
		  + "#{movieMainImg}, #{movieTopImg}, #{movieTopBackgroundColor}, #{movieMainVideo}, "
		  + "#{title}, #{en_title}, #{director}, #{actor}, #{genre}, #{info}, #{detail}, "
		  + "#{screening_date}, #{end_date})")
	public void insertMovie(MovieVO movie);
	
	
	// 무비 차트 조회
	@Select("SELECT * FROM tb_movie ORDER BY ticketCount desc, movie_pk desc LIMIT 100")
	public List<MovieVO> getMovieChart();
	
}
