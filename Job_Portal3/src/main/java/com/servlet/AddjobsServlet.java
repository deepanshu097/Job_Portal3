package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;



@WebServlet("/add_jobs")
public class AddjobsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String title= req.getParameter("title");
			String location=req.getParameter("location");
			String category=req.getParameter("category");
			String status = req.getParameter("status");
			String description = req.getParameter("description");
			
			Jobs j = new Jobs();
			j.setTitle(title);
			j.setLocation(location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(description);
			
			HttpSession session = req.getSession();
			
			JobDAO dao = new JobDAO(DBConnect.getConn());
			boolean f= dao.addjob(j);
			if(f) {
				session.setAttribute("msg","job posted successfully");
				resp.sendRedirect("post_job.jsp");
			}else {
				session.setAttribute("msg","something went wrong");
				resp.sendRedirect("post_job.jsp");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
