package web.module.tld.web;

import org.apache.commons.beanutils.converters.StringArrayConverter;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import web.module.tld.domain.comboDto;
import web.module.tld.service.comboService;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class comboController extends SimpleTagSupport {
	@Autowired
	private comboService service;

	private String name;
	private String code;
	private String id;
	private String value;
	private String attr;
	private String dfText;
	private String dfValue;
	private String clas;
	private boolean disabled;


	@Override
	public void doTag() throws JspException, IOException {
		List<comboDto> dtos = new ArrayList<comboDto>();

		if(dfText != null || dfValue != null) {
			comboDto defaultDto = new comboDto();
			defaultDto.setValue(dfValue == null ? "" : dfValue);
			defaultDto.setName(dfText == null ? "" : dfText);
			dtos.add(0, defaultDto);
		}

		String paramCode = code.split(":")[1];
		if(code.indexOf("basecode") > -1) {
			dtos = service.getComboList(paramCode);
		} else {
			dtos = service.getRoleList(paramCode);
		}

		StringBuilder html = new StringBuilder();

		if(StringUtils.isNotBlank(clas)) html.append("class='").append(clas).append("' ");
		if(StringUtils.isNotBlank(id)) html.append("id='").append(id).append("' ");
		if(StringUtils.isNotBlank(name)) html.append("name='").append(name).append("' ");
		if(StringUtils.isNotBlank(attr)) html.append(attr);
		if(disabled) {
			html.append(" disabled=\"disabled\" >\n");
		} else {
			html.append(">\n");
		}

		for(comboDto dto : dtos) {
			html.append("<option value='").append(dto.getValue()).append("' ");
			if(dto.getValue().equals(value)) html.append("selected ");
			html.append(">").append(dto.getName());
			html.append("</option>\n");
		}

		html.append("</select>\n");

		getJspContext().getOut().write(html.toString());
	}

	public comboService getService() {
		return service;
	}

	public void setService(comboService service) {
		this.service = service;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getAttr() {
		return attr;
	}

	public void setAttr(String attr) {
		this.attr = attr;
	}

	public String getDfText() {
		return dfText;
	}

	public void setDfText(String dfText) {
		this.dfText = dfText;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public boolean isDisabled() {
		return disabled;
	}

	public void setDisabled(boolean disabled) {
		this.disabled = disabled;
	}

	public String getDfValue() {
		return dfValue;
	}

	public void setDfValue(String dfValue) {
		this.dfValue = dfValue;
	}
}
