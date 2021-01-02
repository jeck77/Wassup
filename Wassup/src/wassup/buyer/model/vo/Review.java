package wassup.buyer.model.vo;

import java.sql.Timestamp;

public class Review {
	private int reviewCode;
	private int orderCode;
	private String sCode;
	private String bCode;
	private int grade;
	private String reviewPhoto;
	private String reviewContent;
	private String reviewPhotoPath;
	private Timestamp reviewDate;
	private int count;
	private String bName;
	private String truckName;
	
	
	
	
	
	
	
	
	
	
	
	
	public String getTruckName() {
		return truckName;
	}
	public void setTruckName(String truckName) {
		this.truckName = truckName;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Timestamp getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Timestamp timestamp) {
		this.reviewDate = timestamp;
	}
	
	public int getReviewCode() {
		return reviewCode;
	}
	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}
	public int getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
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
	public String getReviewPhoto() {
		return reviewPhoto;
	}
	public void setReviewPhoto(String reviewPhoto) {
		this.reviewPhoto = reviewPhoto;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewPhotoPath() {
		return reviewPhotoPath;
	}
	public void setReviewPhotoPath(String reviewPhotoPath) {
		this.reviewPhotoPath = reviewPhotoPath;
	}
	
	@Override
	public String toString() {
		return "Review [reviewCode=" + reviewCode + ", orderCode=" + orderCode + ", sCode=" + sCode + ", bCode=" + bCode
				+ ", grade=" + grade + ", reviewPhoto=" + reviewPhoto + ", reviewContent=" + reviewContent
				+ ", reviewPhotoPath=" + reviewPhotoPath + ", reviewDate=" + reviewDate + ", count=" + count
				+ ", bName=" + bName + ", truckName=" + truckName + "]";
	}

	

	
	
}
