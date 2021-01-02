package wassup.search.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import common.JDBCTemplate;
import wassup.buyer.model.vo.Order;
import wassup.buyer.model.vo.Review;
import wassup.menu.model.vo.Menu;
import wassup.search.model.vo.ReplyReview;
import wassup.search.model.vo.Seller;

public class SearchDAO {

	public SearchDAO() {}

	public ArrayList<Seller> mapTruckListSearch(Connection conn) {
		ArrayList<Seller> sList = null;
		ResultSet rset = null;
		Statement stmt = null;
		String query = "SELECT * FROM SELLER";
		Seller seller = null;
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			sList = new ArrayList<Seller>();
			while (rset.next()) {
				seller = new Seller();
				seller.setsCode(rset.getString("S_CODE"));
				seller.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				seller.setsName(rset.getString("S_NAME"));
				seller.setTruckAddr(rset.getString("TRUCK_ADDR"));
				seller.setsTruckName(rset.getString("TRUCK_NAME"));
				seller.setsPhone(rset.getString("S_PHONE"));
				seller.setLogoPhotoPath(rset.getNString("LOGO_PHOTO_PATH"));
				sList.add(seller);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}

		return sList;
	}
//	sPage.setPageList(new SearchDAO().truckSearch(conn,categoryCode,roadName,currentPage,recordCountPerPage));

	public ArrayList<Seller> truckSearch(Connection conn, int categoryCode, String roadName, int currentPage,
			int recordCountPerPage) {
		ArrayList<Seller> sList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM (SELECT category_name, s.*,ROW_NUMBER() OVER(ORDER BY TRUCK_NAME)AS NUM FROM (select * from seller WHERE CATEGORY_CODE = ? AND TRUCK_ADDR LIKE ?) s join category c on s.category_code = c.category_code) WHERE NUM BETWEEN ? AND ?";

		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, categoryCode);
			pstmt.setString(2, "%" + roadName + "%");
			pstmt.setInt(3, start);
			pstmt.setInt(4, end);
			rset = pstmt.executeQuery();
			sList = new ArrayList<Seller>();
			while (rset.next()) {
				Seller seller = new Seller();
				seller.setsCode(rset.getString("S_CODE"));
				seller.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				seller.setsName(rset.getString("S_NAME"));
				seller.setTruckAddr(rset.getString("TRUCK_ADDR"));
				seller.setsTruckName(rset.getString("TRUCK_NAME"));
				seller.setsPhone(rset.getString("S_PHONE"));
				seller.setCategoryName(rset.getString("category_name"));
				seller.setsPhone(rset.getString("s_phone"));
				String path = rset.getString("LOGO_PHOTO_PATH");
				String result = null;
				if (path != null && !path.equals("\\null") && !path.equals("null")) {
					result = "\\" + path.substring(path.lastIndexOf("\\i") + 1);
					seller.setLogoPhotoPath(result);
				} else {
					seller.setLogoPhotoPath("/img/category/basic.png");
				}
				sList.add(seller);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return sList;
	}

//	sPage.setPageNavi(new SearchDAO().getTruckPageNavi(conn,categoryCode,currentPage,recordCountPerPage,naviCountPerPage));

