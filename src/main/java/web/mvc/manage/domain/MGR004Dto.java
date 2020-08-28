package web.mvc.manage.domain;

import web.module.auth.AuthUtils;
import web.module.auth.domain.MemberVO;

public class MGR004Dto {
	private String	menuCode;
	private String	parentCode;
	private int		sortSeq;
	private String	menuType;
	private String	menuNm;
	private String	menuIcon;
	private String	menuURL;
	private String	menuPermit;

	public String getMenuCode() {
		return menuCode;
	}

	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}

	public String getParentCode() {
		return parentCode;
	}

	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

	public int getSortSeq() {
		return sortSeq;
	}

	public void setSortSeq(int sortSeq) {
		this.sortSeq = sortSeq;
	}

	public String getMenuType() {
		return menuType;
	}

	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}

	public String getMenuNm() {
		return menuNm;
	}

	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}

	public String getMenuIcon() {
		return menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}

	public String getMenuURL() {
		return menuURL;
	}

	public void setMenuURL(String menuURL) {
		this.menuURL = menuURL;
	}

	public String getMenuPermit() {
		return menuPermit;
	}

	public void setMenuPermit(String menuPermit) {
		this.menuPermit = menuPermit;
	}
}
