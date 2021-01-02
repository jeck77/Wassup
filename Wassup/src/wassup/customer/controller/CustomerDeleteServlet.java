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
import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class CustomerDeleteServlet
 */
@WebServlet("/customer/delete")
public class CustomerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		if(session.getAttribute("buyer")==null) {
			String userId = ((Seller)session.getAttribute("seller")).getsId();
			int result = new SellerService().deleteSeller(userId);
			if(result>0) {
				response.sendRedirect("/logout");
			} else {
				request.getRequestDispatcher("/WEB-INF/views/customer/memberError.html").forward(request, response);;
			}
		} else {
			String userId = ((Buyer)session.getAttribute("buyer")).getbId();
			
			System.out.println(userId);
			int result = new BuyerService().deleteBuyer(userId);
			System.out.println(result);
			
			if(result>0) {
				response.sendRedirect("/logout");
			} else {
				request.getRequestDispatcher("/WEB-INF/views/customer/memberError.html").forward(request, response);
			}
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
