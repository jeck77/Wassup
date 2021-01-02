
package wassup.shoppingCart.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import wassup.shoppingCart.model.vo.ShoppingCart;

public class ShoppingCartDAO {

	public int shoppingCartInsert(Connection conn, ShoppingCart cart) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "insert into shoppingcart values(shopping_SEQ.nextval, 1, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cart.getbCode());
			pstmt.setInt(2, cart.getMenuCode());
			pstmt.setString(3,  cart.getMenuName());
			pstmt.setInt(4, cart.getPrice());
			pstmt.setString(5, cart.getsCode());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}		
		return result;
	}

	public int shoppingCartUpdate(Connection conn, ShoppingCart cart) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "update shoppingcart set amount=? where b_code= ? and menu_Code=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, cart.getAmount());
			pstmt.setString(2, cart.getbCode());
			pstmt.setInt(3, cart.getMenuCode());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}		
		return result;
	}

	public int shoppingCartTotal(Connection conn, ShoppingCart cart) {
		int total = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select sum(amount*price) as total from shoppingcart where b_code=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cart.getbCode());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				total=rset.getInt("total");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}		
		return total;
	}

	public int shoppingCartDelete(Connection conn, ShoppingCart cart) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "delete from shoppingcart where b_Code=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cart.getbCode());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}		
		return result;
	}
	
	public int shoppingCartAllDelete(Connection conn, ShoppingCart cart) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "delete from shoppingcart where b_Code=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cart.getbCode());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}		
		return result;
	}

}
