package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import com.DB.DBConnect;
import com.dao.FlightDAO;
import com.entity.Flight;

@WebServlet("/post_flight")
public class Post_flightServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		String from=req.getParameter("from");
		String to=req.getParameter("to");
		String date = req.getParameter("date");
		String arrival=req.getParameter("arrival");
		String departure=req.getParameter("departure");
	    
	    double busifare=Double.parseDouble(req.getParameter("busifare"));
		double ecofare=Double.parseDouble(req.getParameter("ecofare"));
		String terminal=req.getParameter("terminal");
		String status = req.getParameter("status");
		
		
			Flight p = new Flight(from,to,date,arrival,departure,terminal,busifare,ecofare,status);
			FlightDAO dao=new FlightDAO(DBConnect.getconn());
			HttpSession session=req.getSession();
			boolean b=dao.addflight(p);
			
		if(b==true) {
				session.setAttribute("msg", "flight posted successfully");
				resp.sendRedirect("post_flight.jsp");
			}
			else {
				session.setAttribute("msg", "something went wrong");
				resp.sendRedirect("post_flight.jsp");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
