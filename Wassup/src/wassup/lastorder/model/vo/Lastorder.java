package wassup.lastorder.model.vo;

public class Lastorder {
	
	private int lastorderCode;
	private int stock;
	private int discount;
	private String lastMenuName;
	private int lastPrice;
	private String lastsCode;
	private String lastCategory;
	private String lastDetail;
	private String lastSummary;
	private String lastPhoto;
	private String lastPhotoPath;
	private int lastSubMenuCode;
	private String truckName;
	private String logoPhotoPath;
	private String truckAddr;
	private String sPhone;
	private int fPrice;
	public Lastorder() {}
	

	public int getfPrice() {
		return fPrice;
	}


	public void setfPrice(int fPrice) {
		this.fPrice = fPrice;
	}


	public String getsPhone() {
		return sPhone;
	}


	public String getssPhone() {
		return sPhone;
	}


	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}


	public String getTruckAddr() {
		return truckAddr;
	}


	public void setTruckAddr(String truckAddr) {
		this.truckAddr = truckAddr;
	}


	public int getLastorderCode() {
		return lastorderCode;
	}

	public void setLastorderCode(int lastorderCode) {
		this.lastorderCode = lastorderCode;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getLastMenuName() {
		return lastMenuName;
	}

	public void setLastMenuName(String lastMenuName) {
		this.lastMenuName = lastMenuName;
	}

	public int getLastPrice() {
		return lastPrice;
	}

	public void setLastPrice(int lastPrice) {
		this.lastPrice = lastPrice;
	}

	public String getLastsCode() {
		return lastsCode;
	}

	public void setLastsCode(String lastsCode) {
		this.lastsCode = lastsCode;
	}

	public String getLastCategory() {
		return lastCategory;
	}

	public void setLastCategory(String lastCategory) {
		this.lastCategory = lastCategory;
	}

	public String getLastDetail() {
		return lastDetail;
	}

	public void setLastDetail(String lastDetail) {
		this.lastDetail = lastDetail;
	}

	public String getLastSummary() {
		return lastSummary;
	}

	public void setLastSummary(String lastSummary) {
		this.lastSummary = lastSummary;
	}

	public String getLastPhoto() {
		return lastPhoto;
	}

	public void setLastPhoto(String lastPhoto) {
		this.lastPhoto = lastPhoto;
	}

	public String getLastPhotoPath() {
		return lastPhotoPath;
	}

	public void setLastPhotoPath(String lastPhotoPath) {
		this.lastPhotoPath = lastPhotoPath;
	}

	public int getLastSubMenuCode() {
		return lastSubMenuCode;
	}

	public void setLastSubMenuCode(int lastSubMenuCode) {
		this.lastSubMenuCode = lastSubMenuCode;
	}

	public String getTruckName() {
		return truckName;
	}

	public void setTruckName(String truckName) {
		this.truckName = truckName;
	}

	public String getLogoPhotoPath() {
		return logoPhotoPath;
	}

	public void setLogoPhotoPath(String logoPhotoPath) {
		this.logoPhotoPath = logoPhotoPath;
	}

	@Override
	public String toString() {
		return "Lastorder [lastorderCode=" + lastorderCode + ", stock=" + stock + ", discount=" + discount
				+ ", lastMenuName=" + lastMenuName + ", lastPrice=" + lastPrice + ", lastsCode=" + lastsCode
				+ ", lastCategory=" + lastCategory + ", lastDetail=" + lastDetail + ", lastSummary=" + lastSummary
				+ ", lastPhoto=" + lastPhoto + ", lastPhotoPath=" + lastPhotoPath + ", lastSubMenuCode="
				+ lastSubMenuCode + ", truckName=" + truckName + ", logoPhotoPath=" + logoPhotoPath + "]";
	}
}
