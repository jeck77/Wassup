package wassup.lastorder.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.lastorder.model.dao.LastorderDAO;
import wassup.lastorder.model.vo.Lastorder;
import wassup.lastorder.model.vo.LastorderPage;
import wassup.lastorder.model.vo.LastorderViewPage;
import wassup.lastorder.model.vo.MenuPage2;
import wassup.menu.model.vo.Menu;
import wassup.search.model.dao.SearchDAO;
import wassup.shoppingCart.model.dao.ShoppingCartDAO;

public class LastorderService {

	private JDBCTemplate factory;

	public LastorderService() {
		factory = JDBCTemplate.getConnection();
	}
	
	public LastorderPage selectLastorderList(String sCode, int currentPage) {
		Connection conn = null;
		ArrayList<Lastorder> lList = null;
		int recordCountPerPage = 10;
		int naviCountPerPage = 3;
		LastorderPage lastorderPage = new LastorderPage();

		try {
			conn = factory.createConnection();
			lastorderPage.setPageList(new LastorderDAO().selectLastorderList(conn, sCode, currentPage, recordCountPerPage));
			lastorderPage.setLastPageNavi(new LastorderDAO().getLastPageNavi(conn, sCode, currentPage, recordCountPerPage, naviCountPerPage));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return lastorderPage;
	}
	public MenuPage2 selectMenuList(String sCode, int currentPage) {
		Connection conn = null;
		ArrayList<Menu> mList = null;
		int recordCountPerPage = 10;
		int naviCountPerPage = 3;
		MenuPage2 menuPage2 = new MenuPage2();

		try {
			conn = factory.createConnection();
			menuPage2.setPageList2(new LastorderDAO().selectMenuList(conn, sCode, currentPage, recordCountPerPage));
			menuPage2.setPageNavi2(new LastorderDAO().getPageNavi2(conn, sCode, currentPage, recordCountPerPage, naviCountPerPage));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return menuPage2;
	}
	public Menu selectOneMenu(int menuCode) {
		Menu menu = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			menu = new LastorderDAO().selectOneMenu(conn, menuCode);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return menu;
	}
	public int insertLastorder(Lastorder lastorder) {
		Connection conn = null;
		int result = 0;
		
		try {
			conn = factory.createConnection();
			result = new LastorderDAO().insertLastorder(conn, lastorder);

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
	public Lastorder selectOneLastorder(int lastorderCode) {
		Lastorder lastorder = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			lastorder = new LastorderDAO().selectOneLastorder(conn, lastorderCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lastorder;
	}
	public int updateLastorder(int stock, int discount, int lastorderCode) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			result = new LastorderDAO().updateLastorder(conn, stock, discount, lastorderCode);
			if (result > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}
	public int deleteLastorder(int lastorderCode) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			result = new LastorderDAO().deleteLastorder(conn, lastorderCode);
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
	
	public LastorderViewPage selectBuyerview(int currentPage) {
		Connection conn = null;
		ArrayList<Lastorder> lList2 = null;
		int recordCountPerPage = 5;
		int naviCountPerPage = 3;
		LastorderViewPage lastorderViewPage = new LastorderViewPage();
		try {
			conn = factory.createConnection();
			lastorderViewPage.setPageViewList(new LastorderDAO().selectBuyerview(conn, currentPage, recordCountPerPage));
			lastorderViewPage.setLastViewPageNavi(new LastorderDAO().getLastViewPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return lastorderViewPage;
	}
	
	public Lastorder LastSelect(String sCode){
		Lastorder store = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			store = new LastorderDAO().LastSelect(conn, sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCTemplate.close(conn);
		}
		return store;
	}
	
	public ArrayList<Lastorder> LastList(String sCode){
		Connection conn = null;
		ArrayList<Lastorder> order = null;
		try {
			conn = factory.createConnection();
			order = new LastorderDAO().LastList(conn, sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCTemplate.close(conn);
		}
		return order;
	}
	
}
