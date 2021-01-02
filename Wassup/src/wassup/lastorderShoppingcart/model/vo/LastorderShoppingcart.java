package wassup.lastorderShoppingcart.model.vo;

public class LastorderShoppingcart {
	private int lastorderShoppingcartCode;
	private int lastorderCode;
	private String bCode;
	private String lastMenuName;
	private int lastPrice;
	private int discount;
	private int amount;
	private String sCode;
	private int stock;
	
	public LastorderShoppingcart() {}
	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getLastorderShoppingcartCode() {
		return lastorderShoppingcartCode;
	}
	public void setLastorderShoppingcartCode(int lastorderShoppingcartCode) {
		this.lastorderShoppingcartCode = lastorderShoppingcartCode;
	}
	public int getLastorderCode() {
		return lastorderCode;
	}
	public void setLastorderCode(int lastorderCode) {
		this.lastorderCode = lastorderCode;
	}
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
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
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	
	
}