	public String getSearchPageNavi(Connection conn, int categoryCode, String roadName, int currentPage,
			int recordCountPerPage, int naviCountPerPage) {
		int recordTotalCount = searchTotalCount(conn, categoryCode, roadName);
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
			sb.append("<a href='/search/truck?currentPage=" + (startNavi - 1) + "&categoryCode=" + categoryCode
					+ "&roadname=" + roadName + "'> 이전 </a>" + " ");
		}

		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<a href='/search/truck?currentPage=" + i + "&categoryCode=" + categoryCode + "&roadname="
						+ roadName + "'> <b>" + i + "</b> </a>" + " ");
			} else {
				sb.append("<a href='/search/truck?currentPage=" + i + "&categoryCode=" + categoryCode + "&roadname="
						+ roadName + "'> " + i + "</a>" + " ");
			}
			if (needNext) {
				sb.append("<a href='/search/truck?currentPage=" + (endNavi + 1) + "&categoryCode=" + categoryCode
						+ "&roadname=" + roadName + "'> 다음 </a>" + " ");
			}
		}
		return sb.toString();
	}

	public int searchTotalCount(Connection conn, int categoryCode, String roadName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM SELLER WHERE CATEGORY_CODE = ? AND TRUCK_ADDR LIKE ?";
		int recordTotalCount = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, categoryCode);
			pstmt.setString(2, "%" + roadName + "%");
			rset = pstmt.executeQuery();
			if (rset.next()) {
				recordTotalCount = rset.getInt("TOTALCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return recordTotalCount;
	}

	public Seller TruckSelectOne(Connection conn, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM SELLER WHERE S_CODE=?";
		Seller search = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				search = new Seller();
				search.setsCode(rset.getString("S_CODE"));
				search.setsName(rset.getString("S_NAME"));
				search.setTruckAddr(rset.getString("TRUCK_ADDR"));
				search.setsTruckName(rset.getString("TRUCK_NAME"));
				search.setsPhone(rset.getString("S_PHONE"));
				search.setsNick(rset.getString("S_NICK"));
				search.setLogoPhoto(rset.getString("LOGO_PHOTO"));
				String path = rset.getString("LOGO_PHOTO_PATH");
				String result = null;

				if (path != null && !path.equals("\\null") && !path.equals("null")) {
					result = "\\" + path.substring(path.lastIndexOf("\\i") + 1);
					search.setLogoPhotoPath(result);
				} else {
					search.setLogoPhotoPath("/img/category/basic.png");
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return search;
	}

	public ArrayList<Menu> TruckSelectMenu(Connection conn, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MENU JOIN SUBMENU USING(SUBMENU_CODE) WHERE S_CODE = ?";
		ArrayList<Menu> list = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			list = new ArrayList<Menu>();
			while (rset.next()) {
				Menu menu = new Menu();
				menu.setsCode(rset.getString("S_CODE"));
				menu.setMenuCode(rset.getInt("MENU_CODE"));
				menu.setSubMenuCode(rset.getInt("SUBMENU_CODE"));
				menu.setSubMenuName(rset.getString("SUBMENU_NAME"));
				menu.setMenuName(rset.getString("MENU_NAME"));
				menu.setPrice(rset.getInt("PRICE"));
				menu.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				menu.setMenuPhoto(rset.getString("Menu_Photo"));
				String path = rset.getString("Menu_Photo_Path");
				String result = null;

				if (path != null && !path.equals("\\null") && !path.equals("null")) {
					result = "\\" + path.substring(path.lastIndexOf("\\i") + 1);
					menu.setMenuPhotoPath(result);
				} else {
					menu.setMenuPhotoPath("/img/category/basic.png");
				}
				list.add(menu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	public ArrayList<Menu> truckShowMenu(Connection conn, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT DISTINCT S_CODE, SUBMENU_NAME, SUBMENU_CODE FROM MENU JOIN SUBMENU USING(SUBMENU_CODE) WHERE S_CODE = ? ORDER BY 3";
		ArrayList<Menu> list = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			list = new ArrayList<Menu>();
			while (rset.next()) {
				Menu menu = new Menu();
				menu.setsCode(rset.getString("S_CODE"));
				menu.setSubMenuCode(rset.getInt("SUBMENU_CODE"));
				menu.setSubMenuName(rset.getString("SUBMENU_NAME"));
				list.add(menu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public int sellerAvgGrade(Connection conn, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select avg(grade) as grade from review where s_code = ?";
		int grade = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				grade = rset.getInt("grade");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return grade;
	}

	public int buyerFavorite(Connection conn, String bCode, String sCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from favority where b_code = ? and s_code= ?";
		int flag = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bCode);
			pstmt.setString(2, sCode);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				flag = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;

	}

	public ArrayList<Review> reviewRank(Connection conn, String roadName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select * from (select ROW_NUMBER() OVER(ORDER BY AVG(grade) desc)AS NUM ,avg(grade) as avg, s_code,truck_name from review join seller using(s_code) group by s_code,truck_name,truck_addr  having truck_addr like ?) where num between 0 and 5";
		ArrayList<Review> rank = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%" + roadName + "%");
			rset = pstmt.executeQuery();
			rank = new ArrayList<Review>();
			while (rset.next()) {
				Review review = new Review();
				review.setTruckName(rset.getNString("truck_name"));
				review.setsCode(rset.getString("s_code"));
				review.setGrade(rset.getInt("avg"));
				rank.add(review);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rank;
	}

	public ArrayList<ReplyReview> truckReview(Connection conn, String sCode) {
		ArrayList<ReplyReview> rList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select review_code,order_code,s_code,b_code,grade,review_content,review_photo_path,to_char(review_date,'yyyy-mm-dd hh24:mi:ss') as review_date,reply_code,reply_content,to_char(reply_date,'yyyy-mm-dd hh24:mi:ss') as reply_date,s_nick,b_nick from review left join review_reply using(review_code) join seller using(s_Code) join buyer using(b_code) where s_Code=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sCode);
			rset = pstmt.executeQuery();
			rList = new ArrayList<ReplyReview>();
			while (rset.next()) {
				ReplyReview review = new ReplyReview();
				review.setReviewCode(rset.getInt("review_code"));
				review.setsCode(sCode);
				review.setbCode(rset.getString("b_code"));
				review.setGrade(rset.getInt("grade"));
				review.setReviewContent(rset.getString("review_content"));
				review.setReviewDate(rset.getTimestamp("review_date"));
				review.setReplyCode(rset.getInt("reply_code"));
				review.setReplyContent(rset.getString("reply_content"));
				review.setReplyDate(rset.getTimestamp("reply_date"));
				review.setsNick(rset.getString("s_nick"));
				review.setbNick(rset.getNString("b_nick"));

				String path = rset.getString("review_photo_path");
				String result = null;
				if (path != null && !path.equals("\\null") && !path.equals("null")) {
					result = "\\" + path.substring(path.lastIndexOf("\\i") + 1);
					review.setReviewPhotoPath(result);
				} else {
					review.setReviewPhotoPath("/img/category/basic.png");
				}

				rList.add(review);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rList;
	}
}
