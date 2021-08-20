package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.bank.exception.BusinessException;
import com.bank.main.BankMain;
import com.bank.model.Customer;
import com.bank.service.BankLoginService;
import com.bank.service.impl.BankLoginServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class CustomerLogin
 */
@WebServlet("/customerlogin")
public class CustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(BankLoginService.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = new Customer();
		PrintWriter out=response.getWriter();
		BankLoginService bankLoginService = new BankLoginServiceImpl();
		customer.setCustUserName(request.getParameter("username"));
		customer.setCustPassword(request.getParameter("password"));
		HttpSession session=request.getSession();
		RequestDispatcher requestDispatcher = null;
		try {
			if(bankLoginService.isValidCustomerCredentials(customer)) {
				
				session.setAttribute("customer", customer.getCustUserName());
				response.sendRedirect("customerwelcomepage.jsp");
			}
			else {
				response.sendRedirect("invalid.html");
				Gson gson=new Gson();
				response.setContentType("application/json;charset=UTF-8");
				out.print(gson.toJson(customer.getCustUserName()));
			}
		} catch (BusinessException e) {
			
			requestDispatcher=request.getRequestDispatcher("login.html");
			requestDispatcher.include(request, response);
			out.print("<center><span style='color:red;'>"+e.getMessage()+"</span></center>");
			log.info(e.getMessage());
		}

}
}
