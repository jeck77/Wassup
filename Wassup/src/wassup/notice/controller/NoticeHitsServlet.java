package wassup.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.notice.model.service.NoticeService;

/**
 * Servlet implementation class NoticeHitsServlet
 */
@WebServlet("/notice/selectHits")
public class NoticeHitsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeHitsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		int sum = Integer.parseInt(request.getParameter("hits"));
		sum += 1;
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		int result = new NoticeService().updateHits(noticeNo, sum);
		
		if(result>0) {
			session.setAttribute("noticeNo", noticeNo);
			response.sendRedirect("/notice/select");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/notice/memberError.html");
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
