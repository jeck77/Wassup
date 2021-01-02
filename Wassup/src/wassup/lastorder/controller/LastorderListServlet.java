package wassup.lastorder.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.lastorder.model.service.LastorderService;
import wassup.lastorder.model.vo.Lastorder;
import wassup.lastorder.model.vo.LastorderPage;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class LastorderList
 */
@WebServlet("/lastorder/list2")
public class LastorderListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LastorderListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩 처리
		request.setCharacterEncoding("utf-8");

		// 페이징
		int currentPage = 0;
		if(request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		// 세션받기
		HttpSession session = request.getSession();
		String sCode = ((Seller)session.getAttribute("seller")).getsCode();
		LastorderPage lastorderPage = new LastorderService().selectLastorderList(sCode, currentPage);
		ArrayList<Lastorder> lList = lastorderPage.getPageList();

		if(!lList.isEmpty()) {
			request.setAttribute("lastList", lList);
			request.setAttribute("pageNavi", lastorderPage.getLastPageNavi());
			request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderList.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderList.jsp").forward(request, response);
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
