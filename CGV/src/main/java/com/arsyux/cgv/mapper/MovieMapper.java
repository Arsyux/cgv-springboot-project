package com.arsyux.cgv.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.arsyux.cgv.domain.MovieVO;

@Mapper
public interface MovieMapper {
	
	// 영화 등록
	@Insert("INSERT INTO tb_movie("
		  + "id, password, name, birth, phone, email, "
		  + "marketing_email, marketing_sms, marketing_phone, "
		  + "agree_promotion, agree_stamp) "
		  + "VALUES(#{id}, #{password}, #{name}, #{birth}, #{phone}, #{email}, "
		  + "#{marketing_email}, #{marketing_sms}, #{marketing_phone}, "
		  + "#{agree_promotion}, #{agree_stamp})")
	public void insertMovie(MovieVO movie);
		
	
}
