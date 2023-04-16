package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Applicant;

public class ApplicantDAO {

	private Connection conn;

	public ApplicantDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	
	
public boolean jobapplicant(Applicant a) {
	boolean f=false;
	
	try {
		String sql="insert into applicants(name,post_applied,qualification,contact_no,email,job_id) value(?,?,?,?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);
		p.setString(1,a.getName());
		p.setString(2, a.getPost_applied());
		p.setString(3, a.getQualification());
		p.setString(4,a.getContact_no());
		p.setString(5, a.getEmail());
		p.setInt(6, a.getJob_id());
		
		int e= p.executeUpdate();
		if(e==1) {
			f=true;
		}else
			f=false;
		
				
	}catch(Exception e) {
		e.printStackTrace();
	}
	return f;
}
	
//viewing all Applicants 
	public List <Applicant> getallApplicants(){
		List <Applicant> list = new ArrayList<Applicant>();
		Applicant a = null ;
		
		
		try {
			String sql = "select * from applicants ";
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				a= new Applicant();
				a.setId(rs.getInt(1));
				a.setName(rs.getString(2));
				a.setPost_applied(rs.getString(3));
				a.setQualification(rs.getString(4));
				a.setContact_no(rs.getString(5));
				a.setEmail(rs.getString(6));
				a.setJob_id(rs.getInt(7));
				list.add(a);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}
	
}
