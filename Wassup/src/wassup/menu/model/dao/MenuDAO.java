package wassup.menu.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.menu.model.vo.Menu;

public class MenuDAO {
	
	// 한 판매자의 총 메뉴 리스트 출력
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

	public int totalCount(Connection conn, String sCode) {
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
	
	public String getPageNavi(Connection conn, String sCode, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		
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
			sb.append("<a href='/menu/list?currentPage="+(startNavi - 1) + "'> < </a>");
		}
		
		for (int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/menu/list?currentPage=" +i+ "'><b> " + i + "</b></a>");
			} else {
				sb.append("<a href='/menu/list?currentPage=" +i+ "'> " + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/menu/list?currentPage="+(endNavi + 1) + "'> > </a>");
		}
		return sb.toString();
	}

	public int insertMenu(Connection conn, Menu menu) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO MENU VALUES (MENU_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,menu.getSubMenuCode());
			pstmt.setString(2,menu.getMenuName());
			pstmt.setInt(3,menu.getPrice());
			pstmt.setString(4,menu.getsCode());
			pstmt.setInt(5,menu.getCategoryCode());
			pstmt.setString(6,menu.getDetail());
			pstmt.setString(7,menu.getSummary());
			pstmt.setString(8,menu.getMenuPhoto());
			pstmt.setString(9,menu.getMenuPhotoPath());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int updateMenu(Connection conn, Menu menu, int menuCode) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE MENU SET SUBMENU_CODE=?, MENU_NAME=?, PRICE=?, DETAIL=?, SUMMARY=?, MENU_PHOTO=?, MENU_PHOTO_PATH=? WHERE MENU_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,menu.getSubMenuCode());
			pstmt.setString(2,menu.getMenuName());
			pstmt.setInt(3,menu.getPrice());
			pstmt.setString(4,menu.getDetail());
			pstmt.setString(5,menu.getSummary());
			pstmt.setString(6,menu.getMenuPhoto());
			pstmt.setString(7,menu.getMenuPhotoPath());
			pstmt.setInt(8, menuCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
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
				String path = rset.getString("MENU_PHOTO_PATH");
				menu.setMenuCode(rset.getInt("MENU_CODE"));
				menu.setSubMenuCode(rset.getInt("SUBMENU_CODE"));
				menu.setMenuName(rset.getString("MENU_NAME"));
				menu.setPrice(rset.getInt("PRICE"));
				menu.setsCode(rset.getString("S_CODE"));
				menu.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				menu.setSummary(rset.getString("SUMMARY"));
				menu.setMenuPhoto(rset.getString("MENU_PHOTO"));
				menu.setDetail(rset.getString("DETAIL"));
				menu.setSubMenuName(rset.getString("SUBMENU_NAME"));
				menu.setCategoryName(rset.getString("CATEGORY_NAME"));
				if(path != null) {
					String result = "\\" + path.substring(path.lastIndexOf("\\i")+1);
					menu.setMenuPhotoPath(result);					
				} else {
					menu.setMenuPhotoPath("/img/category/basic.png");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return menu;
	}

	public int deleteMenu(Connection conn, int menuCode) {
		PreparedStatement pstmt = null;
		int result = 0;
		String qeury = "DELETE FROM MENU WHERE MENU_CODE=?";
		try {
			pstmt = conn.prepareStatement(qeury);
			pstmt.setInt(1, menuCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	
}
