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
import wassup.menu.model.vo.Menu;
import wassup.search.model.service.SearchService;
import wassup.search.model.vo.Seller;
import wassup.shoppingCart.model.service.ShoppingCartService;
import wassup.shoppingCart.model.vo.ShoppingCart;

/**
 * Servlet implementation class TruckSelectOne
 */
@WebServlet("/select/onetruck")
public class TruckSelectOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TruckSelectOne() {
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
		Seller search = new SearchService().TruckSelectOne(sCode);
		ArrayList<Menu> list = new SearchService().TruckSelectMenu(sCode);
		ArrayList<Menu> mainList = new ArrayList<Menu>();
		/* ArrayList<String> menuList = new ArrayList<String>(); */
		ArrayList<Menu> menuList = new SearchService().truckShowMenu(sCode);

		int grade = 0;
		grade =	new SearchService().sellerAvgGrade(sCode);
		request.setAttribute("grade", grade);
		
		ShoppingCart cart = new ShoppingCart();
		HttpSession session = request.getSession();
		if(session.getAttribute("buyer") != null) {
			
			if(menuList.isEmpty()) {
				PrintWriter writer = response.getWriter();
				writer.println("<script>alert('상점이 준비중 입니다.'); history.back();</script>");
				writer.close();
			}
		String bCode = ((Buyer)session.getAttribute("buyer")).getbCode();
		int flag = new SearchService().buyerFavorite(bCode,sCode);
		
		if(flag>0) {
			request.setAttribute("flag", flag);
		}
		
		cart.setbCode(bCode);
		int result = new ShoppingCartService().shoppingCartAllDelete(cart);
		if(result>0){
			request.setAttribute("cart",cart);
		}	
		
		
		if(!list.isEmpty()) {
			request.setAttribute("menuList", menuList);
			request.setAttribute("sTruckName",search);
			for ( int i = 0 ; i < list.size() ; i++ ) {
				if(list.get(i).getSubMenuName() != null && list.get(i).getSubMenuCode() == 1) {
					mainList.add(list.get(i));
					request.setAttribute("mainMenu", mainList);
				}
			}
			request.setAttribute("list",list);
			request.getRequestDispatcher("/WEB-INF/views/search/selectTruck.jsp").forward(request, response);		
		}else {
			
			
			
		}
		
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인을 해주세요.'); history.back();</script>");
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
