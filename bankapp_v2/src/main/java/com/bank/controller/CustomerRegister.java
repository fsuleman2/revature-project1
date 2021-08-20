package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bank.exception.BusinessException;
import com.bank.model.Bank;
import com.bank.service.BankCrudService;
import com.bank.service.impl.BankCrudServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class CustomerRegister
 */
@WebServlet("/customerregister")
public class CustomerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BankCrudService bankCrudService = new BankCrudServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		PrintWriter out=response.getWriter();
		Bank bank = gson.fromJson(request.getReader(), Bank.class);
		try {
			bank = bankCrudService.registerCustomer(bank);
			response.setContentType("application/json;charset=UTF-8");
			Cookie c1 = new Cookie("username", bank.getCustUserName());
			System.out.println(c1.getName());
			System.out.println(bank.getCustUserName());
			out.print(gson.toJson(bank)); //POJO TO JSON
			//response.sendRedirect("openaccount.html");
		} catch (BusinessException e) {
			RequestDispatcher requestDispatcher = null;

			requestDispatcher=request.getRequestDispatcher("register.html");
			requestDispatcher.include(request, response);
			out.print("<center><span style='color:red;'>"+e.getMessage()+"</span></center>");
			out.print(e.getMessage());
			out.print("UserName "+bank.getCustUserName()+"Already Exist");
			response.sendRedirect("logout");
		}
		
	}

}
