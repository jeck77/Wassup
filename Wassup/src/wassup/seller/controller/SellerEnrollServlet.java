package wassup.seller.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.activation.FileDataSource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class SellerEnrollServlet
 */
@WebServlet("/seller/enroll")
public class SellerEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerEnrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Seller seller = new Seller();
		
		seller.setCategoryCode(Integer.parseInt(request.getParameter("category")));
		seller.setsName(request.getParameter("name"));
		seller.setsId(request.getParameter("userId"));
		seller.setsPwd(request.getParameter("password"));
		seller.setsNick(request.getParameter("nick"));
		seller.setTruckName(request.getParameter("truck_name"));
		seller.setTruckAddr(request.getParameter("addr"));
		seller.setsBirth(Date.valueOf(request.getParameter("birth")));
		seller.setsPhone(request.getParameter("phone"));
		seller.setsCoopNum(request.getParameter("sCoop_no"));
		
		System.out.println(seller.getTruckAddr());
		int result = new SellerService().insertSeller(seller);
		if(result>0) {
			response.sendRedirect("/index.jsp");
		} else {
			response.sendRedirect("/memberError.html");
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
