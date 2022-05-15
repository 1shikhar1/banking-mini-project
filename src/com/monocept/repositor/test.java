package com.monocept.repositor;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Instant;

import com.monocept.model.Account;
import com.monocept.model.Transaction;
import com.monocept.service.AccountService;

public class test {
	public static void main(String args[]) throws SQLException {
		
		AccountService s = AccountService.getInstance(); 
		
		
		System.out.println(s.findAccount("Rohan"));

//		s.addTransaction(new Transaction("Rohan",208000,"Deposite",Timestamp.from(Instant.now())));

//		s.addAccount(account);
//		for(Transaction t: repo.getTransactions(account))
//			System.out.println("Name: "+t.getName()+"\t amount: "+t.getAmount()+"\t type: "+t.getType()+"\t time: "+t.getTime());
	}
}
