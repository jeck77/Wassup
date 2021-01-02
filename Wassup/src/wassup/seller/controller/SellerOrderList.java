package wassup.seller.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.vo.Order;
import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class SellerOrderList
 */
@WebServlet("/seller/list/order")
public class SellerOrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SellerOrderList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8"); 

		HttpSession session = request.getSession();
		Seller seller = (Seller) session.getAttribute("seller");

		String status = request.getParameter("status");
		System.out.println(status);
		
		if(status == null) {
			status = "null";
		}
		ArrayList<Order> oList = new SellerService().sellerOrderList(seller.getsCode(),status);
		if(status.equals("null")) {
			if(!oList.isEmpty()) {
				request.setAttribute("select", status);
				request.setAttribute("oList", oList);
			}
			request.getRequestDispatcher("/WEB-INF/views/customer/sellerOrderList.jsp").forward(request, response);
		}else {
			
			if(!oList.isEmpty()) {
			request.setAttribute("select", status);
			request.setAttribute("oList", oList);
			request.getRequestDispatcher("/WEB-INF/views/customer/sellerOrderList.jsp").forward(request, response);
			}else {
			PrintWriter writer = response.getWriter(); writer.
			println("<script>alert('들어온 주문 내역이 없습니다.'); history.back();</script>" );
			writer.close(); 
			}
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
