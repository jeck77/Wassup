package wassup.search.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.vo.Review;
import wassup.menu.model.vo.Menu;
import wassup.search.model.dao.SearchDAO;
import wassup.search.model.vo.ReplyReview;
import wassup.search.model.vo.Seller;
import wassup.search.model.vo.SellerPage;

public class SearchService {
	private JDBCTemplate factory;
	public SearchService() {
		factory = JDBCTemplate.getConnection();
	}
	
	public ArrayList<Seller> mapTruckListSearch(){
		Connection conn = null;
		ArrayList<Seller> sList = null;
		try {
			conn = JDBCTemplate.createConnection();
			sList = new SearchDAO().mapTruckListSearch(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
		}
		return sList;
	}
//	truckSearch(categoryCode,roadName,currentPage); 
	public SellerPage truckSearch(int categoryCode, String roadName, int currentPage) {
		Connection conn = null;
		SellerPage sPage = new SellerPage();
		int recordCountPerPage = 5;
		int naviCountPerPage = 5;
		try {
			conn = JDBCTemplate.createConnection();
			sPage.setPageList(new SearchDAO().truckSearch(conn,categoryCode,roadName,currentPage,recordCountPerPage));
			sPage.setPageNavi(new SearchDAO().getSearchPageNavi(conn,categoryCode,roadName,currentPage,recordCountPerPage,naviCountPerPage));
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
		}
		return sPage;
	}
	
	public Seller TruckSelectOne(String sCode) {
		Seller search = null;
		try {
			Connection conn = factory.createConnection();
			search = new SearchDAO().TruckSelectOne(conn, sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return search;
	}
	
	public ArrayList<Menu> TruckSelectMenu(String sCode) {
		ArrayList<Menu> list = null;
		try {
			Connection conn = factory.createConnection();
			list = new SearchDAO().TruckSelectMenu(conn, sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<Menu> truckShowMenu(String sCode){
		ArrayList<Menu> list = null;
		try {
			Connection conn = factory.createConnection();
			list = new SearchDAO().truckShowMenu(conn,sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int sellerAvgGrade(String sCode) {
		int grade = 0;
		try {
			Connection conn = factory.createConnection();
			grade = new SearchDAO().sellerAvgGrade(conn,sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return grade;
	}
	
	public int buyerFavorite(String bCode,String sCode) {
		int flag = 0;
		
		try {
			Connection conn = factory.createConnection();
			flag = new SearchDAO().buyerFavorite(conn,bCode,sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	
	public ArrayList<Review> reviewRank(String roadName){
		ArrayList<Review> rank = null;
		try {
			Connection conn = factory.createConnection();
			rank = new SearchDAO().reviewRank(conn,roadName);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rank;
	}
	
	public ArrayList<ReplyReview> truckReview(String sCode){
		ArrayList<ReplyReview> rList = null;
		
		try {
			Connection conn = factory.createConnection();
			rList = new SearchDAO().truckReview(conn,sCode);
			JDBCTemplate.close(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rList;
	}
}
