package wassup.seller.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Review;
import wassup.seller.model.service.SellerService;

/**
 * Servlet implementation class SellerReviewWriteFormServlet
 */
@WebServlet("/seller/replyWrite")
public class SellerReviewWriteFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerReviewWriteFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reviewCode = Integer.parseInt(request.getParameter("reviewCode"));
		Review review = new SellerService().selectReviewOne(reviewCode);
		String receiptCode = request.getParameter("orderCode");
		ArrayList<Order> oList = new SellerService().sellerOrderOne(receiptCode);
		if(oList != null) {
			request.setAttribute("oList", oList);
		}
		if(review != null) {
			request.setAttribute("review", review);
			request.getRequestDispatcher("/WEB-INF/views/customer/sellerReplyWriteForm.jsp").forward(request, response);
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
