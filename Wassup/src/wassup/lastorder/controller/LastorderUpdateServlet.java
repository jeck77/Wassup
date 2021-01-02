package wassup.lastorder.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.lastorder.model.service.LastorderService;

/**
 * Servlet implementation class LastorderUpdateServlet
 */
@WebServlet("/lastorder/update2")
public class LastorderUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int stock = Integer.parseInt(request.getParameter("stock"));
		int discount = Integer.parseInt(request.getParameter("discount"));
		int lastorderCode = Integer.parseInt(request.getParameter("lastorderCode"));

		int result= new LastorderService().updateLastorder(stock, discount, lastorderCode);
		if (result > 0) {
			response.sendRedirect("/lastorder/list2");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/menu/menuError.html").forward(request, response);
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
