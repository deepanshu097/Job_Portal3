package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;


@WebServlet("/signin")
public class Signin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		try {
			 String email=req.getParameter("email");
			 String pass = req.getParameter("password");
			 User u = new User();
			 HttpSession session= req.getSession();
			 
			 if("deep23@gmail.com" .equals(email) && "deep23" .equals(pass)) {
				 session.setAttribute("userobj", u);
				 session.setAttribute("msg", "loggedin succesfully");
				 u.setRole("admin");
				 resp.sendRedirect("admin.jsp");
			 }
			 
			 else {
				UserDAO dao=new UserDAO(DBConnect.getConn());
				u=dao.signin(email, pass);
				if(u!=null) {
					session.setAttribute("userobj", u);
					 u.setRole("user");
					
					 
					 session.setAttribute("msg", "loggedin succesfully");
					resp.sendRedirect("index.jsp");
				}
				else {
					session.setAttribute("msg", "email or password doesnot match");
					resp.sendRedirect("signin.jsp");
				}
			 }
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
