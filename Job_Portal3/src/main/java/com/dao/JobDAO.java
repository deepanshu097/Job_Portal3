package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;

import com.entity.Jobs;



public class JobDAO {
	private Connection conn;


	public JobDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	// posting the job 
	
	public boolean addjob(Jobs j) {
		
		boolean f=false;
		
		try {
			String sql = "insert into jobs(description, title,location,category,status) value(?,?,?,?,?)";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1,j.getDescription());
			ps.setString(2,j.getTitle());
			ps.setString(3,j.getLocation());
			ps.setString(4, j.getCategory());
			ps.setString(5, j.getStatus());
			int p=ps.executeUpdate();
			if(p==1) {
				f=true;	
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	//  viewing all jobs  
	
	public List <Jobs> getAllJobs(){
		List<Jobs> list = new ArrayList<Jobs>();
		Jobs j=null;
		
		try {
			
			String sql = "select * from jobs order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setPdate(rs.getTimestamp(2)+"");
				j.setDescription(rs.getString(3));
				j.setTitle(rs.getString(4));
				j.setLocation(rs.getString(5));
				j.setCategory(rs.getString(6));
				j.setStatus(rs.getString(7));
				list.add(j);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
		
	}
	
	// accessing  the job by id  for editing 
	
	public Jobs getJobById(int id){
		Jobs j=null;
		
		try {
			
			String sql = "select * from jobs where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setPdate(rs.getTimestamp(2)+"");
				j.setDescription(rs.getString(3));
				j.setTitle(rs.getString(4));
				j.setLocation(rs.getString(5));
				j.setCategory(rs.getString(6));
				j.setStatus(rs.getString(7));
				
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return j;
	}
	
	// updating the job by id 
	
public boolean updatejobsById(Jobs j) {
		
		boolean f=false;
		
		try {
			String sql = "update jobs set description=?, title=?,location=?,category=?,status=?  where id=?" ;
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1,j.getDescription());
			ps.setString(2,j.getTitle());
			ps.setString(3,j.getLocation());
			ps.setString(4, j.getCategory());
			ps.setString(5, j.getStatus());
			ps.setInt(6, j.getId());
			int p=ps.executeUpdate();
			if(p==1) {
				f=true;	
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
// deleting the job by id 


public boolean deletejobsById(int id) {
	
	boolean f=false;
	
	try {
		String sql = "delete from jobs  where id=?" ;
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setInt(1, id);
		int p=ps.executeUpdate();
		if(p==1) {
			f=true;	
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

// all the active jobs 

public List <Jobs> getAllJobsforuser(){
	List<Jobs> list = new ArrayList<Jobs>();
	Jobs j=null;
	
	try {
		
		String sql = "select * from jobs where status=? order by id desc";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, "Active");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			j=new Jobs();
			j.setId(rs.getInt(1));
			j.setPdate(rs.getTimestamp(2)+"");
			j.setDescription(rs.getString(3));
			j.setTitle(rs.getString(4));
			j.setLocation(rs.getString(5));
			j.setCategory(rs.getString(6));
			j.setStatus(rs.getString(7));
			list.add(j);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;	
	
}


//all the active jobs by location and category
public List <Jobs> getAllJobsforuserbyloandcat(String location,String category){
	List<Jobs> list = new ArrayList<Jobs>();
	Jobs j=null;
	
	try {
		
		String sql = "select * from jobs where location=? and category=? order by id desc";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,location);
		ps.setString(2,category);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			 j=new Jobs();
			j.setId(rs.getInt(1));
			j.setPdate(rs.getTimestamp(2)+"");
			j.setDescription(rs.getString(3));
			j.setTitle(rs.getString(4));
			j.setLocation(rs.getString(5));
			j.setCategory(rs.getString(6));
			j.setStatus(rs.getString(7));
			list.add(j);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;	
	
}

//all the active jobs by location or category
public List <Jobs> getjobsbylocORcat(String location,String category){
	List<Jobs> list = new ArrayList<Jobs>();
	Jobs j=null;
	
	try {
		
		String sql = "select * from jobs where location=? or category=? order by id desc";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,location);
		ps.setString(2,category);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			 j=new Jobs();
			j.setId(rs.getInt(1));
			j.setPdate(rs.getTimestamp(2)+"");
			j.setDescription(rs.getString(3));
			j.setTitle(rs.getString(4));
			j.setLocation(rs.getString(5));
			j.setCategory(rs.getString(6));
			j.setStatus(rs.getString(7));
			list.add(j);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;	
	
	
}

}
