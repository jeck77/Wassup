package wassup.customer.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.ShoppingCart;
import wassup.coupon.model.vo.Coupon;

/**
 * Servlet implementation class CartBringServlet
 */
@WebServlet("/buyer/orderForm")
public class CartBringServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartBringServlet() {
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
		ArrayList<ShoppingCart> cart  = new BuyerService().bringCart(userCode);
		int total = new BuyerService().bringTotal(userCode);
		ArrayList<Coupon> coupon = new BuyerService().bringCoupon(userCode);
		String truckName = request.getParameter("truckName");
		request.setAttribute("truckName", truckName);
		if(cart != null) {
			request.setAttribute("cart", cart);
			request.setAttribute("total", total);
			request.setAttribute("coupon", coupon);
			request.getRequestDispatcher("/WEB-INF/views/customer/payment.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/customer/memberError.html").forward(request, response);
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
