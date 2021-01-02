package wassup.notice.model.vo;

import java.util.ArrayList;

public class NoticePage {

	private ArrayList<Notice> pageList;
	private String pageNavi;
	
	public NoticePage() {}

	public ArrayList<Notice> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Notice> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}
