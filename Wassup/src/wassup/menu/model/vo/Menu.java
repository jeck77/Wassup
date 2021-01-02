package wassup.menu.model.vo;

public class Menu {
	
	// 멤버변수
	private int menuCode;
	private String menuName;
	private int price;
	private String detail;
	private String summary;
	private String menuPhoto;
	private String menuPhotoPath;
	private int subMenuCode;
	private String subMenuName;
	private String sCode;
	private int categoryCode;
	private String categoryName;

	
	// 생성자
	public Menu() {}

	// get/set
	public int getMenuCode() {
		return menuCode;
	}

	public void setMenuCode(int menuCode) {
		this.menuCode = menuCode;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getMenuPhoto() {
		return menuPhoto;
	}

	public void setMenuPhoto(String menuPhoto) {
		this.menuPhoto = menuPhoto;
	}

	public String getMenuPhotoPath() {
		return menuPhotoPath;
	}

	public void setMenuPhotoPath(String menuPhotoPath) {
		this.menuPhotoPath = menuPhotoPath;
	}

	public int getSubMenuCode() {
		return subMenuCode;
	}

	public void setSubMenuCode(int subMenuCode) {
		this.subMenuCode = subMenuCode;
	}

	public String getSubMenuName() {
		return subMenuName;
	}

	public void setSubMenuName(String subMenuName) {
		this.subMenuName = subMenuName;
	}

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

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
}
