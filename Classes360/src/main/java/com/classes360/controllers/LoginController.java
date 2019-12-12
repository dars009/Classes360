package com.classes360.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.classes360.utils.ConnectionManager;

@WebServlet(value = "/login")
public class LoginController extends HttpServlet {

	private static final Logger logger = Logger.getLogger(LoginController.class);

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn;
		PreparedStatement pst;
		ResultSet rs;
		boolean status = false;

		String EMAIL = request.getParameter("email");
		String PASSWORD = request.getParameter("password");

		try {
			conn = ConnectionManager.getConnection();
			pst = conn.prepareStatement("select * from login where email=? and password=?");
			pst.setString(1, EMAIL);
			pst.setString(2, PASSWORD);
			rs = pst.executeQuery();
			status = rs.next();

			if (status) {
				try {
					HttpSession session = request.getSession();
					System.out.println(session.getId());
					if (!session.isNew()) {
						session.invalidate();
						session = request.getSession();
						session.setMaxInactiveInterval(0);
						System.out.println(session.getId());
					}

					try {
						conn = ConnectionManager.getConnection();
						String getid = "select userid,email from login where email = ?";
						PreparedStatement stmtp = conn.prepareStatement(getid);
						stmtp.setString(1, EMAIL);
						ResultSet res = stmtp.executeQuery();

						while (res.next()) {
							int userid = res.getInt("userid");
							String loginUser = res.getString("email");
							logger.info("User " + loginUser + " trying to login");
							session.setAttribute("usridInSession", userid);
							session.setAttribute("usremailInSession", loginUser);
						}

						RequestDispatcher rd = request.getRequestDispatcher("adminDeshboard.jsp");
						rd.forward(request, response);

					} catch (Exception e) {
						System.out.println(e);
						logger.debug(e.getMessage(), e);
					} finally {
						pst.close();
						conn.close();
						rs = null;
					}
				} catch (Exception e) {
					e.printStackTrace();
					logger.debug(e.getMessage(), e);
				}
			} else {
				request.setAttribute("ErrMasg", "Incorrect email and password combination");
				RequestDispatcher rd = request.getRequestDispatcher("c360Login.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		} 
	}
}
