package com.moxi.tag;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.moxi.model.Content;
import com.moxi.service.content.web.IWebContentService;
import com.moxi.util.TmStringUtils;

/**
 * 内容tag
 * 类名: ContentBeanTag
 * 创建人:lifan 
 * 时间：2017年9月1日 下午5:27:15 
 * @version 1.0.0
 *
 */
public class ContentBeanTag extends BodyTagSupport {
	
	private static final long serialVersionUID = 1L;
	private String var;// 变量的对象名称
	private Integer cid;//内容id

	public int doStartTag() throws JspException {
		ServletContext context = this.pageContext.getServletContext();
		WebApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
		IWebContentService contentService = (IWebContentService) ctx.getBean("webContentServiceImpl");
		Content content = contentService.getTagContent(cid);
//		HashMap<String, Object> conHashMap = contentService.getWebContentsDetail(cid);
		if (TmStringUtils.isEmpty(var)){
			var = "content";
			pageContext.setAttribute(var, content);
		}
		
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	public void setVar(String var) {
		this.var = var;
	}
	
	public void setCid(Integer cid) {
		this.cid = cid;
	}
}
