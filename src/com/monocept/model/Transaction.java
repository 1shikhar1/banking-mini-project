package com.monocept.model;

import java.sql.Timestamp;
import java.time.Instant;

public class Transaction {
	private String name;
	private double amount;
	private String type;
	private Timestamp time;
	
	public Transaction(String name, double amount, String type, Timestamp time) {
		this.name = name;
		this.amount = amount;
		this.type =type;
		this.time = time;
	}
	
	public String getName() {
		return name;
	}
	
	public double getAmount() {
		return amount;
	}
	
	public String getType() {
		return type;
	}
	
	public Timestamp getTime() {
		return time;
	}
}
