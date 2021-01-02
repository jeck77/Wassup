package wassup.lastorderShoppingcart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.vo.Buyer;

import wassup.lastorderShoppingcart.model.service.LastorderShoppingcartService;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;


/**
 * Servlet implementation class LShoppingCartInsert
 */
@WebServlet("/LShopping/insert")
public class LShoppingCartInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LShoppingCartInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		LastorderShoppingcart order = new LastorderShoppingcart();
		HttpSession session = request.getSession();
		String bCode = (((Buyer)session.getAttribute("buyer")).getbCode());
		order.setbCode(bCode);
		order.setLastorderCode(Integer.parseInt(request.getParameter("lastorderCode")));
		order.setLastMenuName(request.getParameter("menuName"));
		order.setsCode(request.getParameter("sCode"));
		order.setLastPrice(Integer.parseInt(request.getParameter("price")));
		order.setDiscount(Integer.parseInt(request.getParameter("discount")));
		int result = new LastorderShoppingcartService().LshoppingCartInsert(order);
//		System.out.println(cart);
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
