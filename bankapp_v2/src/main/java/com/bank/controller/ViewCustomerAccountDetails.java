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
import com.bank.service.BankCrudService;
import com.bank.service.impl.BankCrudServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class ViewCustomerAccountDetails
 */
 @WebServlet("/viewaccountdetails")
public class ViewCustomerAccountDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(ViewCustomerAccountDetails.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCustomerAccountDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BankCrudService bankCrudService = new BankCrudServiceImpl();
		HttpSession session = request.getSession(false);
		PrintWriter out=response.getWriter();
		Gson gson=new Gson();
		if (session == null) {

			out.print("<center><h1>Please Login First</h1></center>");
			out.print("<h4><a href='/bankapp_v2'>Click here to Login </a> ");
		}
		else {
			try {
				out.print(gson.toJson(bankCrudService.getAllCustomerAccountDetails()));
			} catch (BusinessException e) {
				log.error(e.getMessage());
			}
		}
	}
}


