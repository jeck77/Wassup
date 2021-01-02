package wassup.customer.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.FavorityTruck;


/**
 * Servlet implementation class TruckFavorit
 */
@WebServlet("/truck/fav")
public class TruckFavorit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TruckFavorit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		FavorityTruck truck = new FavorityTruck();
		HttpSession session = request.getSession();
		truck.setbCode(((Buyer)session.getAttribute("buyer")).getbCode());
		truck.setsCode(request.getParameter("sCode"));
		truck.setTruckName(request.getParameter("sTruckName"));
		truck.setTruckAddr(request.getParameter("sTruckAddr"));
		int result = new BuyerService().turckFavority(truck);	
		if(result>0){
			request.setAttribute("truck",truck);
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
