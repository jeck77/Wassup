package wassup.search.model.vo;

import java.sql.Timestamp;

public class ReplyReview {
	private int reviewCode;
	private String sCode;
	private String bCode;
	private int grade;
	private String reviewPhotoPath;
	private String reviewContent;
	private Timestamp reviewDate;
	private int replyCode;
	private String replyContent;
	private Timestamp replyDate;
	private String sNick;
	private String bNick;
	public int getReviewCode() {
		return reviewCode;
	}
	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getReviewPhotoPath() {
		return reviewPhotoPath;
	}
	public void setReviewPhotoPath(String reviewPhotoPath) {
		this.reviewPhotoPath = reviewPhotoPath;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Timestamp getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getReplyCode() {
		return replyCode;
	}
	public void setReplyCode(int replyCode) {
		this.replyCode = replyCode;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Timestamp replyDate) {
		this.replyDate = replyDate;
	}
	public String getsNick() {
		return sNick;
	}
	public void setsNick(String sNick) {
		this.sNick = sNick;
	}
	public String getbNick() {
		return bNick;
	}
	public void setbNick(String bNick) {
		this.bNick = bNick;
	}
	@Override
	public String toString() {
		return "ReplyReview [reviewCode=" + reviewCode + ", sCode=" + sCode + ", bCode=" + bCode + ", grade=" + grade
				+ ", reviewPhotoPath=" + reviewPhotoPath + ", reviewContent=" + reviewContent + ", reviewDate="
				+ reviewDate + ", replyCode=" + replyCode + ", replyContent=" + replyContent + ", replyDate="
				+ replyDate + ", sNick=" + sNick + ", bNick=" + bNick + "]";
	}
	
	
	
}
