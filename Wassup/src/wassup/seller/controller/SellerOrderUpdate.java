package wassup.seller.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.seller.model.service.SellerService;

/**
 * Servlet implementation class SellerOrderUpdate
 */
@WebServlet("/order/update")
public class SellerOrderUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerOrderUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8"); 
		String status = request.getParameter("status");
		String receiptCode = request.getParameter("receiptCode");
		int result = new SellerService().sellerOrderUpdate(status,receiptCode);
		
		if(result > 0) {
			response.sendRedirect("/seller/list/order");
		}else {
			PrintWriter writer = response.getWriter(); writer.
			println("<script>alert('주문 상태 변환에 실패 하였습니다.'); location.href='/seller/list/order';</script>" );
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
