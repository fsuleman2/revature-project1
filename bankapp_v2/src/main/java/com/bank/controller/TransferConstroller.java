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
import com.bank.model.Account;
import com.bank.model.Transaction;
import com.bank.model.Transfer;
import com.bank.service.BankCrudService;
import com.bank.service.BankSearchService;
import com.bank.service.impl.BankCrudServiceImpl;
import com.bank.service.impl.BankSearchServiceImpl;
import com.google.gson.Gson;

/**
 * Servlet implementation class TransferConstroller
 */
@WebServlet("/transfer")
public class TransferConstroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(TransferConstroller.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransferConstroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Transfer transfer = new Transfer();
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(false);
		transfer.setCreditorname(request.getParameter("creditorname"));
		System.out.println(transfer.getCreditorname());
		transfer.setTransferamount(Float.parseFloat(request.getParameter("transferamount")));
		System.out.println(transfer.getTransferamount());
		System.out.println(transfer);
		BankSearchService bankSearchServiceforTransfer = new BankSearchServiceImpl();
		BankCrudService bankCrudServiceforTransfer = new BankCrudServiceImpl();
		Transaction transaction = new Transaction();
		Account accountobj = new Account();
		String customerUserName=(String) session.getAttribute("customer");
		String creditorUsername = transfer.getCreditorname();
		float transferAmount = transfer.getTransferamount();
		try {
			accountobj =  bankSearchServiceforTransfer.getBalanceByUserName(customerUserName);
			float openingBalance9 = accountobj.getOpeningbalance();
			if(openingBalance9<transferAmount) {
				System.out.println("You have Insufficient Balance, Transfer Failed!!!");
			}
			else {
				String transType = "Debited";
				float closingBalance = Math.abs(openingBalance9 - transferAmount);
				transaction = new Transaction(transType, openingBalance9, transferAmount,
						closingBalance,customerUserName);
				transaction = bankCrudServiceforTransfer.withDrawAmount(transaction); //withdrawd
				accountobj = bankSearchServiceforTransfer.getBalanceByUserName(creditorUsername);
				float openingBalOfCreditor = accountobj.getOpeningbalance();
				String transTypeOfCreditor = "credited";
				float closingBalOfCreditor = Math.abs(transferAmount+openingBalOfCreditor);
				transaction = new Transaction(transTypeOfCreditor, openingBalOfCreditor, transferAmount,
						closingBalOfCreditor,creditorUsername);
				
				transaction = bankCrudServiceforTransfer.depositAmount(transaction);
				response.sendRedirect("viewstatements.jsp");
			}
		} catch (BusinessException e) {
			out.print(gson.toJson(e.getMessage()));
			out.print(e.getMessage()+" please Enter Correct UserName");
			log.error(e.getMessage());
		}
		
		
		
	}

}
