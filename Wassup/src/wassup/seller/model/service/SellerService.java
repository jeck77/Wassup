package wassup.seller.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Reply;
import wassup.buyer.model.vo.Review;
import wassup.seller.model.dao.SellerDAO;
import wassup.seller.model.vo.Seller;

public class SellerService {
	private JDBCTemplate factory;

	public SellerService(){
		factory = JDBCTemplate.getConnection();
	}
	


	public Seller sellerSelectLogin(String sId, String sPwd) {
		Seller seller = null;
		try {
			Connection conn = factory.createConnection();
			seller = new SellerDAO().SellerSelectLogin(conn,sId,sPwd);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return seller;
	}

	public int insertSeller(Seller seller) {
		int result=0;
		Connection conn = null;
		try {
			conn=factory.createConnection();
			result = new SellerDAO().insertSeller(conn, seller);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}



	public Seller selectOne(String userId) {
		Seller seller = null;
		Connection conn = null;
		try {
			conn=factory.createConnection();
			seller = new SellerDAO().selectOne(conn, userId);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return seller;
	}

	public int updateSeller(Seller seller) {
		int result=0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new SellerDAO().updateSeller(conn, seller);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}
	
	public int deleteSeller(String userId) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new SellerDAO().deleteSeller(conn, userId);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<Order> sellerOrderList(String sCode,String status){
		ArrayList<Order> oList = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			oList = new SellerDAO().sellerOrderList(conn,sCode,status);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
				JDBCTemplate.commit(conn);
				JDBCTemplate.rollback(conn);
		}
		return oList;
	}
	
	public ArrayList<Order> sellerOrderOne(String receiptCode){
		ArrayList<Order> oList = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			oList = new SellerDAO().sellerOrderOne(conn,receiptCode);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.commit(conn);
			JDBCTemplate.rollback(conn);
		}
		return oList;
	}
	
	public int sellerOrderUpdate(String status, String receiptCode) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new SellerDAO().sellerOrderUpdate(conn,status,receiptCode);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.commit(conn);
			JDBCTemplate.rollback(conn);
		}
		
		return result;
	}
	
	public ArrayList<Review> selectreviewList(String sCode){
		ArrayList<Review> rList = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			rList = new SellerDAO().selectreviewList(conn,sCode);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.commit(conn);
			JDBCTemplate.rollback(conn);
			
		}
		return rList;
	}
	
	public Review selectReviewOne(int reviewCode) {
		Review review = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			review = new SellerDAO().selectReview(conn,reviewCode);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return review;
	}
	
	public int sellerReplyInsert(String replyContent,int reviewCode) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new SellerDAO().sellerReplyInsert(conn,replyContent,reviewCode);
			if(result>0) {
				conn.commit();
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<Reply> selectReplyList(){
		ArrayList<Reply> rplyList = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			rplyList = new SellerDAO().selectReplyList(conn);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rplyList;
	}
	
	public int totalOrder(String userCode) {
		int total = 0;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			total = new SellerDAO().totalOrder(conn,userCode);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	
	public int totalReview(String userCode) {
		int total = 0;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			total = new SellerDAO().totalReview(conn,userCode);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	
	public int updateFavorite(String truckAddr,String truckName,String sCode) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			result = new SellerDAO().updateFavorite(conn,truckAddr,truckName,sCode);
			System.out.println(truckAddr);
			System.out.println(truckName);
			System.out.println(sCode);
			if(result>0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		return result;
	}
}
