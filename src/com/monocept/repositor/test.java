package com.monocept.repositor;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Instant;

import com.monocept.model.Account;
import com.monocept.model.Transaction;
import com.monocept.service.AccountService;

public class test {
	public static void main(String args[]) throws SQLException {
		AccountRepository repo = AccountRepository.getInstance();
		AccountService s = AccountService.getInstance(); 
		
		Account account = new Account("Rohan",5000,"abcdef");

		s.addTransaction(new Transaction("Rohan",208000,"Deposite",Timestamp.from(Instant.now())));

		
		for(Transaction t: repo.getTransactions(account))
			System.out.println("Name: "+t.getName()+"\t amount: "+t.getAmount()+"\t type: "+t.getType()+"\t time: "+t.getTime());
	}
}
