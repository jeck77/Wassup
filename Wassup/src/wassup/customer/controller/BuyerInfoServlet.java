package wassup.customer.controller;

import java.io.IOException;
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
 * Servlet implementation class BuyerInfoServlet
 */
@WebServlet("/buyer/info")
public class BuyerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String userId = ((Buyer)session.getAttribute("buyer")).getbId();
		Buyer buyer = new BuyerService().selectOne(userId);

		if(buyer != null) {
			request.setAttribute("buyer", buyer);
			request.getRequestDispatcher("/WEB-INF/views/customer/buyerUpdate.jsp").forward(request, response);
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
