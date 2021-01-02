package wassup.buyer.model.vo;

public class FavorityTruck {
	private int favorityCode;
	private String bCode;
	private String sCode;
	private String truckName;
	private String truckAddr;
	private int count;
	private String logoPhotoPath;
	
	
	
	public String getLogoPhotoPath() {
		return logoPhotoPath;
	}
	public void setLogoPhotoPath(String logoPhotoPath) {
		this.logoPhotoPath = logoPhotoPath;
	}
	public int getFavorityCode() {
		return favorityCode;
	}
	public void setFavorityCode(int favorityCode) {
		this.favorityCode = favorityCode;
	}
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
	}
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public String getTruckName() {
		return truckName;
	}
	public void setTruckName(String truckName) {
		this.truckName = truckName;
	}
	public String getTruckAddr() {
		return truckAddr;
	}
	public void setTruckAddr(String truckAddr) {
		this.truckAddr = truckAddr;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "FavorityTruck [favorityCode=" + favorityCode + ", bCode=" + bCode + ", sCode=" + sCode + ", truckName="
				+ truckName + ", truckAddr=" + truckAddr + ", count=" + count + "]";
	}
	
	
	
}
