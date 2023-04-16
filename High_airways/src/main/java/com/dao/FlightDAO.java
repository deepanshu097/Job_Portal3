package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.entity.Flight;
import java.util.ArrayList;
import java.util.List;

public class FlightDAO {
	private Connection conn;

	public FlightDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addflight(Flight p){
	boolean b=false;
	
	String sql = "insert into flights(initial,final,date,arrival,departure,terminal,busi_fare,eco_fare,status) value(?,?,?,?,?,?,?,?,?)";
	try {
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, p.getFrom());
		ps.setString(2, p.getTo());
		ps.setString(3,p.getDate());
		ps.setString(4,p.getArrival());
		ps.setString(5,p.getDeparture());
		ps.setString(6, p.getTerminal());
		ps.setDouble(7, p.getBusifare());
		ps.setDouble(8, p.getEcofare());
		ps.setString(9, p.getStatus());
		
		int i = ps.executeUpdate();
		if(i==1) {
			b=true;
		}
		else {
			b=false;
		}
		
	}catch(Exception e) {
	e.printStackTrace();
	}
	
		return b;
	}
	
	public List<Flight> getallflight(){
		List<Flight> list= new ArrayList<Flight>();
		Flight f= null;
		String sql = "select * from flights";
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
		
			while(rs.next()) {
				f=new Flight();
				f.setFlight_id(rs.getInt(1));
				f.setFrom(rs.getString(2));
				f.setTo(rs.getString(3));
				f.setDate(rs.getString(4));
				f.setArrival(rs.getString(5));
				f.setDeparture(rs.getString(6));
				f.setTerminal(rs.getString(7));
				f.setBusifare(rs.getDouble(8));
				f.setEcofare(rs.getDouble(9));
				f.setStatus(rs.getString(10));
				list.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public Flight getFlightById(int id) {
		Flight f=null;
		try {
		f=new Flight();
			String sql = "select * from flights where flight_id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			f.setFrom(rs.getString(1));
			f.setTo(rs.getString(2));
			f.setDate(rs.getString(3));
			f.setArrival(rs.getString(4));
			f.setDeparture(rs.getString(5));
			f.setTerminal(rs.getString(6));
			f.setBusifare(rs.getDouble(7));
			f.setEcofare(rs.getDouble(8));
			f.setStatus(rs.getString(9));
		}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}

}
