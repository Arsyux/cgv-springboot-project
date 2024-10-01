package com.arsyux.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.arsyux.cgv.domain.MovieVO;
import com.arsyux.cgv.domain.ScreeningVO;
import com.arsyux.cgv.domain.TheaterVO;


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
	@Select("SELECT * FROM tb_movie ORDER BY ticketCount desc, movie_pk LIMIT 100")
	public List<MovieVO> getMovieChart();
	

	@Select("SELECT * FROM tb_movie WHERE movie_pk=#{movie_pk}")
	public MovieVO getMovieDetail(int movie_pk);
	
	// 영화관 등록
	@Insert("INSERT INTO tb_theater("
			  + "name, location, locationDetail) "
			  + "VALUES(#{name}, #{location}, #{locationDetail})")
	public void insertTheater(TheaterVO theater);
	
	// 영화관 조회
	@Select("SELECT * FROM tb_theater")
	public List<TheaterVO> getTheaterList();
	
	// 상영 등록
	@Insert("INSERT INTO tb_screening("
			  + "theater_pk, movie_pk, movieDateTime, seats) "
			  + "VALUES(#{theater_pk}, #{movie_pk}, #{movieDateTime}, #{seats})")
	public void insertScreening(ScreeningVO screening);
	
	// 상영 조회
	@Select("SELECT screening_pk, movieDateTime FROM tb_screening "
			+ "WHERE theater_pk=#{theater_pk} AND movie_pk=#{movie_pk} order by movieDateTime")
	public List<ScreeningVO> getScreeningList();
	
}
