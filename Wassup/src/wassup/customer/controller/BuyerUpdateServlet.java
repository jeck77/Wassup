package wassup.customer.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;


/**
 * Servlet implementation class BuyerUpdateServlet
 */
@WebServlet("/buyer/update")
public class BuyerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Buyer buyer = new Buyer();
		String bId = ((Buyer)session.getAttribute("buyer")).getbId();
		String pwd = request.getParameter("password");
		buyer.setbId(bId);
		buyer.setbAddr(request.getParameter("addr"));
		buyer.setbBirth(Date.valueOf(request.getParameter("birth"))); // string을 date 타입으로 변환
		buyer.setbPwd(pwd);
		buyer.setbNick(request.getParameter("nick"));
		buyer.setbPhone(request.getParameter("phone"));
		buyer.setbRoadName(request.getParameter("roadName"));
		session.invalidate();
		int result = new BuyerService().updateBuyer(buyer);

		if(result > 0) {
//			request.getRequestDispatcher("/Login?Id="+bId+"&&Pwd="+pwd+"&&check_log=buySer").forward(request, response);
			response.sendRedirect("/Login?Id="+bId+"&&Pwd="+pwd+"&&check_log=buyer");
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
