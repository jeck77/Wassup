package wassup.notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.vo.FavorityTruck;
import wassup.notice.model.vo.Notice;

public class NoticeDAO {

	public ArrayList<Notice> bringNotice(Connection conn, int currentPage, int recordCountPerPage) {
		ArrayList<Notice> notice = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM (SELECT NOTICE.*, ROW_NUMBER() OVER(ORDER BY NOTICE_CODE DESC) AS NUM FROM NOTICE) WHERE NUM BETWEEN ? AND ?";
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			notice = new ArrayList<Notice>();
			rset = pstmt.executeQuery();
			while (rset.next())	{
				Notice noticeOne = new Notice();
				noticeOne.setNoticeNo(rset.getInt("NOTICE_CODE"));
				noticeOne.setNoticeDate(rset.getDate("NOTICE_DATE"));
				noticeOne.setNoticeName(rset.getString("NOTICE_NAME"));
				noticeOne.setNoticeContent(rset.getNString("NOTICE_CONTENT"));
				noticeOne.setHits(rset.getInt("HITS"));
				noticeOne.setAdminId(rset.getNString("ADMIN_ID"));
				notice.add(noticeOne);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return notice;
	}
	
	public int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM NOTICE";
		int recordTotalCount = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
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

	public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		
		int recordTotalCount = totalCount(conn);
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
			sb.append("<a href='/notice/listForm?currentPage="+(startNavi - 1) + "'> < </a>");
		}
		
		for (int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/notice/listForm?currentPage=" +i+ "'><b> " + i + "</b></a>");
			} else {
				sb.append("<a href='/notice/listForm?currentPage=" +i+ "'> " + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/notice/listForm?currentPage="+(endNavi + 1) + "'> > </a>");
		}
		return sb.toString();
	}

	public int updateHits(Connection conn, int noticeNo, int sum) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE NOTICE SET HITS=? WHERE NOTICE_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, sum);
			pstmt.setInt(2, noticeNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public Notice selectNotice(Connection conn, int noticeNo) {
		Notice notice = new Notice();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM NOTICE WHERE NOTICE_CODE=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				notice.setNoticeNo(rset.getInt("NOTICE_CODE"));
				notice.setNoticeDate(rset.getDate("NOTICE_DATE"));
				notice.setNoticeName(rset.getString("NOTICE_NAME"));
				notice.setNoticeContent(rset.getString("NOTICE_CONTENT"));
				notice.setHits(rset.getInt("HITS"));
				notice.setAdminId(rset.getNString("ADMIN_ID"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return notice;
	}

}
