package wassup.shoppingCart.controller;

import java.io.IOException;
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
 * Servlet implementation class shoppingCartDeleteServlet
 */
@WebServlet("/shopping/delete")
public class shoppingCartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shoppingCartDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ShoppingCart cart = new ShoppingCart();
		HttpSession session = request.getSession();
		cart.setbCode(((Buyer)session.getAttribute("buyer")).getbCode());
		cart.setMenuCode(Integer.parseInt(request.getParameter("menuCode")));
		int result = new ShoppingCartService().shoppingCartDelete(cart);
		System.out.println(cart);
		if(result>0){
			request.setAttribute("cart",cart);
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
