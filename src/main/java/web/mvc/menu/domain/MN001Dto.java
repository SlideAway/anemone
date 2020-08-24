package web.mvc.menu.domain;

import web.module.auth.AuthUtils;
import web.module.auth.domain.MemberVO;

public class MN001Dto {
	private String	menuCode;
	private String	parentCode;
	private String 	menuId;
	private String	menuNm;
	private int		sortSeq;
	private String 	menuType;
	private String	menuIcon;
	private String 	menuUrl;
	private String	menuPermit;

	private MemberVO userInfo = AuthUtils.getUserInfo();

	public MemberVO getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(MemberVO userInfo) {
		this.userInfo = userInfo;
	}

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

	public String getMenuIcon() {
		return menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getMenuPermit() {
		return menuPermit;
	}

	public void setMenuPermit(String menuPermit) {
		this.menuPermit = menuPermit;
	}

	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public String getMenuNm() {
		return menuNm;
	}

	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}
}
