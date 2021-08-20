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
import com.bank.model.Bank;
import com.bank.service.BankLoginService;
import com.bank.service.impl.BankLoginServiceImpl;

/**
 * Servlet implementation class EmployeeLogin
 */
@WebServlet("/employeelogin")
public class EmployeeLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(EmployeeLogin.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Bank bank = new Bank();
		PrintWriter out=response.getWriter();
		BankLoginService bankLoginService = new BankLoginServiceImpl();
		bank.setEmpUsername(request.getParameter("empusername"));
		bank.setEmpPassword(request.getParameter("emppassword"));
		System.out.println(bank.getEmpUsername());
		System.out.println(bank.getEmpPassword());
		HttpSession session = request.getSession();
		RequestDispatcher requestDispatcher = null;
		try {
			if(bankLoginService.isValidEmployeeCredentials(bank)==true) {
				session.setAttribute("bank", bank.getEmpUsername());
			}else {
				response.sendRedirect("invalid.html");
			}
			response.sendRedirect("employeewelcomepage.jsp");
		} catch (BusinessException e) {
			log.error(e.getMessage());
			response.sendRedirect("invalid.html");
			out.print(e.getMessage());
		}
		
		
		
	}

}
