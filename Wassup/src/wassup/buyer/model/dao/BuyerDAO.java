
package wassup.buyer.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.FavorityTruck;
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Review;
import wassup.buyer.model.vo.ShoppingCart;
import wassup.coupon.model.vo.Coupon;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;
import wassup.search.model.vo.Seller;

public class BuyerDAO {
	public Buyer buyerSelectLogin(Connection conn, String bId, String bPwd) {
		Statement stmt = null;
		ResultSet rset = null;
		String query ="SELECT * FROM BUYER WHERE b_ID ='" + bId + "' AND b_PWD ='" + bPwd + "'";
		Buyer buyer = null;
		
		try {
			// statement 생성
			stmt = conn.createStatement();
			// 쿼리문 실행 및 결과 가져오기
			rset = stmt.executeQuery(query);
			if (rset.next()) {
				buyer = new Buyer();
				buyer.setbId(rset.getString("B_ID"));
				buyer.setbPwd(rset.getString("B_PWD"));
				buyer.setbName(rset.getString("B_NAME"));
				buyer.setbNick(rset.getString("B_NICK"));
				buyer.setbCode(rset.getString("B_CODE"));
				buyer.setbBirth(rset.getDate("B_BIRTH"));
				buyer.setbAddr(rset.getString("B_ADDR"));
				buyer.setbPhone(rset.getString("B_PHONE"));
				buyer.setbEnrollDate(rset.getDate("B_ENROLL_DATE"));
				buyer.setbRoadName(rset.getString("B_ROADNAME"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		return buyer;
	}
	public int insertBuyer(Connection conn, Buyer buyer) {
		int result=0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO BUYER (B_CODE, B_NAME, B_BIRTH, B_ADDR, B_ID, B_PWD, B_NICK, B_PHONE, B_ENROLL_DATE, B_ROADNAME) "
				+ "VALUES ('b'||BUYER_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?,SYSDATE,?)";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, buyer.getbName());
			pstmt.setDate(2, buyer.getbBirth());
			pstmt.setNString(3, buyer.getbAddr());
			pstmt.setNString(4, buyer.getbId());
			pstmt.setNString(5, buyer.getbPwd());
			pstmt.setNString(6, buyer.getbNick());
			pstmt.setNString(7, buyer.getbPhone());
			pstmt.setString(8, buyer.getbRoadName());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		} 
		
		return result;
	}
	
	public int deleteBuyer(Connection conn, String userId) {
		int result=0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM BUYER WHERE B_ID=?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public Buyer selectOne(Connection conn, String userId) {
		Buyer buyer = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM BUYER WHERE B_ID = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				buyer=new Buyer();
				buyer.setbId(rset.getNString("B_ID"));
				buyer.setbAddr(rset.getString("B_ADDR"));
				buyer.setbRoadName(rset.getNString("B_ROADNAME"));
				buyer.setbBirth(rset.getDate("B_BIRTH"));
				buyer.setbCode(rset.getNString("B_CODE"));
				buyer.setbEnrollDate(rset.getDate("B_ENROLL_DATE"));
				buyer.setbName(rset.getNString("B_NAME"));
				buyer.setbNick(rset.getString("B_NICK"));	
				buyer.setbPhone(rset.getNString("B_PHONE"));
				buyer.setbPwd(rset.getNString("B_PWD"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return buyer;
	}

	public int updateBuyer(Connection conn, Buyer buyer) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE BUYER SET B_PWD=?, B_NICK=?, B_PHONE=?, B_BIRTH=?, B_ADDR=?, B_ROADNAME=? WHERE B_ID=?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setNString(1, buyer.getbPwd());
			pstmt.setNString(2, buyer.getbNick());
			pstmt.setNString(3, buyer.getbPhone());
			pstmt.setDate(4, buyer.getbBirth());
			pstmt.setString(5, buyer.getbAddr());
			pstmt.setString(6, buyer.getbRoadName());
			pstmt.setNString(7, buyer.getbId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	

	
	public ArrayList<Order> selectOrderList(Connection conn, String bId){
		ArrayList<Order> oList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select truck_name,receipt_code,sum((price*amount)) as total,to_char(order_date,'yyyy-mm-dd hh24:mi:ss') as order_date,order_status from order_tbl GROUP BY receipt_code,truck_name,to_char(order_date,'yyyy-mm-dd hh24:mi:ss'),b_id,order_status having b_id=? order by receipt_code asc";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bId);
			rset  = pstmt.executeQuery();
			oList = new ArrayList<Order>();
			while(rset.next()) {
				Order order = new Order();
				order.setTruckName(rset.getString("truck_name"));
				order.setPrice(rset.getInt("total"));
				order.setReceiptCode(rset.getString("receipt_code"));
				order.setOrderDate(rset.getTimestamp("order_date"));
				order.setOrderStatus(rset.getString("order_status"));
				oList.add(order);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return oList;
	}
	
	public ArrayList<Order> selectOrderOne(Connection conn, int receiptCode){
		ArrayList<Order> oList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from order_tbl where receipt_Code = ? ";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, receiptCode);
			rset  = pstmt.executeQuery();
			oList = new ArrayList<Order>();
			while(rset.next()) {
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
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return oList;
	}
	
	public ArrayList<Order> reviewSelectList(Connection conn,Buyer buyer){
		ArrayList<Order> oList = null;
		PreparedStatement pstmt = null;
		String bId = buyer.getbId();
		String query = "select s_Code,truck_name,receipt_code,sum((price*amount)) as total,to_char(order_date,'yyyy-mm-dd hh24:mi:ss') as order_date ,order_status from order_tbl GROUP BY receipt_code,truck_name,to_char(order_date,'yyyy-mm-dd hh24:mi:ss'),b_id,order_status,s_Code having b_id=? and order_status = '완료'";
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,bId);
			rset = pstmt.executeQuery();
			oList = new ArrayList<Order>();
			while(rset.next()) {
				Order order = new Order();
				order.setsCode(rset.getString("S_CODE"));
				order.setPrice(rset.getInt("TOTAL"));
				order.setOrderDate(rset.getTimestamp("order_date"));
				order.setOrderStatus(rset.getString("order_status"));
				order.setTruckName(rset.getString("truck_name"));
				order.setReceiptCode(rset.getString("receipt_code"));
				oList.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return oList;
	}
	
	public ArrayList<Review> reviewList(Connection conn,Buyer buyer){
		ArrayList<Review> rList = null;
		PreparedStatement pstmt = null;
		String query = "select * from review where b_CODE = ?"; 
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, buyer.getbCode());
			rset = pstmt.executeQuery();
			rList = new ArrayList<Review>();
			while(rset.next()) {
				Review review = new Review();
				review.setOrderCode(rset.getInt("ORDER_CODE"));
				rList.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return rList;
	}
	public int reviewInsert(Connection conn, Review review) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO REVIEW VALUES(REVIEW_SEQ.NEXTVAL,?,?,?,?,?,?,?,systimestamp)";
		
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, review.getOrderCode());
			pstmt.setString(2, review.getsCode());
			pstmt.setString(3, review.getbCode());
			pstmt.setInt(4, review.getGrade());
			pstmt.setString(5, review.getReviewPhoto());
			pstmt.setString(6, review.getReviewContent());
			pstmt.setNString(7, review.getReviewPhotoPath());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	
	public int reviewDelete(Connection conn, int orderCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM REVIEW WHERE ORDER_CODE = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, orderCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public Order totalOrder(Connection conn,String userId) {
		PreparedStatement pstmt = null;
		String query = "select sum(price*amount) as total ,b_id from order_tbl group by b_id having b_id= ?";
		Order order = null;
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,userId);
			rset = pstmt.executeQuery();
			order = new Order();
				if(rset.next()) {
					order.setPrice(rset.getInt("total"));
				}else {
					order.setPrice(0);
				}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return order;
	}
	
	public Review totalReview(Connection conn, String userCode) {
		PreparedStatement pstmt = null;
		String query = "select count(*) as total_review,b_code from review group by b_code having b_code = ?";
		Review review = null;
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,userCode);
			rset = pstmt.executeQuery();
			review = new Review();
				if(rset.next()) {
					review.setCount(rset.getInt("total_review"));
				}else {
					review.setCount(0);
				}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return review;
	}
	
	public FavorityTruck totalFavority(Connection conn, String userCode) {
		PreparedStatement pstmt = null;
		String query = "SELECT COUNT(*) AS COUNT FROM FAVORITY GROUP BY B_CODE HAVING B_CODE=?";
		FavorityTruck favority = null;
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,userCode);
			rset = pstmt.executeQuery();
			favority = new FavorityTruck();
				if(rset.next()) {
					favority.setCount(rset.getInt("count"));
				}else {
					favority.setCount(0);
				}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return favority;
	}
	
	public ArrayList<ShoppingCart> bringCart(Connection conn, String userCode) {
		ArrayList<ShoppingCart> cart = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM SHOPPINGCART WHERE B_CODE = ?";
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, userCode);
			rset = pstmt.executeQuery();
			cart = new ArrayList<ShoppingCart>();
			while(rset.next()) {
				ShoppingCart cartOne = new ShoppingCart();
				cartOne.setbCode(rset.getString("B_CODE"));
				cartOne.setsCode(rset.getString("S_CODE"));
				cartOne.setAmount(rset.getInt("AMOUNT"));
				cartOne.setMenuCode(rset.getInt("MENU_CODE"));
				cartOne.setMenuName(rset.getString("MENU_NAME"));
				cartOne.setPrice(rset.getInt("PRICE"));
				cartOne.setShoppingCartCode(rset.getInt("SHOPPINGCART_CODE"));
				cart.add(cartOne);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return cart;
	}
	
	public int bringTotal(Connection conn, String userCode) {
		int total= 0;
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String query = "SELECT SUM(PRICE*AMOUNT) FROM SHOPPINGCART WHERE B_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				total = rset.getInt("SUM(PRICE*AMOUNT)");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return total;
	}
	
	
	public ArrayList<Coupon> bringCoupon(Connection conn, String userCode) {
		ArrayList<Coupon> coupon = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM COUPON WHERE B_CODE=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setNString(1, userCode);
			rset = pstmt.executeQuery();
			coupon = new ArrayList<Coupon>();
			while(rset.next()) {
				Coupon cOne = new Coupon();
				cOne.setbCode(rset.getString("B_CODE"));
				cOne.setcCode(rset.getInt("C_CODE"));
				cOne.setcDiscount(rset.getInt("C_DISCOUNT"));
				cOne.setcName(rset.getNString("C_NAME"));
				coupon.add(cOne);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return coupon;
	}

	
	public int deleteFavority(Connection conn, String userCode, String truckName) {
		int result=0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM FAVORITY WHERE B_CODE=? AND TRUCK_NAME=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setNString(1, userCode);
			pstmt.setNString(2, truckName);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public ArrayList<FavorityTruck> bringFavority(Connection conn, String userCode, int currentPage,int recordCountPerPage) {
		ArrayList<FavorityTruck> truck = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM (select * from (SELECT FAVORITY.*, ROW_NUMBER() OVER(ORDER BY FAVORITY_CODE ASC) AS NUM FROM FAVORITY WHERE B_CODE = ?) JOIN SELLER USING(S_CODE) ) WHERE NUM BETWEEN ? AND ?";
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setNString(1, userCode);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			truck = new ArrayList<FavorityTruck>();
			rset = pstmt.executeQuery();
			while (rset.next())	{
				FavorityTruck truckOne = new FavorityTruck();
				truckOne.setbCode(rset.getNString("B_CODE"));
				truckOne.setsCode(rset.getString("S_CODE"));
				truckOne.setFavorityCode(rset.getInt("FAVORITY_CODE"));
				truckOne.setTruckName(rset.getNString("TRUCK_NAME"));
				truckOne.setTruckAddr(rset.getNString("TRUCK_ADDR"));		
				String path = rset.getString("LOGO_PHOTO_PATH");
				String result = null;
				if (path != null && !path.equals("\\null") && !path.equals("null")) {
					result = "\\" + path.substring(path.lastIndexOf("\\i") + 1);
					truckOne.setLogoPhotoPath(result);
				} else {
					truckOne.setLogoPhotoPath("/img/category/basic.png");
				}
				truck.add(truckOne);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return truck;
	}
	
	public String getPageNavi(Connection conn, String userCode, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		
		int recordTotalCount = totalCount(conn, userCode);
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
			sb.append("<a href='/buyer/favorityForm?currentPage="+(startNavi - 1) + "'> < </a>");
		}
		
		for (int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/buyer/favorityForm?currentPage=" +i+ "'><b> " + i + "</b></a>");
			} else {
				sb.append("<a href='/buyer/favorityForm?currentPage=" +i+ "'> " + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/buyer/favorityForm?currentPage="+(endNavi + 1) + "'> > </a>");
		}
		return sb.toString();
	}
	
	public int totalCount(Connection conn, String userCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM FAVORITY WHERE B_CODE = ?";
		int recordTotalCount = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userCode);
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
	
	public int turckFavority(Connection conn, FavorityTruck truck) {
		int result=0;
		PreparedStatement pstmt = null;
		String query = "insert into favority(FAVORITY_CODE, B_CODE, S_CODE, TRUCK_NAME, TRUCK_ADDR) values(FAVORITE_SEQ.NEXTVAL, ?, ?, ?, ?)";		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, truck.getbCode());
			pstmt.setString(2, truck.getsCode());
			pstmt.setString(3, truck.getTruckName());
			pstmt.setString(4, truck.getTruckAddr());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}
	
	public int deleteCoupon(Connection conn, int cCode, String userCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM COUPON WHERE B_CODE=? AND C_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setNString(1, userCode);
			pstmt.setInt(2, cCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	
	public int insertOrder(Connection conn, ArrayList<Order> order) {
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			for(int i=0; i<order.size(); i++) {
				if(i==0) {
					String query="INSERT INTO ORDER_TBL VALUES (ORDER_SEQ.NEXTVAL, ?, RECEIPT_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?,?,systimestamp)";
					pstmt = conn.prepareStatement(query);
					pstmt.setString(1, order.get(i).getbId());
					pstmt.setInt(2, order.get(i).getMenuCode());
					pstmt.setString(3, order.get(i).getMenuName());
					pstmt.setInt(4, order.get(i).getPrice());
					pstmt.setInt(5,  order.get(i).getAmount());
					pstmt.setNString(6, order.get(i).getOrderStatus());
					pstmt.setString(7, order.get(i).getPaymentWays());
					pstmt.setNString(8, order.get(i).getsCode());
					pstmt.setNString(9, order.get(i).getTruckName());
					pstmt.setNString(10, order.get(i).getbRequest());
					result = pstmt.executeUpdate();
				} else {
					String query="INSERT INTO ORDER_TBL VALUES (ORDER_SEQ.NEXTVAL, ?, RECEIPT_SEQ.CURRVAL, ?, ?, ?, ?, ?, ?, ?, ?,?,systimestamp)";
					pstmt = conn.prepareStatement(query);
					pstmt.setString(1, order.get(i).getbId());
					pstmt.setInt(2, order.get(i).getMenuCode());
					pstmt.setString(3, order.get(i).getMenuName());
					pstmt.setInt(4, order.get(i).getPrice());
					pstmt.setInt(5,  order.get(i).getAmount());
					pstmt.setNString(6, order.get(i).getOrderStatus());
					pstmt.setString(7, order.get(i).getPaymentWays());
					pstmt.setNString(8, order.get(i).getsCode());
					pstmt.setNString(9, order.get(i).getTruckName());
					pstmt.setNString(10, order.get(i).getbRequest());
					result = pstmt.executeUpdate();
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int updateStock(Connection conn, int sum, int menuCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE LASTORDER SET STOCK=? WHERE LASTORDER_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, sum);
			pstmt.setInt(2, menuCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int deleteStock(Connection conn, int menuCode) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query ="DELETE FROM LASTORDER WHERE LASTORDER_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, menuCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int bringLastTotal(Connection conn, String userCode) {
		int lastTotal= 0;
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		String query = "SELECT SUM(LAST_PRICE*AMOUNT) FROM LASTORDER_SHOPPINGCART WHERE B_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userCode);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				lastTotal = rset.getInt("SUM(LAST_PRICE*AMOUNT)");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return lastTotal;
	}
	
	public ArrayList<LastorderShoppingcart> bringLastCart(Connection conn, String userCode) {
		ArrayList<LastorderShoppingcart> cart = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM LASTORDER_SHOPPINGCART JOIN LASTORDER USING (LAST_MENU_NAME) WHERE B_CODE = ?";
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, userCode);
			rset = pstmt.executeQuery();
			cart = new ArrayList<LastorderShoppingcart>();
			while(rset.next()) {
				LastorderShoppingcart cartOne = new LastorderShoppingcart();
				cartOne.setbCode(rset.getString("B_CODE"));
				cartOne.setsCode(rset.getString("S_CODE"));
				cartOne.setAmount(rset.getInt("AMOUNT"));
				cartOne.setLastorderCode(rset.getInt("LASTORDER_CODE"));
				cartOne.setLastMenuName(rset.getString("LAST_MENU_NAME"));
				cartOne.setLastPrice(rset.getInt("LAST_PRICE"));
				cartOne.setLastorderShoppingcartCode(rset.getInt("LASTORDER_SHOPPINGCART_CODE"));
				cartOne.setDiscount(rset.getInt("DISCOUNT"));
				cartOne.setStock(rset.getInt("STOCK"));
				cart.add(cartOne);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return cart;
	}
	
	public Coupon bringC(Connection conn, String userCode) {
	      Coupon c = null;
	      PreparedStatement pstmt = null;
	      String query = "SELECT COUNT(*) AS COUNT FROM COUPON GROUP BY B_CODE HAVING B_CODE=?";
	      FavorityTruck favority = null;
	      ResultSet rset = null;
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1,userCode);
	         rset = pstmt.executeQuery();
	         c = new Coupon();
	            if(rset.next()) {
	               c.setCount(rset.getInt("count"));
	            }else {
	               c.setCount(0);
	            }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         JDBCTemplate.close(rset);
	         JDBCTemplate.close(pstmt);
	      }
	      
	      return c;
	   }
}
