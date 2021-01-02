package wassup.customer.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.ShoppingCart;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/buyer/payment")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
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
		
		if(request.getParameter("coupon") != null) {
			String cName = request.getParameter("coupon");
			int resultCoupon = new BuyerService().deleteCoupon(cName, userCode);
		}
		String truckName = request.getParameter("truckName");
		
		ArrayList<Order> order = new ArrayList<Order>();
		int count = Integer.parseInt(request.getParameter("count"));
		if(request.getParameter("coupon") != null){
			if(request.getParameter("coupon") != null) {
				for(int i=0; i<count+1; i++) {
					Order orderOne = new Order();
					orderOne.setbId(((Buyer)session.getAttribute("buyer")).getbId());
					orderOne.setMenuCode(Integer.parseInt(request.getParameter("menuCode"+i)));
					orderOne.setMenuName(request.getParameter("menuName"+i));
					int originP = Integer.parseInt(request.getParameter("price"+i));
					originP = (int) (originP-(originP*0.1));
					orderOne.setPrice(originP);
					orderOne.setAmount(Integer.parseInt(request.getParameter("amount"+i)));
					orderOne.setOrderStatus(request.getParameter("orderStatus"+i));
					orderOne.setPaymentWays(request.getParameter("payway"));
					orderOne.setsCode(request.getParameter("sCode"+i));
					orderOne.setbRequest(request.getParameter("bRequest"));
					orderOne.setTruckName(truckName);
					order.add(orderOne);
				}
			}
		} else {
			for(int i=0; i<count+1; i++) {
				Order orderOne = new Order();
				orderOne.setbId(((Buyer)session.getAttribute("buyer")).getbId());
				orderOne.setMenuCode(Integer.parseInt(request.getParameter("menuCode"+i)));
				orderOne.setMenuName(request.getParameter("menuName"+i));
				orderOne.setPrice(Integer.parseInt(request.getParameter("price"+i)));
				orderOne.setAmount(Integer.parseInt(request.getParameter("amount"+i)));
				orderOne.setOrderStatus(request.getParameter("orderStatus"+i));
				orderOne.setPaymentWays(request.getParameter("payway"));
				orderOne.setsCode(request.getParameter("sCode"+i));
				orderOne.setbRequest(request.getParameter("bRequest"));
				orderOne.setTruckName(truckName);
				order.add(orderOne);
				System.out.println(orderOne.toString());
			}
		}
		
		int result = new BuyerService().insertOrder(order);
		
		if(result>0) {
			response.sendRedirect("/main");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/customer/memberError.html");
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
