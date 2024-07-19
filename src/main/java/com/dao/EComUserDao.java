package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.EComUserBean;

@Repository
public class EComUserDao {

	@Autowired
	JdbcTemplate stmt;

	public void insertUser(EComUserBean userBean) {
		stmt.update("insert into users(firstName,email,password,profilePicPath) values (?,?,?,?) ", userBean.getFirstName(),
				userBean.getEmail(), userBean.getPassword(),userBean.getProfilePicPath());
	}

	public EComUserBean authenticate(String email, String password) {

		try {

			EComUserBean userBean = stmt.queryForObject("select * from users where email = ? and password = ?",
					new BeanPropertyRowMapper<>(EComUserBean.class), new Object[] { email, password });

			return userBean;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;

	}
}