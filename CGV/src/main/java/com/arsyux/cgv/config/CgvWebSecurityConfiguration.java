package com.arsyux.cgv.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import com.arsyux.cgv.security.UserDetailsServiceImpl;

// 시큐리티 설정 클래스
@Configuration
@EnableWebSecurity
public class CgvWebSecurityConfiguration extends WebSecurityConfigurerAdapter {

	// 기본적으로 사용하는 UserDetailsService에서 UserDetailsServiceImpl 객체를 이용하도록 수정
	@Autowired
	private UserDetailsServiceImpl userDetailsService;
		
	@Autowired
	private AuthenticationFailureHandler customFailureHandler;
	
	// 스프링 컨테이너가 PasswordEncoder를 생성할 수 있도록 @Bean 어노테이션 등록
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
		
	// 사용자가 입력한 username으로 User객체를 검색하고 password를 비교한다.
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// configure() 메소드에서 UserDetilsService 객체로 인증을 처리할 때 BCrytPassworEncoder를 이용하도록 추가한다.
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}
	
	// 시큐리티 권한 제어
	@Override
	protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests(requests -> requests
                .antMatchers(
                		"/webjars/**", "/js/**", "/images/**", "/images/**/**", "/videos/**",
                        "/css/**", "/font/**", "/summernote/**", "/bxslider/**", "/message/**", "/files/**",
                        "/", "/index", "/auth/**",  "/movies", "/special/**", "/ticket/**"
                        ).permitAll()
                .anyRequest().authenticated())
                .formLogin(login -> login
                        .loginPage("/auth/login").failureHandler(customFailureHandler)
                        .loginProcessingUrl("/auth/securitylogin"))
                .logout(logout -> logout
                        .logoutUrl("/auth/logout")
                        .logoutSuccessUrl("/"))
                .csrf(csrf -> csrf.disable());
	}
	
}
