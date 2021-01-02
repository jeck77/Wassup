package wassup.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.Review;
import wassup.search.model.service.SearchService;
import wassup.search.model.vo.ReplyReview;
import wassup.search.model.vo.Seller;

/**
 * Servlet implementation class TruckSelectReview
 */
@WebServlet("/select/truckreview")
public class TruckSelectReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TruckSelectReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		String sCode = request.getParameter("sCode");
		ArrayList<ReplyReview> rList = new SearchService().truckReview(sCode);
		Seller search = new SearchService().TruckSelectOne(sCode);
		if(search != null) {
			request.setAttribute("search", search);
		}
		int grade = 0;
		grade =	new SearchService().sellerAvgGrade(sCode);
		request.setAttribute("grade", grade);
		HttpSession session = request.getSession();
		
		String bCode = ((Buyer)session.getAttribute("buyer")).getbCode();
		
		int flag = new SearchService().buyerFavorite(bCode,sCode);
		
		if(flag>0) {
			request.setAttribute("flag", flag);
		}
		
		if(!rList.isEmpty()) {
		request.setAttribute("rList", rList);
		request.getRequestDispatcher("/WEB-INF/views/search/truckReview.jsp").forward(request, response);
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('등록된 리뷰가 없습니다.'); history.back();</script>");
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
