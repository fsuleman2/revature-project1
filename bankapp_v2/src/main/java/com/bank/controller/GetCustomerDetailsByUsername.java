package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.bank.exception.BusinessException;
import com.bank.service.BankSearchService;
import com.bank.service.impl.BankSearchServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetCustomerDetailsByUsername
 */
@WebServlet("/getcustomerdetails")
public class GetCustomerDetailsByUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(GetCustomerDetailsByUsername.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCustomerDetailsByUsername() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson=new Gson();
		HttpSession session = request.getSession(false);
		//Account account=gson.fromJson(request.getReader(), Account.class); // JSON to POJO
		response.setContentType("application/json;charset=UTF-8");
		BankSearchService bankSearchService = new BankSearchServiceImpl();
		PrintWriter out=response.getWriter();
		if(session == null) {
			out.print("<center><h1>Please Login First</h1></center>");
			out.print("<h4><a href='/bankapp_v2'>Click here to Login </a> ");
		}
		else {
			try {
				out.print(gson.toJson(bankSearchService.getCustomerDetailsByUsername(request.getParameter("username"))));
			} catch (BusinessException e) {
				log.error(e.getMessage());
			}
		}
		
	}

}
