package com.pst.sp.service;

import java.sql.SQLException;

import com.pst.sp.bo.UserBo;
import com.pst.sp.dao.UserDao;
import com.pst.sp.dao.UserDaoImpl;
import com.pst.sp.vo.UserVo;

public class UserService {
	
	private UserBo bo;
	private UserDao dao;
	
	public int registerNewUser(UserVo vo) throws SQLException{
		
		bo= new UserBo(
				vo.getRollNumber(),
				vo.getUserName(),
				vo.getPassword(),
				vo.getSetQuestion1(),
				vo.getSetQuestion2(),
				vo.getAns1(),
				vo.getAns2(),
		        vo.getUserName());
		dao= new UserDaoImpl();
		int i = dao.addUser(bo);
		return i;
				
	}

}
