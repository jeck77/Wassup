package wassup.lastorderShoppingcart.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.JDBCTemplate;
import wassup.lastorder.model.vo.Lastorder;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;
import wassup.shoppingCart.model.vo.ShoppingCart;

public class LastorderShoppingcartDAO {

public int LshoppingCartInsert(Connection conn, LastorderShoppingcart order) {
	int result = 0;
	PreparedStatement pstmt = null;
	
	String query = "insert into lastorder_shoppingcart values(LASTORDER_SHOPPINGCART_SEQ.nextval, ?, ?, ?, ?, ?, 1, ?)";
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, order.getLastorderCode());
		pstmt.setString(2, order.getbCode());
		pstmt.setString(3,  order.getLastMenuName());
		pstmt.setInt(4, order.getLastPrice());
		pstmt.setInt(5, order.getDiscount());
		pstmt.setString(6, order.getsCode());
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		JDBCTemplate.close(pstmt);
	}		
	return result;
}
public int LshoppingCartUpdate(Connection conn, LastorderShoppingcart order)  {
	int result = 0;
	PreparedStatement pstmt = null;
	String query = "update lastorder_shoppingcart set amount= ? where b_code= ? and lastorder_code= ?";
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, order.getAmount());
		pstmt.setString(2, order.getbCode());
		pstmt.setInt(3, order.getLastorderCode());
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		JDBCTemplate.close(pstmt);
	}		
	return result;
}

public int LshoppingCartDelete(Connection conn, LastorderShoppingcart order) {
	int result = 0;
	PreparedStatement pstmt = null;
	String query = "delete from lastorder_shoppingcart where b_code= ? and lastorder_code= ?";
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, order.getbCode());
		pstmt.setInt(2, order.getLastorderCode());
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		JDBCTemplate.close(pstmt);
	}		
	return result;
}

public int LshoppingCartAllDelete(Connection conn, LastorderShoppingcart cart) {
	int result = 0;
	PreparedStatement pstmt = null;
	String query = "delete from lastorder_shoppingcart where b_code= ?";
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
