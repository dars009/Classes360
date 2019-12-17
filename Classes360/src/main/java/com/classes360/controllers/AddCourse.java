package com.classes360.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes360.utils.ConnectionManager;

@WebServlet(value = "/addCourse")
public class AddCourse extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			Connection conn = ConnectionManager.getConnection();
			PreparedStatement ps= conn.prepareStatement("insert into fees(coursename,duration,feesamount) values (?,?,?)");
			ps.setString(1, req.getParameter("coursename"));
			ps.setString(2, req.getParameter("duration"));
			ps.setString(3, req.getParameter("feesamount"));
			int result=ps.executeUpdate();
			if(result > 0) {
				System.out.println("Course Update Sucessfully");
				RequestDispatcher rd = req.getRequestDispatcher("adminFees.jsp");
				rd.forward(req, resp);
			}else {
				System.out.println("Cours is not update !");
			}
			
		} catch (Exception e) {
			System.out.println("Error while execute query");
		}

	}
}
