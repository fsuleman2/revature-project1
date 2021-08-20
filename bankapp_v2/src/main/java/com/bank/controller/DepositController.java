package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.bank.exception.BusinessException;
import com.bank.model.Account;
import com.bank.model.Transaction;
import com.bank.service.BankCrudService;
import com.bank.service.BankLoginService;
import com.bank.service.BankSearchService;
import com.bank.service.impl.BankCrudServiceImpl;
import com.bank.service.impl.BankSearchServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class DepositController
 */
@WebServlet("/deposit")
public class DepositController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(BankCrudService.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepositController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		BankSearchService bankSearchService1 = new BankSearchServiceImpl();
		BankCrudService bankCrudService2 = new BankCrudServiceImpl();
		Transaction transaction1 = new Transaction();
		Account account6 = new Account();
		PrintWriter out = response.getWriter();
//		response.setContentType("text/html");
		response.setContentType("application/json;charset=UTF-8");
		Gson gson=new Gson();
		if (session == null) {

			out.print("<center><h1>Please Login First</h1></center>");
			out.print("<h4><a href='/bankapp_v2'>Click here to Login </a> ");
		}else {
			String custname=(String) session.getAttribute("customer");
			float amountDeposit1 = Float.parseFloat(request.getParameter("deposit"));
			try {
				account6 = bankSearchService1.getBalanceByUserName(custname);
				float openingBalance1 = account6.getOpeningbalance();
				String transType1 = "Deposit";
				float closingBalance1 = openingBalance1 + amountDeposit1;
				transaction1 = new Transaction(transType1, openingBalance1, amountDeposit1,
						closingBalance1,custname);
				transaction1 = bankCrudService2.depositAmount(transaction1);
				response.sendRedirect("viewstatements.jsp");
				//out.print("\nAmount " + amountDeposit1
						//+ " Successfully deposited into your Account with UserName  = " + custname);
				//out.print(transaction1);
				response.sendRedirect("viewstatements.jsp");
			} catch (BusinessException e) {
				
				log.info(e.getMessage());
			}
			out.print("<h1>Welcome " + session.getAttribute("customer") + " ..... You have logged in successfully at "
					+ new Date(session.getCreationTime()) + "</h1>");
			out.print(custname);
			out.print(gson.toJson(transaction1));
			
		}
		//String customerUserName1 = session.getAttribute("customer");
	}

}
