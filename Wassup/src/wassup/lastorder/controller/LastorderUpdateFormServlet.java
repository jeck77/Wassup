package wassup.lastorder.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.lastorder.model.service.LastorderService;
import wassup.lastorder.model.vo.Lastorder;

/**
 * Servlet implementation class LastorderUpdateFormServlet
 */
@WebServlet("/lastorder/updateform")
public class LastorderUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderUpdateFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int lastorderCode = Integer.parseInt(request.getParameter("lastorderCode"));
		Lastorder lastorder = new LastorderService().selectOneLastorder(lastorderCode);
		
		request.setAttribute("lastorder", lastorder);
		
		request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderUpdate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
