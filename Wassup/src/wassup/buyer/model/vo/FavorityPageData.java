package wassup.buyer.model.vo;

import java.util.ArrayList;

public class FavorityPageData {
	
	private ArrayList<FavorityTruck> pageList;
	private String pageNavi;
	
	public FavorityPageData() {}

	public ArrayList<FavorityTruck> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<FavorityTruck> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
