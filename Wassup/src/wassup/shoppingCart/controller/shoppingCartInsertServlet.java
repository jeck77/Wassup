package wassup.shoppingCart.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.vo.Buyer;
import wassup.shoppingCart.model.service.ShoppingCartService;
import wassup.shoppingCart.model.vo.ShoppingCart;

/**
 * Servlet implementation class shoppingCartInsertServlet
 */
@WebServlet("/shopping/cart")
public class shoppingCartInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shoppingCartInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		ShoppingCart cart = new ShoppingCart();
		HttpSession session = request.getSession();
		cart.setbCode(((Buyer)session.getAttribute("buyer")).getbCode());
		cart.setMenuName(request.getParameter("menuName"));
		cart.setMenuCode(Integer.parseInt(request.getParameter("menuCode")));
		cart.setsCode(request.getParameter("sCode"));
		cart.setPrice(Integer.parseInt(request.getParameter("price")));
		/*
		 * cart.setAmount(Integer.parseInt(request.getParameter("amount"))); int check =
		 * cart.getAmount(); System.out.println(check); if(cart.getAmount() > 1) { int
		 * result = new ShoppingCartService().shoppingCartUpdate(cart);
		 * System.out.println(cart); if(result>0){ request.setAttribute("cart",cart); //
		 * request.getRequestDispatcher("/WEB-INF/views/search/selectTruck.jsp").forward
		 * (request, response); } }else {
		 */
			int result = new ShoppingCartService().shoppingCartInsert(cart);
//			System.out.println(cart);
			if(result>0){
				request.setAttribute("cart",cart);
//				request.getRequestDispatcher("/WEB-INF/views/search/selectTruck.jsp").forward(request, response);
						}
						/* } */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
