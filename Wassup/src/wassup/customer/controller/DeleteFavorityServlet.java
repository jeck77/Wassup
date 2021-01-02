package wassup.customer.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;

/**
 * Servlet implementation class DeleteFavorityServlet
 */
@WebServlet("/buyer/favorityDelete")
public class DeleteFavorityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteFavorityServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String userCode = ((Buyer)session.getAttribute("buyer")).getbCode();
		String truckName = request.getParameter("truckName");

		if(request.getParameter("ajax") != null) {
			int result = new BuyerService().deleteFavority(userCode, truckName);

		}else {
			int result = new BuyerService().deleteFavority(userCode, truckName);
			if(result>0) {
				response.sendRedirect("/buyer/favorityForm");
			} else {
				request.getRequestDispatcher("/WEB-INF/views/customer/memberError.html").forward(request, response);
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
