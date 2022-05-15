package com.monocept.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monocept.model.Account;
import com.monocept.service.AccountService;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view=request.getRequestDispatcher("login.jsp");
		view.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		String userName=request.getParameter("userName");
		String pass=request.getParameter("pass");
		
		AccountService service = AccountService.getInstance();
		
		Account account = service.findAccount(userName);
		
		System.out.println("Pass: "+pass);
		System.out.println("Pass2: "+account.getPassword());
		
		
		if (account!=null && account.getPassword().equals(pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", account);
			response.sendRedirect("dashboard");
		} else {
			RequestDispatcher view = request.getRequestDispatcher("login.jsp");
			view.forward(request, response);
		}
	}

}
