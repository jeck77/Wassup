package wassup.customer.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;
import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;


/**
 * Servlet implementation class SellerLoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String Id = request.getParameter("Id");
		String Pwd = request.getParameter("Pwd");
		String check = request.getParameter("check_log");
		
		if(check.equals("seller")){
			Seller seller = new SellerService().sellerSelectLogin(Id,Pwd);
			if(seller != null) {
				HttpSession session = request.getSession();
				session.setAttribute("seller",seller);
				response.sendRedirect("/");
			}else {
				PrintWriter writer = response.getWriter();
				writer.println("<script>alert('회원정보가 틀렸습니다.'); location.href='/login.jsp';</script>");
				writer.close();
			}
		}else if(check.equals("buyer")) {
			Buyer buyer = new BuyerService().buyerSelectLogin(Id,Pwd);
			if(buyer != null) {
				HttpSession session = request.getSession();
				session.setAttribute("buyer",buyer);
				request.getRequestDispatcher("/").forward(request, response);
			}else {
				PrintWriter writer = response.getWriter();
				writer.println("<script>alert('회원정보가 틀렸습니다.'); location.href='/login.jsp';</script>");
				writer.close();
			}
		}
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
