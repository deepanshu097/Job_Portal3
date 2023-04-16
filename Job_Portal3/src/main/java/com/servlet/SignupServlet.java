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

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name = req.getParameter("name");
			String username = req.getParameter("username");
			String qualification = req.getParameter("qualification");
			String email = req.getParameter("email");
			String password = req.getParameter("pass");
			String role = "user";
			
			
			UserDAO dao = new UserDAO(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			
			User u = new User(name,username,qualification,email,password,role);
			boolean f= dao.adduser(u);
			
			u.setName(name);
			u.setUsername(username);
			u.setQualification(qualification);
			u.setEmail(email);
			u.setPassword(password);
			u.setRole(role);
			
			
			if(f) {
				if(f) {
					session.setAttribute("msg","signed up successfully");
					resp.sendRedirect("signin.jsp");
				}else {
					session.setAttribute("msg","something went wrong");
					resp.sendRedirect("signup.jsp");
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
