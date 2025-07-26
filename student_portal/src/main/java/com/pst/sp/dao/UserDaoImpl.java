package com.pst.sp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.pst.sp.bo.UserBo;
import com.pst.sp.common.Constants;
import com.pst.sp.util.DatabaseConnection;

public class UserDaoImpl implements UserDao{
   
	Connection con = null;
	@Override
	public int addUser(UserBo bo)  {
		
		 con = DatabaseConnection.getDatabaseConnection();
		PreparedStatement ps = con.prepareStatement(Constants.INSERT_USER_QUERY);
		ps.setInt(1, bo.getRollNumber());
		ps.setString(2, bo.getUserName());
		ps.setString(3, bo.getPassword());
		ps.setString(4, bo.getSetQuestion1());
		ps.setString(5, bo.getAns1());
		ps.setString(6, bo.getSetQuestion2());
		ps.setString(7, bo.getAns2());
		ps.setString(9, bo.getCreatedBy());

		int i = ps.executeUpdate();
		return i;
		
	}
    protected void finalize() throws Throwable{
    	DatabaseConnection.closeConnection(con);
    }
}
