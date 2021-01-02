package wassup.customer.controller;

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

import wassup.buyer.model.service.BuyerService;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.Review;
import wassup.menu.model.vo.Menu;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class ReviewInsert
 */
@WebServlet("/buyer/reviewInsert")
public class BuyerReviewInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyerReviewInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// D
		HttpSession session = request.getSession();
		String photobCode = ((Buyer)session.getAttribute("buyer")).getbCode();
		String path = request.getServletContext().getRealPath("/img/review/"+photobCode);
		File isDir = new File(path);
		
		if(!isDir.isDirectory()){
	    	isDir.mkdir();
	    }
		
		int photoSizeLimit = 20*1024*1024; // 20MB로 제한
		String encType = "utf-8";
		String menuPhotoPath = request.getServletContext().getRealPath("/img/review/"+photobCode);
		MultipartRequest multi = new MultipartRequest(request, menuPhotoPath, photoSizeLimit, encType, new DefaultFileRenamePolicy());		
		
		Review review = new Review();
		
		
		
		// DB
		if(multi.getFilesystemName("reviewP")!= null) {
		File multiFile = multi.getFile("reviewP");
		String systemFileName = multi.getFilesystemName("reviewP");
		String filePath = multiFile.getPath();
		review.setReviewPhoto(systemFileName);
		review.setReviewPhotoPath(filePath);
		}

		// 
		review.setbCode(photobCode);
		review.setsCode(multi.getParameter("sCode"));
		review.setOrderCode(Integer.parseInt(multi.getParameter("receiptCode")));
		review.setGrade(Integer.parseInt(multi.getParameter("grade")));
		review.setReviewContent(multi.getParameter("reviewContents"));


		int result = new BuyerService().reviewInsert(review);
		if(result > 0) {
			response.sendRedirect("/buyer/review");
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
