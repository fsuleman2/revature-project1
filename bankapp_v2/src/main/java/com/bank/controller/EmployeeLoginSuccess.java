package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmployeeLoginSuccess
 */
public class EmployeeLoginSuccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLoginSuccess() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		if (session == null) {
			out.print("<h1>Invalid Login Credentials</h1>");
			out.print("<br/>");
			out.print("<a href='login.html'>Click here </a> to go to login page");
			out.print("<center><h1>Please Login First</h1></center>");
			out.print("<h4><a href='/bankapp_v2'>Click here to Login </a> ");
		} else {

			out.print("<h1>Welcome " + session.getAttribute("empusername") + " ..... You have logged in successfully at "
					+ new Date(session.getCreationTime()) + "</h1>");
			response.sendRedirect("employeewelcomepage.html");
			out.print("<a href='logout'>Click Here to LOGOUT</a>");
		}
	}

}
