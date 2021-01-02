package wassup.buyer.model.vo;

import java.sql.Timestamp;

public class Reply {
	private int replyCode;
	private int reviewCode;
	private String replyContent;
	private Timestamp replyDate;
	public int getReplyCode() {
		return replyCode;
	}
	public void setReplyCode(int replyCode) {
		this.replyCode = replyCode;
	}
	public int getReviewCode() {
		return reviewCode;
	}
	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
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
	
	@Override
	public String toString() {
		return "Reply [replyCode=" + replyCode + ", reviewCode=" + reviewCode + ", replyContent=" + replyContent
				+ ", replyDate=" + replyDate + "]";
	}
	
	
}
