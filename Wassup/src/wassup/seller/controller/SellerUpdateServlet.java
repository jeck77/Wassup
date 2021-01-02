package wassup.seller.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

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
import wassup.seller.model.service.SellerService;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class SellerUpdateServlet
 */
@WebServlet("/seller/update")
public class SellerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String photosId = ((Seller)session.getAttribute("seller")).getsId();
		//String originalName = request.getParameter("logoP");
		String path = request.getServletContext().getRealPath("/img/logoImg/"+photosId);
		File isDir = new File(path);
		if(!isDir.isDirectory()){
			isDir.mkdir();
		}
		//System.out.println(originalName);
		//if(originalName != null && originalName.equals("")){
			
			//new File(request.getParameter("logoPath")).delete();
			
			int photoSizeLimit = 20*1024*1024; // 20MB로 제한
			String encType = "utf-8";
			String menuPhotoPath = request.getServletContext().getRealPath("/img/logoImg/"+photosId);
			MultipartRequest multi = new MultipartRequest(request, menuPhotoPath, photoSizeLimit, encType, new DefaultFileRenamePolicy());
			Seller seller = new Seller();
			if (multi.getFilesystemName("logoP") != null) {
				File multiFile = multi.getFile("logoP");
				String systemFileName = multi.getFilesystemName("logoP");
				String filePath = multiFile.getPath();
				seller.setLogoPhotoPath(filePath);
			}else {
				seller.setLogoPhoto(multi.getParameter("logoPhotoName"));
				seller.setLogoPhotoPath(multi.getParameter("logoPath"));
			}
			// DB
			String sId = ((Seller)session.getAttribute("seller")).getsId();
			String pwd = multi.getParameter("password");

			seller.setsId(sId);
			seller.setTruckAddr(multi.getParameter("addr"));
			seller.setsBirth(Date.valueOf(multi.getParameter("birth"))); // string을 date 타입으로 변환
			seller.setsPwd(pwd);
			seller.setsNick(multi.getParameter("nick"));
			seller.setsPhone(multi.getParameter("phone"));
			seller.setCategoryCode(Integer.parseInt(multi.getParameter("category")));
			seller.setsCoopNum(multi.getParameter("sCoopNum"));
			seller.setTruckName(multi.getParameter("truck_name"));
			String truckAddr = multi.getParameter("addr");
			String truckName = multi.getParameter("truck_name");
			String sCode = ((Seller)session.getAttribute("seller")).getsCode();
			
			int resultFav = new SellerService().updateFavorite(truckAddr,truckName,sCode);

			int result = new SellerService().updateSeller(seller);
			if(result > 0) {
				session.invalidate();
				response.sendRedirect("/Login?Id="+sId+"&&Pwd="+pwd+"&&check_log=seller");
			} else {
				response.sendRedirect("/WEB-INF/views/customer/memberError.html");
			}
//		} else {
//			
//			int photoSizeLimit = 20*1024*1024; // 20MB로 제한
//			String encType = "utf-8";
//			String menuPhotoPath = request.getParameter("logoPath");
//			MultipartRequest multi = new MultipartRequest(request, menuPhotoPath, photoSizeLimit, encType, new DefaultFileRenamePolicy());
//			
//			// DB
//			File multiFile = multi.getFile("logoP");
//			String systemFileName = multi.getFilesystemName("logoP");
//			String filePath = request.getParameter("logoPath");
//			
//			Seller seller = new Seller();
//			seller.setsId(((Seller)session.getAttribute("seller")).getsId());
//			seller.setTruckAddr(multi.getParameter("addr"));
//			seller.setsBirth(Date.valueOf(multi.getParameter("birth"))); // string을 date 타입으로 변환
//			seller.setsPwd(multi.getParameter("password"));
//			seller.setsNick(multi.getParameter("nick"));
//			seller.setsPhone(multi.getParameter("phone"));
//			seller.setCategoryCode(Integer.parseInt(multi.getParameter("category")));
//			seller.setsCoopNum(multi.getParameter("sCoopNum"));
//			seller.setTruckName(multi.getParameter("truck_name"));
//			seller.setLogoPhoto(systemFileName);
//			seller.setLogoPhotoPath(filePath);
//			System.out.println(filePath);
//			
//			int result = new SellerService().updateSeller(seller);
//			if(result > 0) {
//				response.sendRedirect("/main");
//			} else {
//				response.sendRedirect("/WEB-INF/views/customer/memberError.html");
//			}
//		}




		/*
		 * int photoSizeLimit = 20*1024*1024; // 20MB로 제한 String encType = "utf-8";
		 * String menuPhotoPath =
		 * request.getServletContext().getRealPath("/img/menu/"+photosId);
		 * MultipartRequest multi = new MultipartRequest(request, menuPhotoPath,
		 * photoSizeLimit, encType, new DefaultFileRenamePolicy());
		 * 
		 * // DB File multiFile = multi.getFile("logoP"); String systemFileName =
		 * multi.getFilesystemName("logoP"); String filePath = multiFile.getPath();
		 */
		
		
		/*
		 * Seller seller = new Seller();
		 * seller.setsId(((Seller)session.getAttribute("seller")).getsId());
		 * seller.setTruckAddr(multi.getParameter("addr"));
		 * seller.setsBirth(Date.valueOf(multi.getParameter("birth"))); // string을 date
		 * 타입으로 변환 seller.setsPwd(multi.getParameter("password"));
		 * seller.setsNick(multi.getParameter("nick"));
		 * seller.setsPhone(multi.getParameter("phone"));
		 * seller.setCategoryCode(Integer.parseInt(multi.getParameter("category")));
		 * seller.setsCoopNum(multi.getParameter("sCoopNum"));
		 * seller.setTruckName(multi.getParameter("truck_name"));
		 * seller.setLogoPhoto(systemFileName); seller.setLogoPhotoPath(filePath);
		 * System.out.println(filePath);
		 * 
		 * int result = new SellerService().updateSeller(seller); if(result > 0) {
		 * response.sendRedirect("/main"); } else {
		 * response.sendRedirect("/WEB-INF/views/customer/memberError.html"); }
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
