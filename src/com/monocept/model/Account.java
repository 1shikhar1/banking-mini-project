package com.monocept.model;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import com.monocept.service.AccountService;

public class Account {
	private static final int minBalance = 500;
	
	private String name;
	private double balance;
	private String password;
	
	public Account(String name, double balance, String password) {
		this.name = name;
		this.balance = balance;
		this.password = password;
	}
	
	public String getName() {
		return name;
	}
	
	public double getBalance() {
		return balance;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void deposite(double amount) {
		AccountService service = AccountService.getInstance();
		
		service.addTransaction(new Transaction(name,amount,"Deposite", Timestamp.from(Instant.now())));
		balance += amount;
	}

	public void withdraw(double amount) {
		if ((balance - amount) >= minBalance) {
			AccountService service = AccountService.getInstance();
			service.addTransaction(new Transaction(name, amount, "Withdraw", Timestamp.from(Instant.now())));
			balance -= amount;
		}
			
	}
}
