package wassup.menu.controller;

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

import wassup.menu.model.service.MenuService;
import wassup.menu.model.vo.Menu;
import wassup.seller.model.vo.Seller;

/**
 * Servlet implementation class MenuInsertServlet
 */
@WebServlet("/menu/insert")
public class MenuInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuInsertServlet() {
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
		String photosId = ((Seller)session.getAttribute("seller")).getsId();
		String path = request.getServletContext().getRealPath("/img/menu/"+photosId);
		
		File isDir = new File(path);
		if(!isDir.isDirectory()){
	    	isDir.mkdir();
	    }
		
		int photoSizeLimit = 20*1024*1024; // 20MB로 제한
		String encType = "utf-8";
		String menuPhotoPath = request.getServletContext().getRealPath("/img/menu/"+photosId);
		MultipartRequest multi = new MultipartRequest(request, menuPhotoPath, photoSizeLimit, encType, new DefaultFileRenamePolicy());
		
		// DB
		Menu menu = new Menu();
		
		if (multi.getFilesystemName("menuPhoto") != null) {
			File multiFile = multi.getFile("menuPhoto");
			String systemFileName = multi.getFilesystemName("menuPhoto");
			String filePath = multiFile.getPath();
			menu.setMenuPhoto(systemFileName);
			menu.setMenuPhotoPath(filePath);
		}
		
		// 

		menu.setSubMenuCode(Integer.parseInt(multi.getParameter("subMenuCode")));
		menu.setMenuName(multi.getParameter("menuName"));
		menu.setPrice(Integer.parseInt(multi.getParameter("price")));
		menu.setsCode(multi.getParameter("sCode"));
		menu.setCategoryCode(Integer.parseInt(multi.getParameter("categoryCode")));
		menu.setDetail(multi.getParameter("detail"));
		menu.setSummary(multi.getParameter("summary"));


		// 판매자 코드를 받아서 그 판매자의 메뉴를 추가
		if(session != null && (session.getAttribute("seller") != null)) {
			int result = new MenuService().insertMenu(menu);
			
			if(result > 0) {
				// 메뉴를 추가하면 메뉴 리스트로 돌아가서 확인 가능하도록 함
				response.sendRedirect("/menu/list");
				//request.getRequestDispatcher("/WEB-INF/views/menu/menuList.jsp").forward(request, response); 
			} else {
				request.getRequestDispatcher("/WEB-INF/views/menu/menuError.html").forward(request, response); 
			}
		} else {
			request.getRequestDispatcher("/WEB-INF/views/menu/menuError.html").forward(request, response); 
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
