package wassup.customer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;


/**
 * Servlet implementation class BuyerEnrollServlet
 */
@WebServlet("/buyer/enroll")
public class BuyerEnrollServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerEnrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      response.setContentType("text/html; charset=UTF-8"); 
      
      
      Buyer buyer = new Buyer();
      buyer.setbName(request.getParameter("name"));
      buyer.setbAddr(request.getParameter("addr"));
      buyer.setbBirth(Date.valueOf(request.getParameter("birth"))); // string을 date 타입으로 변환
      buyer.setbId(request.getParameter("userId"));
      buyer.setbPwd(request.getParameter("password"));
      buyer.setbNick(request.getParameter("nick"));
      buyer.setbPhone(request.getParameter("phone"));
      buyer.setbRoadName(request.getParameter("roadName"));
      
      int result = new BuyerService().insertBuyer(buyer);
      if(result > 0) {
         PrintWriter writer = response.getWriter(); 
            writer.println("<script>alert('가입을 환영합니다! 신규 가입 쿠폰이 발행되었습니다!'); location.href='/index.jsp';</script>");
            writer.close();
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