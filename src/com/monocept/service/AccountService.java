package com.monocept.service;

import java.sql.SQLException;
import java.util.List;

import com.monocept.model.Account;
import com.monocept.model.Transaction;
import com.monocept.repositor.AccountRepository;

public class AccountService {
	private static AccountService instance = null;

	private AccountService() {

	}
	
	public static AccountService getInstance() {
		if (instance == null)
			instance = new AccountService();
		return instance;
	}

	public Account getAccount(String name) {
		AccountRepository repo = AccountRepository.getInstance();
		
		return repo.getAccount(name);
	}
	
	public void addAccount(Account account) {
		AccountRepository repo = AccountRepository.getInstance();
		
		try {
			repo.addAccount(account);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void addTransaction(Transaction transaction) {
		AccountRepository repo = AccountRepository.getInstance();
		
		try {
			repo.addTransaction(transaction);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Transaction> getTransactions(Account account){
		AccountRepository repo = AccountRepository.getInstance();
		
		try {
			return repo.getTransactions(account);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
