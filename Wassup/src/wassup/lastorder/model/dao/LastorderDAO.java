package wassup.lastorder.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.lastorder.model.vo.Lastorder;
import wassup.menu.model.vo.Menu;


public class LastorderDAO {

	public ArrayList<Lastorder> selectLastorderList(Connection conn, String sCode, int currentPage, int recordCountPerPage) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Lastorder> lList = null;
	      String query = "SELECT * FROM (SELECT LASTORDER.*, ROW_NUMBER() OVER(ORDER BY LASTORDER_CODE ASC) AS NUM FROM LASTORDER WHERE LAST_S_CODE = ?) WHERE NUM BETWEEN ? AND ?";

	      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
	      int end = currentPage * recordCountPerPage;
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, sCode);
	         pstmt.setInt(2, start);
	         pstmt.setInt(3, end);
	         rset = pstmt.executeQuery();
	         lList = new ArrayList<Lastorder>();

	         while(rset.next()) {
	            Lastorder lastorder = new Lastorder();
	            lastorder.setLastorderCode(rset.getInt("LASTORDER_CODE"));
	            lastorder.setStock(rset.getInt("STOCK"));
	            lastorder.setDiscount(rset.getInt("DISCOUNT"));
	            lastorder.setLastMenuName(rset.getString("LAST_MENU_NAME"));
	            lastorder.setLastPrice(rset.getInt("LAST_PRICE"));
	            lastorder.setLastsCode(rset.getString("LAST_S_CODE"));
	            lastorder.setLastCategory(rset.getString("LAST_CATEGORY"));
	            lastorder.setLastDetail(rset.getString("LAST_DETAIL"));
	            lastorder.setLastSummary(rset.getString("LAST_SUMMARY"));
	            lastorder.setLastPhoto(rset.getString("LAST_PHOTO"));
	            lastorder.setLastPhotoPath(rset.getString("LAST_PHOTO_PATH"));
	            lastorder.setLastSubMenuCode(rset.getInt("LAST_SUBMENU_CODE"));
	            lList.add(lastorder);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(pstmt);
	         JDBCTemplate.close(rset);
	      }
	      return lList;
	   }

	public int totalCount(Connection conn, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM LASTORDER WHERE LAST_S_CODE = ?";
		int recordTotalCount = 0;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				recordTotalCount = rset.getInt("TOTALCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return recordTotalCount;
	}

	public String getLastPageNavi(Connection conn, String sCode, int currentPage, int recordCountPerPage, int naviCountPerPage) {

		int recordTotalCount = totalCount(conn, sCode);
		int pageTotalCount = 0;

		if (recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}

		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;

		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		boolean needPrev = true;
		boolean needNext = true;

		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		StringBuilder sb = new StringBuilder();
		if (needPrev) {
			sb.append("<a href='/lastorder/list2?currentPage="+(startNavi - 1) + "'> < </a>");
		}

		for (int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/lastorder/list2?currentPage=" +i+ "'><b> " + i + "</b></a>");
			} else {
				sb.append("<a href='/lastorder/list2?currentPage=" +i+ "'> " + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/lastorder/list2?currentPage="+(endNavi + 1) + "'> > </a>");
		}
		return sb.toString();
	}

	public ArrayList<Menu> selectMenuList(Connection conn, String sCode, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Menu> mList = null;
		String query = "SELECT * FROM (SELECT MENU.*, ROW_NUMBER() OVER(ORDER BY MENU_CODE ASC) AS NUM FROM MENU WHERE S_CODE = ?) JOIN SUBMENU USING(SUBMENU_CODE) WHERE NUM BETWEEN ? AND ?";

		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();
			mList = new ArrayList<Menu>();

			while(rset.next()) {
				Menu menu = new Menu();
				menu.setMenuCode(rset.getInt("MENU_CODE"));
				menu.setSubMenuCode(rset.getInt("SUBMENU_CODE"));
				menu.setMenuName(rset.getString("MENU_NAME"));
				menu.setPrice(rset.getInt("PRICE"));
				menu.setsCode(rset.getString("S_CODE"));
				menu.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				menu.setSummary(rset.getString("SUMMARY"));
				menu.setMenuPhoto(rset.getString("MENU_PHOTO"));
				menu.setMenuPhotoPath(rset.getString("MENU_PHOTO_PATH"));
				menu.setSubMenuName(rset.getString("SUBMENU_NAME"));
				menu.setDetail(rset.getString("DETAIL"));
				mList.add(menu);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return mList;
	}

	public int menuTotalCount(Connection conn, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM MENU WHERE S_CODE = ?";
		int recordTotalCount = 0;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				recordTotalCount = rset.getInt("TOTALCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return recordTotalCount;
	}

	public String getPageNavi2(Connection conn, String sCode, int currentPage, int recordCountPerPage, int naviCountPerPage) {

		int recordTotalCount = menuTotalCount(conn, sCode);
		int pageTotalCount = 0;

		if (recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}

		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;

		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		boolean needPrev = true;
		boolean needNext = true;

		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		StringBuilder sb = new StringBuilder();
		if (needPrev) {
			sb.append("<a href='/lastorder/select?currentPage="+(startNavi - 1) + "'> < </a>");
		}

		for (int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/lastorder/select?currentPage=" +i+ "'><b> " + i + "</b></a>");
			} else {
				sb.append("<a href='/lastorder/select?currentPage=" +i+ "'> " + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/lastorder/select?currentPage="+(endNavi + 1) + "'> > </a>");
		}
		return sb.toString();
	}

	public Menu selectOneMenu(Connection conn, int menuCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Menu menu = null;
		String query = "SELECT * FROM MENU JOIN CATEGORY USING(CATEGORY_CODE) JOIN SUBMENU USING(SUBMENU_CODE) WHERE MENU_CODE = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, menuCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				menu = new Menu();
				menu.setMenuCode(rset.getInt("MENU_CODE"));
				menu.setSubMenuCode(rset.getInt("SUBMENU_CODE"));
				menu.setMenuName(rset.getString("MENU_NAME"));
				menu.setPrice(rset.getInt("PRICE"));
				menu.setsCode(rset.getString("S_CODE"));
				menu.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				menu.setSummary(rset.getString("SUMMARY"));
				menu.setDetail(rset.getString("DETAIL"));
				menu.setSubMenuName(rset.getString("SUBMENU_NAME"));
				menu.setCategoryName(rset.getString("CATEGORY_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return menu;
	}

	public int insertLastorder(Connection conn, Lastorder lastorder) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO LASTORDER VALUES(LASTORDER_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,lastorder.getStock());
			pstmt.setInt(2,lastorder.getDiscount());
			pstmt.setString(3,lastorder.getLastMenuName());
			pstmt.setInt(4,lastorder.getLastPrice());
			pstmt.setString(5,lastorder.getLastsCode());
			pstmt.setString(6,lastorder.getLastCategory());
			pstmt.setString(7,lastorder.getLastDetail());
			pstmt.setString(8,lastorder.getLastSummary());
			pstmt.setString(9,lastorder.getLastPhoto());
			pstmt.setString(10,lastorder.getLastPhotoPath());
			pstmt.setInt(11,lastorder.getLastSubMenuCode());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public Lastorder selectOneLastorder(Connection conn, int lastorderCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Lastorder lastorder = null;
		String query = "SELECT * FROM LASTORDER WHERE LASTORDER_CODE = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, lastorderCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				lastorder = new Lastorder();
				lastorder.setLastorderCode(rset.getInt("LASTORDER_CODE"));
				lastorder.setStock(rset.getInt("STOCK"));
				lastorder.setDiscount(rset.getInt("DISCOUNT"));
				lastorder.setLastMenuName(rset.getString("LAST_MENU_NAME"));
				lastorder.setLastPrice(rset.getInt("LAST_PRICE"));
				lastorder.setLastsCode(rset.getString("LAST_S_CODE"));
				lastorder.setLastCategory(rset.getString("LAST_CATEGORY"));
				lastorder.setLastDetail(rset.getString("LAST_DETAIL"));
				lastorder.setLastSummary(rset.getString("LAST_SUMMARY"));
				lastorder.setLastPhoto(rset.getString("LAST_PHOTO"));
				lastorder.setLastPhotoPath(rset.getString("LAST_PHOTO_PATH"));
				lastorder.setLastSubMenuCode(rset.getInt("LAST_SUBMENU_CODE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return lastorder;
	}

	public int updateLastorder(Connection conn, int stock, int discount, int lastorderCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE LASTORDER SET STOCK=?, DISCOUNT=? WHERE LASTORDER_CODE=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, stock);
			pstmt.setInt(2, discount);
			pstmt.setInt(3, lastorderCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int deleteLastorder(Connection conn, int lastorderCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM LASTORDER WHERE LASTORDER_CODE=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, lastorderCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Lastorder> selectBuyerview(Connection conn, int currentPage, int recordCountPerPage) {
		ArrayList<Lastorder> lList2 = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM (SELECT LASTORDER.*, ROW_NUMBER() OVER(ORDER BY LASTORDER_CODE ASC) AS NUM FROM LASTORDER)\r\n" + 
				"JOIN SELLER ON(S_CODE = LAST_S_CODE) WHERE NUM BETWEEN ? AND ?";
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			lList2 = new ArrayList<Lastorder>();
			
			while(rset.next()) {
				Lastorder lastorder = new Lastorder();
				lastorder.setLastorderCode(rset.getInt("LASTORDER_CODE"));
				lastorder.setStock(rset.getInt("STOCK"));
				lastorder.setDiscount(rset.getInt("DISCOUNT"));
				lastorder.setLastMenuName(rset.getString("LAST_MENU_NAME"));
				lastorder.setLastPrice(rset.getInt("LAST_PRICE"));
				lastorder.setLastsCode(rset.getString("LAST_S_CODE"));
				lastorder.setLastCategory(rset.getString("LAST_CATEGORY"));
				lastorder.setLastDetail(rset.getString("LAST_DETAIL"));
				lastorder.setLastSummary(rset.getString("LAST_SUMMARY"));
				lastorder.setLastPhoto(rset.getString("LAST_PHOTO"));
				lastorder.setLastPhotoPath(rset.getString("LAST_PHOTO_PATH"));
				lastorder.setLastSubMenuCode(rset.getInt("LAST_SUBMENU_CODE"));
				lastorder.setTruckName(rset.getString("TRUCK_NAME"));
				String path = rset.getString("LOGO_PHOTO_PATH");
				String result = null;
				System.out.println(path == null);
				if(path!=null && !path.equals("\\null") && !path.equals("null")) {
					result = "\\" + path.substring(path.lastIndexOf("\\i")+1);
					lastorder.setLogoPhotoPath(result);
				}else{
					lastorder.setLogoPhotoPath("/img/category/basic.png");
				}
				lList2.add(lastorder);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return lList2;
	}
	
	public int totalLastViewCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM LASTORDER";
		int recordTotalCount = 0;
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next()) {
				recordTotalCount = rset.getInt("TOTALCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(stmt);
			JDBCTemplate.close(rset);
		}
		return recordTotalCount;
	}
	
public String getLastViewPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		
		int recordTotalCount = totalLastViewCount(conn);
		int pageTotalCount = 0;
		
		if (recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		boolean needPrev = true;
		boolean needNext = true;
		
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == pageTotalCount) {
			needNext = false;
		}
		
		StringBuilder sb = new StringBuilder();
		if (needPrev) {
			sb.append("<a href='/lastorder/buyerview?currentPage="+(startNavi - 1) + "'> < </a>");
		}
		
		for (int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/lastorder/buyerview?currentPage=" +i+ "'><b> " + i + "</b></a>");
			} else {
				sb.append("<a href='/lastorder/buyerview?currentPage=" +i+ "'> " + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/lastorder/buyerview?currentPage="+(endNavi + 1) + "'> > </a>");
		}
		return sb.toString();
	}

public Lastorder LastSelect(Connection conn, String sCode){
	ResultSet rset = null;
	Statement stmt = null;
	String query = "select LASTORDER_CODE, STOCK, DISCOUNT, LAST_MENU_NAME, LAST_PRICE, LAST_S_CODE, LAST_CATEGORY, LAST_PHOTO_PATH, LOGO_PHOTO_PATH, TRUCK_NAME, TRUCK_ADDR, S_PHONE from lastorder join seller on(s_Code = last_s_code) where last_s_code = '"+ sCode + "'";
	Lastorder store = null;
	try {
		stmt = conn.createStatement();
		rset = stmt.executeQuery(query);
		if(rset.next()) {
			store = new Lastorder();
			store.setLastorderCode(rset.getInt("LASTORDER_CODE"));
			store.setStock(rset.getInt("STOCK"));
			store.setDiscount(rset.getInt("DISCOUNT"));
			store.setLastMenuName(rset.getString("LAST_MENU_NAME"));
			store.setLastPrice(rset.getInt("LAST_PRICE"));
			store.setLastsCode(rset.getString("LAST_S_CODE"));
			store.setLastCategory(rset.getString("LAST_CATEGORY"));
			store.setLastPhotoPath(rset.getString("LAST_PHOTO_PATH"));
			store.setLogoPhotoPath(rset.getString("LOGO_PHOTO_PATH"));
			store.setTruckName(rset.getString("TRUCK_NAME"));
			store.setTruckAddr(rset.getString("TRUCK_ADDR"));
			store.setsPhone(rset.getString("S_PHONE"));
			
			String path = rset.getString("LOGO_PHOTO_PATH");
			String result = null;
			if(path!=null && !path.equals("\\null") && !path.equals("null")) {
				result = "\\" + path.substring(path.lastIndexOf("\\i")+1);
				store.setLogoPhotoPath(result);
			}else{
				store.setLogoPhotoPath("/img/category/basic.png");
			}
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBCTemplate.close(rset);
		JDBCTemplate.close(stmt);
	}
	return store;
}

public ArrayList<Lastorder> LastList(Connection conn, String sCode){
	ResultSet rset = null;
	Statement stmt = null;
	String query = "select LASTORDER_CODE, STOCK, DISCOUNT, LAST_MENU_NAME, LAST_PRICE, LAST_S_CODE, LAST_CATEGORY, LAST_PHOTO_PATH, TRUCK_Name, TRUCK_ADDR, LAST_PRICE*((100-DISCOUNT)*1/100) as fPrice from lastorder join seller on (last_s_code = s_code) where last_s_code = '"+sCode+"'";
	ArrayList<Lastorder> orderList = null;
	try {
		orderList = new ArrayList<Lastorder>();
		stmt = conn.createStatement();
		rset = stmt.executeQuery(query);
		while(rset.next()) {
			Lastorder order = new Lastorder();
			order.setLastorderCode(rset.getInt("LASTORDER_CODE"));
			order.setStock(rset.getInt("STOCK"));
			order.setDiscount(rset.getInt("DISCOUNT"));
			order.setLastMenuName(rset.getString("LAST_MENU_NAME"));
			order.setLastPrice(rset.getInt("LAST_PRICE"));
			order.setLastsCode(rset.getString("LAST_S_CODE"));
			order.setLastCategory(rset.getString("LAST_CATEGORY"));
			order.setLastPhotoPath(rset.getString("LAST_PHOTO_PATH"));
			order.setTruckAddr(rset.getString("TRUCK_ADDR"));
			order.setTruckName(rset.getString("TRUCK_NAME"));
			order.setfPrice(rset.getInt("fPrice"));
			orderList.add(order);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBCTemplate.close(rset);
		JDBCTemplate.close(stmt);
	}
	return orderList;
}

}
