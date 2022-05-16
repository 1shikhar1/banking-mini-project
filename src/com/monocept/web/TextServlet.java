package com.monocept.web;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monocept.model.Account;
import com.monocept.model.Transaction;
import com.monocept.service.AccountService;

@WebServlet("/csv")
public class TextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TextServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("user");
		
		AccountService service = AccountService.getInstance();
		
		List<Transaction> transactions = service.getTransactions(account.getName());
		
		String trans ="";
		
		for(Transaction trn: transactions){
			trans += trn.getName()+","+trn.getAmount()+","+trn.getType()+","+trn.getTime()+"\n";
		}
		
        response.setHeader("Content-Disposition", "attachment; filename=\"transactions.csv\"");
        try {
            OutputStream outputStream = response.getOutputStream();
//            String outputResult = "This is Test";
            outputStream.write(trans.getBytes());
            outputStream.flush();
            outputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        response.sendRedirect("passbook");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
