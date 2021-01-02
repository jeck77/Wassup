package wassup.lastorder.model.vo;

import java.util.ArrayList;

public class LastorderViewPage {

	private ArrayList<Lastorder> pageViewList;
	private String lastViewPageNavi;
	
	public LastorderViewPage() {}

	public ArrayList<Lastorder> getPageViewList() {
		return pageViewList;
	}

	public void setPageViewList(ArrayList<Lastorder> pageViewList) {
		this.pageViewList = pageViewList;
	}

	public String getLastViewPageNavi() {
		return lastViewPageNavi;
	}

	public void setLastViewPageNavi(String lastViewPageNavi) {
		this.lastViewPageNavi = lastViewPageNavi;
	}
}
