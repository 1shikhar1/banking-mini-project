package com.monocept.repositor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import com.monocept.model.Account;
import com.monocept.model.Transaction;
import com.monocept.service.AccountService;
import com.mysql.cj.xdevapi.Statement;

public class AccountRepository {
	private static AccountRepository instance = null;
	
	private AccountRepository() {
		
	}
	
	public static AccountRepository getInstance() {
		if (instance == null)
			instance = new AccountRepository();
		return instance;
	}
	
	public Connection connectDB() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?" + "user=root&password=root");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		return conn;
	}
	
	public Account getAccount(String name) {
		
		return null;
	}
	
	public void addAccount(Account account) throws SQLException {
	    Connection conn = null;
	    conn = connectDB();
	    
	    
	    String query = "INSERT INTO accounts values(\""+account.getName()+"\","+account.getBalance()+",\""+account.getPassword()+"\");";
	    
	    
	    System.out.println(query);
	    
	    PreparedStatement p = conn.prepareStatement(query);
	    System.out.println("no of rows: "+p.executeUpdate());
	 
		conn.close();
	}
	
	public void addTransaction(Transaction transaction) throws SQLException {
	    Connection conn = null;
	    conn = connectDB();
	    
	    
	    String query = "INSERT INTO transactions values(\""+transaction.getName()+"\","+transaction.getAmount()+",\""+transaction.getType()+"\",\""+transaction.getTime()+"\")";
	    
	    
	    System.out.println(query);
	    
	    PreparedStatement p = conn.prepareStatement(query);
	    System.out.println("no of rows: "+p.executeUpdate());
	 
		conn.close();
	}
	
	public List<Transaction> getTransactions(Account account) throws SQLException{
		List<Transaction> transactions = new ArrayList<>();
		
	    Connection conn = null;
	    conn = connectDB();
	    
	    String sql = "select * from transactions where name=\""+account.getName()+"\"";
	    System.out.println(sql);
	    PreparedStatement p = conn.prepareStatement(sql);
	    ResultSet rs = p.executeQuery();
	    
	    while (rs.next()) {

            String name = rs.getString("name");
            double amount = rs.getDouble("amount");
            String type = rs.getString("type");
            Timestamp time = Timestamp.valueOf(rs.getString("time"));
            
            transactions.add(new Transaction(name,amount,type,time));
	    }
	    return transactions;
	}
}
