package com.entity;

public class Applicant {
	private int id;
	private String name;
	private String post_applied;
	private String qualification;
	private  String contact_no;
	private String email;
	private int job_id;
	
	
	public Applicant() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Applicant(String name, String post_applied, String qualification, String contact_no, String email,int job_id) {
		super();
		this.name = name;
		this.post_applied = post_applied;
		this.qualification = qualification;
		this.contact_no = contact_no;
		this.email = email;
		this.job_id= job_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPost_applied() {
		return post_applied;
	}
	public void setPost_applied(String post_applied) {
		this.post_applied = post_applied;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	
}
