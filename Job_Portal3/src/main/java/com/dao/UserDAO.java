package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	
	public boolean adduser(User u) {
		boolean f = false ;
		
		try {
			String sql="insert into user(name,username,qualification,email,password,role) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getUsername());
			ps.setString(3,u.getQualification());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			ps.setString(6, u.getRole());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	

public User signin(String email,String password) {
	
	User u = new User();
	try {
		String sql="select * from user where email=? and password=?" ;
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, u.getEmail());
		ps.setString(2, u.getPassword());
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			 u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setUsername( rs.getString(3));
				u.setQualification(rs.getString(4));
				u.setEmail( rs.getString(5));
				u.setPassword( rs.getString(6));
				u.setRole(rs.getString(7));
		}
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	return u;
	
}


}
