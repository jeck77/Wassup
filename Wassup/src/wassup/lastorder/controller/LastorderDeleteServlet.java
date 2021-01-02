package wassup.lastorder.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.lastorder.model.service.LastorderService;

/**
 * Servlet implementation class LastorderDeleteServlet
 */
@WebServlet("/lastorder/delete2")
public class LastorderDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int lastorderCode = Integer.parseInt(request.getParameter("lastorderCode"));
		int result = new LastorderService().deleteLastorder(lastorderCode);
		if(result > 0) {
			response.sendRedirect("/lastorder/list2");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/menu/menuError.html");
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
