package wassup.buyer.model.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Order {
	private int orderCode;
	private String bId;
	private String receiptCode;
	private int menuCode;
	private String menuName;
	private int price;
	private int amount;
	private String orderStatus;
	private String paymentWays;
	private String sCode;
	private String truckName;
	private String bRequest;
	private Timestamp orderDate;
	private String bNick;
	
	
	
	public Order() {}
	
	
	public String getbNick() {
		return bNick;
	}


	public void setbNick(String bNick) {
		this.bNick = bNick;
	}


	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}


	public int getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getReceiptCode() {
		return receiptCode;
	}
	public void setReceiptCode(String receiptCode) {
		this.receiptCode = receiptCode;
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
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPaymentWays() {
		return paymentWays;
	}
	public void setPaymentWays(String paymentWays) {
		this.paymentWays = paymentWays;
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
	public String getbRequest() {
		return bRequest;
	}
	public void setbRequest(String bRequest) {
		this.bRequest = bRequest;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}


	@Override
	public String toString() {
		return "Order [orderCode=" + orderCode + ", bId=" + bId + ", receiptCode=" + receiptCode + ", menuCode="
				+ menuCode + ", menuName=" + menuName + ", price=" + price + ", amount=" + amount + ", orderStatus="
				+ orderStatus + ", paymentWays=" + paymentWays + ", sCode=" + sCode + ", truckName=" + truckName
				+ ", bRequest=" + bRequest + ", orderDate=" + orderDate + "]";
	}

	
	
}
