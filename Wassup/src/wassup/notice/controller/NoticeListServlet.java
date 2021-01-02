package wassup.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.FavorityPageData;
import wassup.buyer.model.vo.FavorityTruck;
import wassup.notice.model.service.NoticeService;
import wassup.notice.model.vo.Notice;
import wassup.notice.model.vo.NoticePage;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/notice/listForm")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage = 0;
		if(request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		NoticePage pageData = new NoticeService().bringNotice(currentPage);
		ArrayList<Notice> notice = pageData.getPageList();
		
		if(notice != null) {
			request.setAttribute("notice", notice);
			request.setAttribute("pageNavi", pageData.getPageNavi());
			request.getRequestDispatcher("/WEB-INF/views/notice/noticeList.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/views/notice/memsberError.jsp").forward(request, response);
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
