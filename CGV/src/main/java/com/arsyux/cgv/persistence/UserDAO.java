package com.arsyux.cgv.persistence;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.arsyux.cgv.domain.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 회원가입
	public void joinUser(UserVO user) {
		mybatis.insert("joinUser", user);
	}
	
	// 로그인
	public UserVO loginUser(UserVO user) {
		return mybatis.selectOne("loginUser", user);
	}
	
	public UserVO findById(String id) {
		return mybatis.selectOne("findById", id);
	}
	
}
