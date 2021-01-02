package wassup.buyer.model.vo;

import java.sql.Date;

public class Buyer {

	private String bCode;
	private String bName;
	private Date bBirth;
	private String bAddr;
	private String bId;
	private String bPwd;
	private String bNick;
	private Date bEnrollDate;
	private String bPhone;
	private String bRoadName;
	
	public Buyer() {}


	public String getbCode() {
		return bCode;
	}


	public void setbCode(String bCode) {
		this.bCode = bCode;
	}


	public String getbName() {
		return bName;
	}


	public void setbName(String bName) {
		this.bName = bName;
	}


	public Date getbBirth() {
		return bBirth;
	}


	public void setbBirth(Date bBirth) {
		this.bBirth = bBirth;
	}


	public String getbAddr() {
		return bAddr;
	}


	public void setbAddr(String bAddr) {
		this.bAddr = bAddr;
	}


	public String getbId() {
		return bId;
	}


	public void setbId(String bId) {
		this.bId = bId;
	}


	public String getbPwd() {
		return bPwd;
	}


	public void setbPwd(String bPwd) {
		this.bPwd = bPwd;
	}


	public String getbNick() {
		return bNick;
	}


	public void setbNick(String bNick) {
		this.bNick = bNick;
	}


	public Date getbEnrollDate() {
		return bEnrollDate;
	}


	public void setbEnrollDate(Date bEnrollDate) {
		this.bEnrollDate = bEnrollDate;
	}


	public String getbPhone() {
		return bPhone;
	}


	public void setbPhone(String bPhone) {
		this.bPhone = bPhone;
	}


	public String getbRoadName() {
		return bRoadName;
	}


	public void setbRoadName(String bRoadName) {
		this.bRoadName = bRoadName;
	}
	
	
}
