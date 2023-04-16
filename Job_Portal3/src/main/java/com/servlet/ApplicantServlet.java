package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.ApplicantDAO;
import com.entity.Applicant;

@WebServlet("/applyjob")
public class ApplicantServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name=req.getParameter("name");
		String post_applied=req.getParameter("post_applied");
		String qualification=req.getParameter("qualification");
		String contact_no=req.getParameter("contact_no");
		String email=req.getParameter("email");
		int job_id = Integer.parseInt(req.getParameter("job_id"));
		
		Applicant u= new Applicant();
		u.setName(name);
		u.setPost_applied(post_applied);
		u.setQualification(qualification);
		u.setContact_no(contact_no);
		u.setEmail(email);
		u.setJob_id(job_id);
		
		HttpSession session = req.getSession();
		ApplicantDAO dao = new ApplicantDAO(DBConnect.getConn());
		boolean f= dao.jobapplicant(u);
		try {
			
			if(f=true) {
				resp.sendRedirect("index.jsp");
				session.setAttribute("msg", "job applied successfully");
			}
			else {
				resp.sendRedirect("apply.jsp");
				session.setAttribute("msg", "something went wrong");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
