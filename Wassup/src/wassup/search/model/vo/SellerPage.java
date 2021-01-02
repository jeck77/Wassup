package wassup.search.model.vo;

import java.util.ArrayList;

public class SellerPage {
	private ArrayList<Seller> pageList;
	private String pageNavi;
	
	public SellerPage() {}

	public ArrayList<Seller> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Seller> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
}
