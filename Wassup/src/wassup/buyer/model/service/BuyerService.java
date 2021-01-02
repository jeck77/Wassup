package wassup.buyer.model.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.dao.BuyerDAO;
import wassup.buyer.model.vo.Buyer;
import wassup.buyer.model.vo.FavorityPageData;
import wassup.buyer.model.vo.FavorityTruck;
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Review;
import wassup.buyer.model.vo.ShoppingCart;
import wassup.coupon.model.vo.Coupon;
import wassup.lastorderShoppingcart.model.vo.LastorderShoppingcart;
import wassup.seller.model.dao.SellerDAO;

public class BuyerService {
	
	private JDBCTemplate factory;

	public BuyerService() {
		factory = JDBCTemplate.getConnection();
	}                                          
	
	public Buyer buyerSelectLogin(String Id, String Pwd) {
		Buyer buyer = null;
		try {
			Connection conn = factory.createConnection();
			buyer = new BuyerDAO().buyerSelectLogin(conn, Id, Pwd);
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return buyer;
	}
	
	public int insertBuyer(Buyer buyer) {
		int result=0;
		Connection conn = null;
		try {
			conn=factory.createConnection();
			result = new BuyerDAO().insertBuyer(conn, buyer);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}

	public Buyer selectOne(String userId) {
		Buyer buyer = null;
		Connection conn = null;
		try {
			conn=factory.createConnection();
			buyer = new BuyerDAO().selectOne(conn, userId);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return buyer;
	}

	public int updateBuyer(Buyer buyer) {
		int result=0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().updateBuyer(conn, buyer);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}
	
	public ArrayList<Order> selectOrderList(String bId){
		ArrayList<Order> oList = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			oList = new BuyerDAO().selectOrderList(conn,bId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return oList;
	}
	
	public ArrayList<Order> selectOrderOne(int receiptCode){
		Connection conn = null;
		ArrayList<Order> oList = null;
		try {
			conn = factory.createConnection();
			oList = new BuyerDAO().selectOrderOne(conn,receiptCode);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return oList;
	}
	
	public int deleteBuyer(String userId) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().deleteBuyer(conn, userId);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	
	public ArrayList<Order> reviewSelectList(Buyer buyer){
		ArrayList oList = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			oList = new BuyerDAO().reviewSelectList(conn,buyer);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return oList;
	}
	
	public int reviewInsert(Review review) {
		int result = 0;
		Connection conn = null;

		try {
			conn = factory.createConnection();
			result = new BuyerDAO().reviewInsert(conn, review);
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
	
	public ArrayList<Review> reviewList(Buyer buyer) {
		ArrayList<Review> rList = null;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			rList = new BuyerDAO().reviewList(conn,buyer);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rList;
	}
	
	public int reviewDelete(int orderCode) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().reviewDelete(conn,orderCode);
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
	
	public Order totalOrder(String userId) {
		Order order = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			order = new BuyerDAO().totalOrder(conn,userId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return order;
	}
	
	public Review totalReview(String userCode) {
		Review review = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			review = new BuyerDAO().totalReview(conn,userCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return review;
	}
	
	public FavorityTruck totalFavoirty(String userCode) {
		FavorityTruck favority = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			favority = new BuyerDAO().totalFavority(conn,userCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return favority;
	}
	
	public ArrayList<ShoppingCart> bringCart(String userCode) {
		ArrayList<ShoppingCart> cart = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			cart = new BuyerDAO().bringCart(conn, userCode);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return cart;
	}
	
	public int bringTotal(String userCode) {
		int total = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			total = new BuyerDAO().bringTotal(conn, userCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return total;
	}

	public ArrayList<Coupon> bringCoupon(String userCode) {
		ArrayList<Coupon> coupon = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			coupon = new BuyerDAO().bringCoupon(conn, userCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return coupon;
	}
	
	public int deleteFavority(String userCode, String truckName) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().deleteFavority(conn, userCode, truckName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}
	
	public FavorityPageData bringFavority(int currentPage, String userCode) {
		ArrayList<FavorityTruck> truck = null;
		Connection conn = null;
		int recordCountPerPage = 5;
		int naviCountPerPage = 5;
		FavorityPageData favorityPage = new FavorityPageData();
				
				
		try {
			conn = factory.createConnection();
			favorityPage.setPageList(new BuyerDAO().bringFavority(conn, userCode, currentPage, recordCountPerPage));
			favorityPage.setPageNavi(new BuyerDAO().getPageNavi(conn, userCode, currentPage, recordCountPerPage, naviCountPerPage));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return favorityPage;
	}
	
	
	public int turckFavority(FavorityTruck truck) {
		int result=0;
		Connection conn = null;
		try {
			conn=factory.createConnection();
			result = new BuyerDAO().turckFavority(conn, truck);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		return result;
	}
	
	public int insertOrder(ArrayList<Order> order) {
		int result=0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().insertOrder(conn, order);
			if(result>0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}
	
	public int deleteCoupon(int cCode, String userCode) {
		int result= 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().deleteCoupon(conn, cCode, userCode);
			if(result>0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}
	
	public int updateStock(int sum, int menuCode) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().updateStock(conn, sum, menuCode);
			if(result>0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}
	
	public int deleteStock(int menuCode) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new BuyerDAO().deleteStock(conn, menuCode);
			if(result>0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return result;
	}
	
	public int bringLastTotal(String userCode) {
		int lastTotal = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			lastTotal = new BuyerDAO().bringLastTotal(conn, userCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return lastTotal;
	}
	
	public ArrayList<LastorderShoppingcart> bringLastCart(String userCode) {
		ArrayList<LastorderShoppingcart> cart = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			cart = new BuyerDAO().bringLastCart(conn, userCode);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return cart;
	}
	
	public Coupon totalCoupon(String userCode) {
	      Coupon c = null;
	      Connection conn = null;
	      try {
	         conn = factory.createConnection();
	         c = new BuyerDAO().bringC(conn, userCode);
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(conn);
	      }
	      return c;
	   }
}
