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
import wassup.buyer.model.vo.Order;

/**
 * Servlet implementation class LastorderOrderSevlet
 */
@WebServlet("/lastorder/order")
public class LastorderOrderSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderOrderSevlet() {
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
		
		ArrayList<Order> order = new ArrayList<Order>();
		int count = Integer.parseInt(request.getParameter("count"));
			for(int i=0; i<count+1; i++) {
				int lastStock = Integer.parseInt(request.getParameter("stock"+i));	//최초의 수량
				int amount = Integer.parseInt(request.getParameter("amount"+i));
				int menuCode = Integer.parseInt(request.getParameter("menuCode"+i));
				int sum = lastStock - amount;
					if(sum>0) {
						int result = new BuyerService().updateStock(sum, menuCode);
					} else if(sum==0) {
						int result = new BuyerService().deleteStock(menuCode);
					}
					
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
