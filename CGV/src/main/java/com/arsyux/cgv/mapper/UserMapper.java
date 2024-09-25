package com.arsyux.cgv.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.arsyux.cgv.domain.UserVO;

@Mapper
public interface UserMapper {
	
	// 회원가입
	@Insert("INSERT INTO tb_user("
		  + "id, password, name, birth, phone, email, "
		  + "marketing_email, marketing_sms, marketing_phone, "
		  + "agree_promotion, agree_stamp) "
		  + "VALUES(#{id}, #{password}, #{name}, #{birth}, #{phone}, #{email}, "
		  + "#{marketing_email}, #{marketing_sms}, #{marketing_phone}, "
		  + "#{agree_promotion}, #{agree_stamp})")
	public void joinUser(UserVO user);
	
	// 로그인
	@Select("SELECT * FROM tb_user WHERE id = #{id} AND password = #{password}")
	public UserVO loginUser(UserVO user);
	
	@Select("SELECT * FROM tb_user WHERE id = #{id}")
	public UserVO findById(String id);
	
	// 프로필 업데이트
	@Update("UPDATE tb_user "
			+ "SET profile=#{profile}, "
			+ "password = #{password}, "
			+ "email=#{email}, "
			+ "marketing_email=#{marketing_email}, "
			+ "marketing_sms=#{marketing_sms}, "
			+ "marketing_phone=#{marketing_phone}, "
			+ "agree_promotion=#{agree_promotion}, "
			+ "agree_stamp=#{agree_stamp}, "
			+ "change_password=NOW() "
			+ "WHERE user_pk = #{user_pk}")
	public void updateMyCGV(UserVO user);
}
