
  package wassup.shoppingCart.model.service;

import java.sql.Connection;
import java.sql.SQLException;

import common.JDBCTemplate;
import wassup.seller.model.dao.SellerDAO;
import wassup.shoppingCart.model.dao.ShoppingCartDAO;
import wassup.shoppingCart.model.vo.ShoppingCart;

public class ShoppingCartService {
	
	private JDBCTemplate factory;
	public ShoppingCartService() {
		factory = JDBCTemplate.getConnection();
	}
	  
	  public int shoppingCartInsert(ShoppingCart cart) {
		  int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new ShoppingCartDAO().shoppingCartInsert(conn, cart);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
	  
	  public int shoppingCartUpdate(ShoppingCart cart) {
		  int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new ShoppingCartDAO().shoppingCartUpdate(conn, cart);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
	  
	  public int shoppingCartTotal(ShoppingCart cart) {
		 int total = 0;
			try {
				Connection conn = factory.createConnection();
				total = new ShoppingCartDAO().shoppingCartTotal(conn,cart);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
		  
		  return total;
	  }
	  
	  public int shoppingCartDelete(ShoppingCart cart) {
		  int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new ShoppingCartDAO().shoppingCartDelete(conn, cart);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
	  
	  public int shoppingCartAllDelete(ShoppingCart cart) {
		  int result = 0;
			try {
				Connection conn = factory.createConnection();
				result = new ShoppingCartDAO().shoppingCartAllDelete(conn, cart);
				JDBCTemplate.close(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch blocks
				e.printStackTrace();
			}
			return result;
	  }
  
  }
