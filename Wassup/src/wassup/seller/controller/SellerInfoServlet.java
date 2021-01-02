package wassup.seller.controller;

import java.io.IOException;
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
 * Servlet implementation class SellerInfoServlet
 */
@WebServlet("/seller/info")
public class SellerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String userId = ((Seller)session.getAttribute("seller")).getsId();
		System.out.println(userId);
		Seller seller = new SellerService().selectOne(userId);

		if(seller != null) {
			request.setAttribute("seller", seller);
			request.getRequestDispatcher("/WEB-INF/views/customer/sellerUpdate.jsp").forward(request, response);
		} else {
			response.sendRedirect("/WEB-INF/views/customer/memberError.html");
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
