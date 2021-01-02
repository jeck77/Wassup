package wassup.search.model.vo;

import java.sql.Date;

public class Seller {
	
	public Seller() {}
	
	private String sCode;
	private int categoryCode;
	private String sName;
	private Date sBirth;
	private String truckAddr;
	private String sId;
	private String sPwd;
	private String sNick;
	private String sCoopNum;
	private String sTruckName;
	private String sPhone;
	private Date sEnrollDate;
	private String logoPhoto;
	private String logoPhotoPath;
	private String categoryName;
	
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public int getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public Date getsBirth() {
		return sBirth;
	}
	public void setsBirth(Date sBirth) {
		this.sBirth = sBirth;
	}
	public String getTruckAddr() {
		return truckAddr;
	}
	public void setTruckAddr(String truckAddr) {
		this.truckAddr = truckAddr;
	}
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsPwd() {
		return sPwd;
	}
	public void setsPwd(String sPwd) {
		this.sPwd = sPwd;
	}
	public String getsNick() {
		return sNick;
	}
	public void setsNick(String sNick) {
		this.sNick = sNick;
	}
	public String getsCoopNum() {
		return sCoopNum;
	}
	public void setsCoopNum(String sCoopNum) {
		this.sCoopNum = sCoopNum;
	}
	public String getsTruckName() {
		return sTruckName;
	}
	public void setsTruckName(String sTruckName) {
		this.sTruckName = sTruckName;
	}
	public String getsPhone() {
		return sPhone;
	}
	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}
	public Date getsEnrollDate() {
		return sEnrollDate;
	}
	public void setsEnrollDate(Date sEnrollDate) {
		this.sEnrollDate = sEnrollDate;
	}
	public String getLogoPhoto() {
		return logoPhoto;
	}
	public void setLogoPhoto(String logoPhoto) {
		this.logoPhoto = logoPhoto;
	}
	public String getLogoPhotoPath() {
		return logoPhotoPath;
	}
	public void setLogoPhotoPath(String logoPhotoPath) {
		this.logoPhotoPath = logoPhotoPath;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	@Override
	public String toString() {
		return "Seller [sCode=" + sCode + ", categoryCode=" + categoryCode + ", sName=" + sName + ", sBirth=" + sBirth
				+ ", truckAddr=" + truckAddr + ", sId=" + sId + ", sPwd=" + sPwd + ", sNick=" + sNick + ", sCoopNum="
				+ sCoopNum + ", sTruckName=" + sTruckName + ", sPhone=" + sPhone + ", sEnrollDate=" + sEnrollDate
				+ ", LogoPhoto=" + logoPhoto + ", LogoPhotoPath=" + logoPhotoPath + "]";
	}
	
	
	
}
