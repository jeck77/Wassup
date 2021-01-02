package wassup.lastorder.model.vo;

import java.util.ArrayList;


public class LastorderPage {
	
	private ArrayList<Lastorder> pageList;
	private String lastPageNavi;
	
	public LastorderPage() {}

	public ArrayList<Lastorder> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Lastorder> pageList) {
		this.pageList = pageList;
	}

	public String getLastPageNavi() {
		return lastPageNavi;
	}

	public void setLastPageNavi(String lastPageNavi) {
		this.lastPageNavi = lastPageNavi;
	}
}
