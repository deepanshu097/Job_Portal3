package com.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User_detail;
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String address=req.getParameter("address");
		String address2=req.getParameter("address2");
		String city=req.getParameter("city");
		String state=req.getParameter("state");
		int zip=Integer.parseInt(req.getParameter("zip"));
		String mobile_no=req.getParameter("mobile_no");
		String phone_no=req.getParameter("phone_no");
		
		try {
			UserDAO dao=new UserDAO(DBConnect.getconn());
			HttpSession session=req.getSession();
			
			User_detail u = new User_detail(fname,lname,email,pass,address,address2,city,state,zip,mobile_no,phone_no);
			
			boolean f=dao.adduser(u);
			u.setFname(fname);
			u.setLname(lname);
			u.setEmail(email);
			u.setPassword(pass);
			u.setAddress(address);
			u.setAddress2(address2);
			u.setCity(city);
			u.setState(state);
			u.setZip(zip);
			u.setMobile_no(mobile_no);
			u.setPhone_no(phone_no);
			
			if(f) {
			req.setAttribute("msg", "sign up successfully");
			resp.sendRedirect("login.jsp");
			
			}
			else {
				req.setAttribute("msg", "something went wrong");
				resp.sendRedirect("signup.jsp");
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
	}



}