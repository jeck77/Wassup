package wassup.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.buyer.model.vo.Review;
import wassup.search.model.service.SearchService;
import wassup.search.model.vo.Seller;
import wassup.search.model.vo.SellerPage;

/**
 * Servlet implementation class TruckSearch
 */
@WebServlet("/search/truck")
public class TruckSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TruckSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		if(request.getParameter("roadname") == "") {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('주소를 입력해주세요'); location.href='/';</script>");
			writer.close();
		}
		int currentPage = 0;
		
		if(request.getParameter("currentPage") == null) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		


		int categoryCode = Integer.parseInt(request.getParameter("categoryCode"));
		String roadName = request.getParameter("roadname");
		
		SellerPage sPage = new SearchService().truckSearch(categoryCode,roadName,currentPage); 
		ArrayList<Seller> sList = sPage.getPageList(); 
		if(!sList.isEmpty()) {
			request.setAttribute("roadName", roadName);
			request.setAttribute("sList", sList);
			request.setAttribute("pageNavi", sPage.getPageNavi());
			ArrayList<Review> rank = new SearchService().reviewRank(roadName);
			if(!rank.isEmpty()) {
				request.setAttribute("rank", rank);
			}
			request.getRequestDispatcher("/WEB-INF/views/search/truckSearch.jsp").forward(request, response);;
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('검색된 트럭이 없습니다.'); location.href='/?roadName="+roadName+"';</script>");
			writer.close();

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
