package wassup.menu.model.vo;

import java.util.ArrayList;

public class MenuPage {
	
	private ArrayList<Menu> pageList;
	private String pageNavi;
	
	public MenuPage() {}

	public ArrayList<Menu> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Menu> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
