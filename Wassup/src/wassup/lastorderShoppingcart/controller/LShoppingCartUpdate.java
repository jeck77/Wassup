package wassup.lastorderShoppingcart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.vo.Buyer;
import wassup.lastorderShoppingcart.model.service.LastorderShoppingcartService;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;
import wassup.shoppingCart.model.service.ShoppingCartService;
import wassup.shoppingCart.model.vo.ShoppingCart;

/**
 * Servlet implementation class LShoppingCartUpdate
 */
@WebServlet("/LShopping/Update")
public class LShoppingCartUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LShoppingCartUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		LastorderShoppingcart order = new LastorderShoppingcart();
		HttpSession session = request.getSession();
		String bCode = (((Buyer)session.getAttribute("buyer")).getbCode());
		order.setbCode(bCode);
		order.setAmount(Integer.parseInt(request.getParameter("amount")));
		order.setLastorderCode(Integer.parseInt(request.getParameter("lastorderCode")));
		int result = new LastorderShoppingcartService().LshoppingCartUpdate(order);
		if(result>0){
			request.setAttribute("order",order);
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
