package wassup.buyer.model.vo;

public class ShoppingCart {

	private int shoppingCartCode;
	private int amount;
	private String bCode;
	private int menuCode;
	private String menuName;
	private int price;
	private String sCode;
	private int total;
	
	public int getShoppingCartCode() {
		return shoppingCartCode;
	}
	public void setShoppingCartCode(int shoppingCartCode) {
		this.shoppingCartCode = shoppingCartCode;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
	}
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
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "ShoppingCart [shoppingCartCode=" + shoppingCartCode + ", amount=" + amount + ", bCode=" + bCode
				+ ", menuCode=" + menuCode + ", menuName=" + menuName + ", price=" + price + ", sCode=" + sCode
				+ ", total=" + total + "]";
	}
	
	
	
	
}
