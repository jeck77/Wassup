package wassup.menu.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.menu.model.dao.MenuDAO;
import wassup.menu.model.vo.Menu;
import wassup.menu.model.vo.MenuPage;

public class MenuService {
	
	private JDBCTemplate factory;
	
	public MenuService() {
		factory = JDBCTemplate.getConnection();
	}

	public MenuPage selectMenuList(String sCode, int currentPage) {
		Connection conn = null;
		ArrayList<Menu> mList = null;
		int recordCountPerPage = 10;
		int naviCountPerPage = 3;
		MenuPage menuPage = new MenuPage();
		
		try {
			conn = factory.createConnection();
			menuPage.setPageList(new MenuDAO().selectMenuList(conn, sCode, currentPage, recordCountPerPage));
			menuPage.setPageNavi(new MenuDAO().getPageNavi(conn, sCode, currentPage, recordCountPerPage, naviCountPerPage));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return menuPage;
	}

	public int insertMenu(Menu menu) {
		Connection conn = null;
		int result = 0;

		try {
			conn = factory.createConnection();
			result = new MenuDAO().insertMenu(conn, menu);
			if (result > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.commit(conn);
		}
		return result;
	}

	public int updateMenu(Menu menu, int menuCode) {
		Connection conn = null;
		int result = 0;
		
		try {
			conn = factory.createConnection();
			result = new MenuDAO().updateMenu(conn, menu, menuCode);
			if (result > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}

	public Menu selectOneMenu(int menuCode) {
		Menu menu = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			menu = new MenuDAO().selectOneMenu(conn, menuCode);			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return menu;
	}

	public int deleteMenu(int menuCode) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new MenuDAO().deleteMenu(conn, menuCode);
			
			if (result > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}

}
