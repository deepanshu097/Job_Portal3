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
import com.entity.User_detail;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email=req.getParameter("email");
		String pass= req.getParameter("pass");
		
		try {
			UserDAO dao= new UserDAO(DBConnect.getconn());
			HttpSession session = req.getSession();
			
			 if("deep@gmail.com" .equals(email) && "deep12345" .equals(pass)) {
				 session.setAttribute("role", "admin");
				 resp.sendRedirect("admin.jsp");
			 }else {
			
			
			User_detail u = new User_detail();
			u= dao.login(email, pass);
			if(u!=null) {
				resp.sendRedirect("index.jsp");
				session.setAttribute("role", "user");
				session.setAttribute("msg","loggedin successfully");
			}
			else {
				session.setAttribute("msg","something went wrong");
			}
			 }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
