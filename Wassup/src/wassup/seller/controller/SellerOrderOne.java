package wassup.seller.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.buyer.model.vo.Order;
import wassup.seller.model.service.SellerService;

/**
 * Servlet implementation class SellerOrderOne
 */
@WebServlet("/seller/order")
public class SellerOrderOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerOrderOne() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String receiptCode = request.getParameter("receiptCode");
		ArrayList<Order> oList = new SellerService().sellerOrderOne(receiptCode);
				if(!oList.isEmpty()) {
					request.setAttribute("oList", oList);
					request.getRequestDispatcher("/WEB-INF/views/customer/sellerOrderOne.jsp").forward(request, response);
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
