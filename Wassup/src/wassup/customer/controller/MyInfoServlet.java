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
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Review;
import wassup.coupon.model.vo.Coupon;
import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class MyInfoServlet
 */
@WebServlet("/myInfo")
public class MyInfoServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      HttpSession session = request.getSession();

      if(session.getAttribute("buyer") == null) {
         int totalOrder = -1;
         int totalReview = -1;
         String userId = ((Seller)session.getAttribute("seller")).getsId();
         String userCode = ((Seller)session.getAttribute("seller")).getsCode();
         totalOrder = new SellerService().totalOrder(userCode);
         totalReview = new SellerService().totalReview(userCode);
         if(!(totalOrder == -1) ) {
            request.setAttribute("totalOrder", totalOrder);
         }
         if(!(totalReview == -1) ) {
            request.setAttribute("totalReview", totalReview);
         }
         request.getRequestDispatcher("/WEB-INF/views/customer/sellerInfo.jsp").forward(request, response);
         
      } else {
         String userId = ((Buyer)session.getAttribute("buyer")).getbId();
         String userCode = ((Buyer)session.getAttribute("buyer")).getbCode();
         Order order = new BuyerService().totalOrder(userId);
         Review review = new BuyerService().totalReview(userCode);
         FavorityTruck favority = new BuyerService().totalFavoirty(userCode);
         Coupon coupon = new BuyerService().totalCoupon(userCode);
         if(order != null) {
            request.setAttribute("order", order);
         }else {
        	 request.setAttribute("order", 0);
         }
         if(review != null) {
            request.setAttribute("review", review);
         }else {
        	 request.setAttribute("review", 0);
         }
         if(favority!=null) {
            request.setAttribute("favority", favority);
         }else {
        	 request.setAttribute("favority", 0);
         }
         if(coupon!=null) {
            request.setAttribute("coupon", coupon);
         }else {
        	 request.setAttribute("coupon", 0);
         }
         request.getRequestDispatcher("/WEB-INF/views/customer/buyerInfo.jsp").forward(request, response);
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