package com.monocept.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monocept.model.Account;
import com.monocept.service.AccountService;


@WebServlet("/create")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CreateController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view= request.getRequestDispatcher("create.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountService service = AccountService.getInstance();
		
		String userName=request.getParameter("userName");
		double bal=Double.valueOf(request.getParameter("bal"));
		String pass=request.getParameter("pass");
		
		Account account = new Account(userName,bal,pass);
		
		service.addAccount(account);
		
		response.sendRedirect("home");
	}

}
