package wassup.customer.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Order;

/**
 * Servlet implementation class BuyerReviewForm
 */
@WebServlet("/buyer/reviewWrite")
public class BuyerReviewForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerReviewForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String sCode = request.getParameter("sCode");
		int receiptCode = Integer.parseInt(request.getParameter("receiptCode"));
		ArrayList<Order> oList = new BuyerService().selectOrderOne(receiptCode);
		if(!oList.isEmpty()) {
		request.setAttribute("oList", oList);
		request.getRequestDispatcher("/WEB-INF/views/customer/buyerReviewWrite.jsp").forward(request, response);
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
