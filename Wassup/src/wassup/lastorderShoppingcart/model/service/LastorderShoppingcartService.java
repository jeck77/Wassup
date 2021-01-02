package wassup.lastorderShoppingcart.model.service;

import java.sql.Connection;
import java.sql.SQLException;

import common.JDBCTemplate;
import wassup.lastorderShoppingcart.model.dao.LastorderShoppingcartDAO;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;

public class LastorderShoppingcartService {
	
	private JDBCTemplate factory;
	public LastorderShoppingcartService() {
		factory = JDBCTemplate.getConnection();
	}
	public int LshoppingCartInsert(LastorderShoppingcart order) {
		Connection conn = null;
		int result = 0;
		try {
		 conn = factory.createConnection();
			result = new LastorderShoppingcartDAO().LshoppingCartInsert(conn, order);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch blocks
			e.printStackTrace();
		}finally {
			JDBCTemplate.commit(conn);
		}
		return result;
	}


	public int LshoppingCartUpdate(LastorderShoppingcart order) {
		 int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new LastorderShoppingcartDAO().LshoppingCartUpdate(conn, order);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
	
	 public int LshoppingCartDelete(LastorderShoppingcart order) {
		  int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new LastorderShoppingcartDAO().LshoppingCartDelete(conn, order);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
	 
	 public int  LshoppingCartAllDelete(LastorderShoppingcart cart) {
		  int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new LastorderShoppingcartDAO().LshoppingCartAllDelete(conn, cart);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
}
