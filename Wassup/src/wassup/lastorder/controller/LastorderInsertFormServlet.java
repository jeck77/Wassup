package wassup.lastorder.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.lastorder.model.service.LastorderService;
import wassup.lastorder.model.vo.Lastorder;
import wassup.menu.model.vo.Menu;

/**
 * Servlet implementation class LastorderInsertFormServlet
 */
@WebServlet("/lastorder/insertform")
public class LastorderInsertFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderInsertFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		int menuCode = Integer.parseInt(request.getParameter("menuCode"));
		Menu menu = new LastorderService().selectOneMenu(menuCode);

		request.setAttribute("menu", menu);

		request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderInsert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
