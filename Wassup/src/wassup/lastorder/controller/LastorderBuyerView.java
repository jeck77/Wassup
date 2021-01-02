package wassup.lastorder.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import wassup.lastorder.model.service.LastorderService;
import wassup.lastorder.model.vo.Lastorder;
import wassup.lastorder.model.vo.LastorderViewPage;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class LastorderBuyerView
 */
@WebServlet("/lastorder/buyerview2")
public class LastorderBuyerView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderBuyerView() {
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
		
		LastorderViewPage lastorderViewPage = new LastorderService().selectBuyerview(currentPage);
		ArrayList<Lastorder> lList2 = lastorderViewPage.getPageViewList();
		
		if(!lList2.isEmpty()) {
			request.setAttribute("lList2", lList2);
			request.setAttribute("lastViewPageNavi", lastorderViewPage.getLastViewPageNavi());
		}
		
		request.getRequestDispatcher("/WEB-INF/views/lastorder/lastorderBuyerView.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
