package wassup.seller.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Reply;
import wassup.buyer.model.vo.Review;
import wassup.seller.model.vo.Seller;

public class SellerDAO {

	public Seller SellerSelectLogin(Connection conn, String sId, String sPwd) {
		Statement stmt = null;
		ResultSet rset = null;
		String query = "select * from seller join category using(category_code) where s_id= '" + sId + "' and s_pwd='"
				+ sPwd + "'";
		Seller seller = null;
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			if (rset.next()) {
				seller = new Seller();
				seller.setsCode(rset.getString("S_CODE"));
				seller.setsName(rset.getString("S_NAME"));
				seller.setsBirth(rset.getDate("S_BIRTH"));
				seller.setTruckAddr(rset.getString("TRUCK_ADDR"));
				seller.setsId(rset.getString("S_ID"));
				seller.setsPwd(rset.getString("S_PWD"));
				seller.setsNick(rset.getString("S_NICK"));
				seller.setsCoopNum(rset.getString("S_COOP_NUM"));
				seller.setTruckName(rset.getString("TRUCK_NAME"));
				seller.setsPhone(rset.getString("S_PHONE"));
				seller.setsEnrollDate(rset.getDate("S_ENROLL_DATE"));
				seller.setLogoPhoto(rset.getString("LOGO_PHOTO"));
				seller.setLogoPhotoPath(rset.getString("LOGO_PHOTO_PATH"));
				seller.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				seller.setCategoryName(rset.getString("CATEGORY_NAME"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
//		System.out.println(null.toString());
		return seller;
	}

	public int insertSeller(Connection conn, Seller seller) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "insert into seller (s_code, category_code, s_name, s_birth, truck_addr, s_id, s_pwd, s_nick, s_coop_num, truck_name, s_phone, s_enroll_date) "
				+ "values ('s'||SELLER_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, seller.getCategoryCode());
			pstmt.setString(2, seller.getsName());
			pstmt.setDate(3, seller.getsBirth());
			pstmt.setNString(4, seller.getTruckAddr());
			pstmt.setNString(5, seller.getsId());
			pstmt.setNString(6, seller.getsPwd());
			pstmt.setNString(7, seller.getsNick());
			pstmt.setString(8, seller.getsCoopNum());
			pstmt.setNString(9, seller.getTruckName());
			pstmt.setNString(10, seller.getsPhone());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public Seller selectOne(Connection conn, String userId) {
		Seller seller = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM SELLER WHERE S_ID = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				seller=new Seller();
				seller.setsId(rset.getNString("S_ID"));
				seller.setTruckAddr(rset.getString("TRUCK_ADDR"));
				seller.setsBirth(rset.getDate("S_BIRTH"));
				seller.setsCode(rset.getNString("S_CODE"));
				seller.setsEnrollDate(rset.getDate("S_ENROLL_DATE"));
				seller.setsName(rset.getNString("S_NAME"));
				seller.setsNick(rset.getString("S_NICK"));	
				seller.setsPhone(rset.getNString("S_PHONE"));
				seller.setsPwd(rset.getNString("S_PWD"));
				seller.setsCoopNum(rset.getNString("S_COOP_NUM"));
				seller.setTruckName(rset.getNString("TRUCK_NAME"));
				seller.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				seller.setLogoPhoto(rset.getNString("LOGO_PHOTO"));
				String path = rset.getString("LOGO_PHOTO_PATH");
				if(path!=null) {
					String result = "\\" + path.substring(path.lastIndexOf("\\i")+1);
					seller.setLogoPhotoPath(result);					
				} else {
					seller.setLogoPhotoPath(path);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return seller;
	}

	public int updateSeller(Connection conn, Seller seller) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE SELLER SET S_PWD=?, S_NICK=?, S_COOP_NUM=?, S_PHONE=?, S_BIRTH=?, CATEGORY_CODE=?, TRUCK_NAME=?, LOGO_PHOTO=?, LOGO_PHOTO_PATH=? ,truck_addr = ?WHERE S_ID=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setNString(1, seller.getsPwd());
			pstmt.setNString(2, seller.getsNick());
			pstmt.setNString(3, seller.getsCoopNum());
			pstmt.setNString(4, seller.getsPhone());
			pstmt.setDate(5, seller.getsBirth());
			pstmt.setInt(6, seller.getCategoryCode());
			pstmt.setNString(7, seller.getTruckName());
			pstmt.setString(8, seller.getLogoPhoto());
			pstmt.setNString(9, seller.getLogoPhotoPath());
			pstmt.setString(10,seller.getTruckAddr());
			pstmt.setNString(11, seller.getsId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int updateFavorite(Connection conn,String truckAddr,String truckName, String sCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "update favority set truck_addr = ?,truck_name = ? where s_Code = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, truckAddr);
			pstmt.setString(2, truckName);
			pstmt.setString(3, sCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	public int deleteSeller(Connection conn, String userId) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM SELLER WHERE S_ID=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setNString(1, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<Order> sellerOrderList(Connection conn, String sCode, String status) {
		ArrayList<Order> oList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = null;
		if (status.equals("null")) {
			query = "SELECT S_CODE,RECEIPT_CODE,B_ID,payment_ways,sum((price*amount)) as price,order_status,b_request,to_char(order_date,'yyyy-mm-dd hh24:mi:ss') as order_date FROM ORDER_TBL GROUP BY S_CODE,RECEIPT_CODE,B_ID,order_status,b_request,to_char(order_date,'yyyy-mm-dd hh24:mi:ss'),payment_ways having s_code = ? and order_status not in ('완료')";
		} else {
			query = "SELECT S_CODE,RECEIPT_CODE,B_ID,payment_ways,sum((price*amount)) as price,order_status,b_request,to_char(order_date,'yyyy-mm-dd hh24:mi:ss') as order_date FROM ORDER_TBL GROUP BY S_CODE,RECEIPT_CODE,B_ID,order_status,b_request,to_char(order_date,'yyyy-mm-dd hh24:mi:ss'),payment_ways having s_code = ? and order_status = ?";
		}
		try {
			pstmt = conn.prepareStatement(query);
			if (status.equals("null")) {
				pstmt.setString(1, sCode);
			} else {
				pstmt.setString(1, sCode);
				pstmt.setString(2, status);
			}
			rset = pstmt.executeQuery();
			oList = new ArrayList<Order>();
			while (rset.next()) {
				Order order = new Order();
				order.setReceiptCode(rset.getString("RECEIPT_CODE"));
				order.setbId(rset.getString("B_ID"));
				order.setPrice(rset.getInt("price"));
				order.setOrderStatus(rset.getString("order_Status"));
				order.setbRequest(rset.getString("b_request"));
				order.setOrderDate(rset.getTimestamp("order_date"));
				order.setPaymentWays(rset.getString("payment_ways"));
				oList.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}

		return oList;
	}

	public ArrayList<Order> sellerOrderOne(Connection conn, String receiptCode) {
		ArrayList<Order> oList = null;
		PreparedStatement pstmt = null;
		String query = "select * from order_tbl where RECEIPT_CODE = ?";
		ResultSet rset = null;
		try {

			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, receiptCode);
			rset = pstmt.executeQuery();
			oList = new ArrayList<Order>();

			while (rset.next()) {
				Order order = new Order();
				order.setOrderCode(rset.getInt("order_code"));
				order.setbId(rset.getString("b_id"));
				order.setReceiptCode(rset.getString("receipt_Code"));
				order.setMenuCode(rset.getInt("menu_Code"));
				order.setMenuName(rset.getString("menu_Name"));
				order.setPrice(rset.getInt("price"));
				order.setAmount(rset.getInt("amount"));
				order.setOrderStatus(rset.getString("order_status"));
				order.setPaymentWays(rset.getString("payment_Ways"));
				order.setsCode(rset.getString("s_code"));
				order.setTruckName(rset.getString("truck_name"));
				order.setbRequest(rset.getString("b_request"));
				order.setOrderDate(rset.getTimestamp("order_date"));
				oList.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return oList;
	}

	public int sellerOrderUpdate(Connection conn, String status, String receiptCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "update order_tbl set order_status = ? where receipt_code = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, status);
			pstmt.setString(2, receiptCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<Review> selectreviewList(Connection conn, String sCode) {
		ArrayList<Review> rList = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM REVIEW join BUYER USING(B_CODE) where s_code= ?";
		ResultSet rset = null;
		try {

			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			rList = new ArrayList<Review>();

			while (rset.next()) {
				Review review = new Review();
				review.setbName(rset.getString("b_name"));
				review.setOrderCode(rset.getInt("order_code"));
				review.setReviewCode(rset.getInt("review_code"));
				review.setGrade(rset.getInt("grade"));
				review.setReviewDate(rset.getTimestamp("review_date"));
				rList.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rList;

	}

	public Review selectReview(Connection conn, int reviewCode) {
		Review review = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM REVIEW join BUYER USING(B_CODE) join seller using(s_code) where REVIEW_CODE=?";
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reviewCode);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				review = new Review();
				review.setReviewCode(reviewCode);
				review.setbName(rset.getString("b_name"));
				review.setReviewContent(rset.getString("review_content"));
				review.setGrade(rset.getInt("grade"));
				review.setTruckName(rset.getString("truck_name"));
				if(rset.getString("review_photo_path") != null) {
				String path = rset.getString("review_photo_path");
				String result = "\\" + path.substring(path.lastIndexOf("\\i")+1);
				review.setReviewPhotoPath(result);
				}

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return review;

	}
	
	public int sellerReplyInsert(Connection conn,String replyContent,int reviewCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO REVIEW_REPLY VALUES(REPLY_SEQ.nextval,?,?,to_char(systimestamp, 'YYYY-MM-DD HH:MI'))";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,reviewCode);
			pstmt.setString(2, replyContent);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Reply> selectReplyList(Connection conn){
		ArrayList<Reply> rplyList = null;
		PreparedStatement pstmt = null;
		String query = "select * from review_reply";
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			rplyList = new ArrayList<Reply>();
			while(rset.next()) {
				Reply reply = new Reply();
				reply.setReviewCode(rset.getInt("review_code"));
				rplyList.add(reply);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		return rplyList;
	}
	
	public int totalOrder(Connection conn,String userCode) {
		int total = 0;
		PreparedStatement pstmt = null;
		String query = "select count(*) as total from (SELECT receipt_code FROM ORDER_tbl group by receipt_code,s_code,order_status having s_code= ?  and order_status not in('완료'))";
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				total = rset.getInt("total");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return total;
	}
	
	public int totalReview(Connection conn,String userCode) {
		int total = 0;
		PreparedStatement pstmt = null;
		String query = "select count(*) as total from review LEFT outer join review_reply using(review_code) where reply_code is null and s_code = ?";
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				total = rset.getInt("total");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return total;
	}
	

}
