package wassup.lastorder.controller;

import java.io.File;
import java.io.IOException;

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
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class LastorderInsertServlet
 */
@WebServlet("/lastorder/insert2")
public class LastorderInsertServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LastorderInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      request.setCharacterEncoding("utf-8");

      Lastorder lastorder = new Lastorder();
      lastorder.setStock(Integer.parseInt(request.getParameter("stock")));
      lastorder.setDiscount(Integer.parseInt(request.getParameter("discount")));
      lastorder.setLastMenuName(request.getParameter("lastMenuName"));
      lastorder.setLastPrice(Integer.parseInt(request.getParameter("lastPrice")));
      lastorder.setLastsCode(request.getParameter("lastsCode"));
      lastorder.setLastCategory(request.getParameter("lastCategory"));
      lastorder.setLastDetail(request.getParameter("lastDetail"));
      lastorder.setLastSummary(request.getParameter("lastSummary"));
      lastorder.setLastPhoto(request.getParameter("lastPhoto"));
      lastorder.setLastPhotoPath(request.getParameter("lastPhotoPath"));
      lastorder.setLastSubMenuCode(Integer.parseInt(request.getParameter("lastSubMenuCode")));
      
      int result = new LastorderService().insertLastorder(lastorder);
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