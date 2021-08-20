package com.bank.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bank.dao.BankDAO;
import com.bank.dao.impl.BankDAOImpl;
import com.bank.exception.BusinessException;
import com.bank.model.Account;
import com.bank.model.Bank;
import com.bank.model.Transaction;
import com.bank.service.BankSearchService;

public class BankSearchServiceImpl implements BankSearchService{
 BankDAO bankDAO = new BankDAOImpl();
	@Override
	public List<Bank> getCustomerDetailsByUsername(String username) throws BusinessException {
		Bank bank = null;
		List<Bank> customerList = new ArrayList<>();
		if(username!=null && username.length()>=0) {
			customerList = bankDAO.getCustomerDetailsByUsername(username);
		}
		return customerList;
	}

	@Override
	public List<Transaction> getTransactionDetailsByTid(int tid) throws BusinessException {
		
		return null;
	}

	@Override
	public Account getBalanceByUserName(String custUserName) throws BusinessException {
		Account account = null;
		if(custUserName != null && custUserName.length()>=0) {
			account = bankDAO.getBalanceByUserName(custUserName);
		}else {
			System.out.println("Im invalid from service");
		}
		return account;
	}

	@Override
	public List<Account> getAccountDetailsByUserName(String username) throws BusinessException {
		Account account = null;
		List<Account> customerList = new ArrayList<>();
		if(username!=null && username.length()>=0) {
			customerList = bankDAO.getAccountDetailsByUserName(username);
		}
		return customerList;
	}



}
