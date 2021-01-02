package wassup.coupon.model.vo;

public class Coupon {
	private int cCode;
	private String cName;
	private int cDiscount;
	private String bCode;
	private int count;
	
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getcCode() {
		return cCode;
	}
	public void setcCode(int cCode) {
		this.cCode = cCode;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcDiscount() {
		return cDiscount;
	}
	public void setcDiscount(int cDiscount) {
		this.cDiscount = cDiscount;
	}
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
	}
	@Override
	public String toString() {
		return "Coupon [cCode=" + cCode + ", cName=" + cName + ", cDiscount=" + cDiscount + ", bCode=" + bCode + "]";
	}
	
	

}
