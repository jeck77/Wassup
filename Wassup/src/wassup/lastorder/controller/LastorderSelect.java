package wassup.lastorder.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.vo.Buyer;
import wassup.lastorder.model.service.LastorderService;
import wassup.lastorder.model.vo.Lastorder;
import wassup.lastorderShoppingcart.model.service.LastorderShoppingcartService;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;
import wassup.search.model.service.SearchService;
import wassup.shoppingCart.model.service.ShoppingCartService;


/**
 * Servlet implementation class lastorderSelect
 */
@WebServlet("/lastorder/selectlist")
public class LastorderSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8"); 
		String sCode = request.getParameter("lastsCode");
		Lastorder store = new LastorderService().LastSelect(sCode);
		ArrayList<Lastorder> order = new LastorderService().LastList(sCode);
		LastorderShoppingcart cart = new LastorderShoppingcart();
		HttpSession session = request.getSession();
		if(session.getAttribute("buyer") != null) {
		String bCode = ((Buyer)session.getAttribute("buyer")).getbCode();
		int alldel = new SearchService().buyerFavorite(bCode,sCode);
		if(alldel>0) {
			request.setAttribute("alldel", alldel);
		}
		cart.setbCode(bCode);
		int result = new LastorderShoppingcartService().LshoppingCartAllDelete(cart);
		
		}
		if(store != null) {
			request.setAttribute("store", store);
			System.out.println(store);
			request.setAttribute("order", order);
			request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderSelect.jsp").forward(request, response);	
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
