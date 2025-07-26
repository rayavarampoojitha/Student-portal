package com.pst.sp.dao;

import java.sql.SQLException;

import com.pst.sp.bo.UserBo;

public interface UserDao {
	
	public int addUser(UserBo bo) throws SQLException;

}
