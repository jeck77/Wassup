package wassup.menu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.menu.model.service.MenuService;
import wassup.menu.model.vo.Menu;
import wassup.menu.model.vo.MenuPage;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class MenuListServlet
 */
@WebServlet("/menu/list")
public class MenuListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 인코딩 처리
		request.setCharacterEncoding("utf-8");
		
		int currentPage = 0;
		if(request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
				
		// 2. 세션에서 판매자 아이디 가져옴
		HttpSession session = request.getSession();
		String sCode = ((Seller)session.getAttribute("seller")).getsCode();
		
		MenuPage menuPage = new MenuService().selectMenuList(sCode, currentPage);
		ArrayList<Menu> mList = menuPage.getPageList();
		
		if(!mList.isEmpty()) {
			request.setAttribute("menuList", mList);
			request.setAttribute("pageNavi", menuPage.getPageNavi());
		}
		request.getRequestDispatcher("/WEB-INF/views/menu/menuList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
