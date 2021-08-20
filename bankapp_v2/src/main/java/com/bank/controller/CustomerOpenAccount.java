package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.exception.BusinessException;
import com.bank.model.Bank;
import com.bank.service.BankCrudService;
import com.bank.service.impl.BankCrudServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class CustomerOpenAccount
 */
@WebServlet("/customeropenaccount")
public class CustomerOpenAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BankCrudService bankCrudService = new BankCrudServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerOpenAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//HttpSession session = request.getSession(false);
		
//		if(session == null) {
//			response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.print("<center><h1>You Must Login First</h1></center>");
//		out.print("<h4><a href='/bankapp_v2/login'>Click here to HOME PAGE </a> ");
//		}
//		else {
			Gson gson = new Gson();
			Bank bank = gson.fromJson(request.getReader(),Bank.class);
			try {
				bank = bankCrudService.openCustomerAccount(bank);
				//System.out.println(bank);
				response.setContentType("application/json;charset=UTF-8");
				PrintWriter out=response.getWriter();
				out.print(gson.toJson(bank)); //POJO TO JSON
				response.sendRedirect("login.html");
			} catch (BusinessException e) {
				System.out.println(e.getMessage());
			}
			
//			session.setAttribute("user", user);
//			response.sendRedirect("three.html");
	}
	}
//}

//}
