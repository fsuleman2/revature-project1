package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CutomerLogout
 */
@WebServlet("/customerlogout")
public class CutomerLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CutomerLogout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		if (session == null) {

			out.print("<center><h1>Please Login First</h1></center>");
			out.print("<h4><a href='/bankapp_v2'>Click here to Login </a> ");
		} else {

			session.invalidate();
//			out.print("<h1>You have logged out  successfully at "
//					+ new Date() + "</h1>");
//			out.print("<center> <h1>You will be taken to home screen in 3 seconds....</h1></center>");
			response.setHeader("Refresh", "0;url='/bankapp_v2'");

			
		}
	}
}
