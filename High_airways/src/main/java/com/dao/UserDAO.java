package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.User_detail;

public class UserDAO {
	
		private Connection conn;

		public UserDAO(Connection conn) {
			super();
			this.conn = conn;
		}
		
		public boolean adduser(User_detail u) {
			boolean f=false;
			 
			try {
				String sql="insert into user_detail(fname,lname,email,password,address,address2,city,state,zip,mobile,phone)values (?,?,?,?,?,?,?,?,?,?,?)";
				 PreparedStatement ps=conn.prepareStatement(sql);
				 ps.setString(1, u.getFname());
				 ps.setString(2,u.getLname());
				 ps.setString(3,u.getEmail());
				 ps.setString(4, u.getPassword());
				 ps.setString(5,u.getAddress());
				 ps.setString(6,u.getAddress2());
				 ps.setString(7, u.getCity());
				 ps.setString(8, u.getState());
				 ps.setInt(9,u.getZip());
				 ps.setString(10,u.getMobile_no());
				 ps.setString(11,u.getPhone_no());
				 
				 int i=ps.executeUpdate();
				 if(i==1) {
					 f=true;
				 }
				 else
					 f=false;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return f;
			
		}
		
		public  User_detail login(String email,String password) {
			User_detail u= new User_detail();
			 try {
				 String sql="select * from user_detail where email=? and password=?";
				  PreparedStatement ps = conn.prepareStatement(sql);
				  ps.setString(1,u.getEmail());
				  ps.setString(2, u.getPassword());
				  
				  ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					
					u.setFname(rs.getString(1));
					u.setLname(rs.getString(2));
					u.setEmail(rs.getString(3));
					u.setPassword(rs.getString(4));
					u.setAddress(rs.getString(5));
					u.setAddress2(rs.getString(6));
					u.setCity(rs.getString(7));
					u.setState(rs.getString(8));
					u.setZip(rs.getInt(9));
					u.setMobile_no(rs.getString(10));
					u.setPhone_no(rs.getString(11));
					u.setUser_id(rs.getInt(12));
					
					
					
				}
					  
				
				 
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			 return u;
		}
		
		
		public List<User_detail> getallcustomer(){
			List <User_detail> list = new ArrayList<User_detail>();
			User_detail u= null;
			
			try {
				String sql = "select * from user_detail";
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs= ps.executeQuery();
				while(rs.next()) {
					u=new User_detail();
					u.setUser_id(rs.getInt(1));
					u.setFname(rs.getString(2));
					u.setLname(rs.getString(3));
					u.setEmail(rs.getString(4));
					u.setMobile_no(rs.getString(5));
					u.setCity(rs.getString(6));
					u.setState(rs.getString(7));
					list.add(u);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
		
				
			}return list;
			
		}
		
		
		
	}

