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
import wassup.lastorder.model.vo.MenuPage2;
import wassup.menu.model.vo.Menu;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class LastorderSelectForm
 */
@WebServlet("/lastorder/select")
public class LastorderSelectFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LastorderSelectFormServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		int currentPage = 0;
		if(request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		HttpSession session = request.getSession();
		String sCode = ((Seller)session.getAttribute("seller")).getsCode();

		MenuPage2 menuPage2 = new LastorderService().selectMenuList(sCode, currentPage);
		ArrayList<Menu> mList = menuPage2.getPageList2();

		if(!mList.isEmpty()) {
			request.setAttribute("menuList", mList);
			request.setAttribute("pageNavi2", menuPage2.getPageNavi2());
			request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderSelectInsert.jsp").forward(request, response);
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
