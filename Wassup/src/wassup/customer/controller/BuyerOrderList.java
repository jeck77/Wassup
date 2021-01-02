package wassup.customer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.Order;

/**
 * Servlet implementation class BuyerOrderList
 */
@WebServlet("/buyer/list/order")
public class BuyerOrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerOrderList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Buyer buyer = (Buyer) session.getAttribute("buyer");
		response.setContentType("text/html; charset=UTF-8"); 
		
		
		ArrayList<Order> oList = new BuyerService().selectOrderList(buyer.getbId());  
		if(oList != null) {
			request.setAttribute("oList", oList);
			request.getRequestDispatcher("/WEB-INF/views/customer/buyerOrderList.jsp").forward(request, response);
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('구매 내역이 없습니다.'); location.href='/';</script>");
			writer.close();
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
