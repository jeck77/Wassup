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

import wassup.buyer.model.vo.Reply;
import wassup.buyer.model.vo.Review;
import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class ReviewListServlet
 */
@WebServlet("/seller/reviewList")
public class SellerReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerReviewListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		HttpSession session = request.getSession();
		String sCode = ((Seller)session.getAttribute("seller")).getsCode();
		ArrayList<Review> rList = new SellerService().selectreviewList(sCode);
		ArrayList<Reply> rplyList = new SellerService().selectReplyList();
		
		if(!rplyList.isEmpty()) {
			request.setAttribute("rplyList", rplyList);
		}
		
		if(!rList.isEmpty()) {
			request.setAttribute("rList", rList);
			request.getRequestDispatcher("/WEB-INF/views/customer/sellerReviewList.jsp").forward(request, response);
		}else {
			PrintWriter writer = response.getWriter(); writer.
			println("<script>alert('작성할 리뷰가 없습니다.'); history.back();</script>" );
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
