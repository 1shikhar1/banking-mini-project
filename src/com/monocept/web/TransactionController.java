package com.monocept.web;

import java.awt.Checkbox;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monocept.model.Account;

@WebServlet("/transaction")
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TransactionController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("transaction.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		double amount=Double.valueOf(request.getParameter("amount"));
		String type=request.getParameter("myCheckbox");
		
		System.out.println(amount+"   "+type);
		
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("user");
		
		if(type.equals("withdraw")) {
			account.withdraw(amount);
		}
		else {
			account.deposite(amount);
		}
		
		response.sendRedirect("dashboard");
	}

}
