package com.entity;

public class Flight {
	private int flight_id;
	private String from;
	private String to;
	private String date;
	private String arrival;
	private String departure;
	private String terminal;
	private double busifare;
	private double ecofare;
	private String status;
	
	
	public Flight() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Flight(String from, String to,String date,String arrival,String departure ,String terminal, double busifare, double ecofare,String status ) {
		super();
		this.from = from;
		this.to = to;
		this.date = date;
		this.arrival=arrival;
		this.departure=departure;
		this.terminal = terminal;
		this.busifare = busifare;
		this.ecofare = ecofare;
		this.status = status;
	}


	public int getFlight_id() {
		return flight_id;
	}


	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}


	public String getFrom() {
		return from;
	}


	public void setFrom(String from) {
		this.from = from;
	}


	public String getTo() {
		return to;
	}


	public void setTo(String to) {
		this.to = to;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	public String getArrival() {
		return arrival;
	}


	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	
	public String getDeparture() {
		return departure;
	}


	public void setDeparture(String departure) {
		this.departure = departure;
	}


	public String getTerminal() {
		return terminal;
	}


	public void setTerminal(String terminal) {
		this.terminal = terminal;
	}


	public double getBusifare() {
		return busifare;
	}


	public void setBusifare(double busifare) {
		this.busifare = busifare;
	}


	public double getEcofare() {
		return ecofare;
	}


	public void setEcofare(double ecofare) {
		this.ecofare = ecofare;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
	
		
}
