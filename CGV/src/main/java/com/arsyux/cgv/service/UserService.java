package com.arsyux.cgv.service;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.arsyux.cgv.domain.UserVO;
import com.arsyux.cgv.persistence.UserDAO;

@Service
public class UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	// 회원가입
	@Transactional
	public void joinUser(UserVO user) {
		// 비밀번호 암호화
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		// 회원 정보 저장
		userDAO.joinUser(user);
	}
	
	// 로그인
	public UserVO loginUser(UserVO user) {
		return userDAO.loginUser(user);
	}
	
	// id로 회원 검색
	public UserVO findById(String user) {
		return  userDAO.findById(user);
	}
	
	
}
