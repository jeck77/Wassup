package wassup.notice.model.vo;

import java.sql.Date;

public class Notice {
	
	private int noticeNo;
	private Date noticeDate;
	private String noticeName;
	private String noticeContent;
	private String adminId;
	private int hits;
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeName() {
		return noticeName;
	}
	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeDate=" + noticeDate + ", noticeName=" + noticeName
				+ ", noticeContent=" + noticeContent + ", adminId=" + adminId + ", hits=" + hits + "]";
	}
	
	

}
