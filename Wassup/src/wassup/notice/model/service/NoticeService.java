package wassup.notice.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import wassup.buyer.model.dao.BuyerDAO;
import wassup.buyer.model.vo.FavorityPageData;
import wassup.buyer.model.vo.FavorityTruck;
import wassup.notice.model.dao.NoticeDAO;
import wassup.notice.model.vo.Notice;
import wassup.notice.model.vo.NoticePage;

public class NoticeService {
	
	private JDBCTemplate factory;

	public NoticeService() {
		factory = JDBCTemplate.getConnection();
	}

	public NoticePage bringNotice(int currentPage) {
		ArrayList<Notice> notice = null;
		Connection conn = null;
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		NoticePage noticePage = new NoticePage();
				
				
		try {
			conn = factory.createConnection();
			noticePage.setPageList(new NoticeDAO().bringNotice(conn, currentPage, recordCountPerPage));
			noticePage.setPageNavi(new NoticeDAO().getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return noticePage;
	}

	public int updateHits(int noticeNo, int sum) {
		int result = 0;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			result = new NoticeDAO().updateHits(conn, noticeNo, sum);
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

	public Notice selectNotice(int noticeNo) {
		Notice notice = null;
		Connection conn = null;
		try {
			conn = factory.createConnection();
			notice = new NoticeDAO().selectNotice(conn, noticeNo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(conn);
		}
		return notice;
	}
	
	

}
